#!/usr/bin/env python3
"""Turn raw photographs into verified grayscale stimulus crops.

Owner: WP6.  Refs: docs/05_verification_plan.md s2.3 (real-image provenance),
docs/06_implementation_flow.md s4 (SAIF needs realistic switching activity),
docs/09_bonus_and_stretch.md s3 (Sobel visual demo).

    python model/prepare_assets.py            # build every crop
    python model/prepare_assets.py --list     # show sources without writing
    python model/prepare_assets.py --check    # verify the tree reproduces

WHY REAL IMAGES AT ALL
    The synthetic suite (checkerboard, ramps, impulse) is built to hit
    arithmetic corners, and its toggle statistics are nothing like a
    photograph: a checkerboard flips every bit of every pixel every cycle, a
    ramp flips almost none. Power is a function of switching activity, so a
    SAIF captured on synthetic data produces a dynamic-power figure -- and
    therefore a FoM -- that does not describe the design in use.

GRAYSCALE CONVERSION
    Colour sources are reduced with the ITU-R BT.601 luma weights:

        Y = 0.299 R + 0.587 G + 0.114 B

    computed in INTEGER arithmetic as (299*R + 587*G + 114*B + 500) // 1000,
    which is exactly round-half-up on the rational result. No floating point
    touches a pixel value at any point in this file, so the crops are
    bit-reproducible on any machine.

NO RESIZING -- AND WHY THIS DEPARTS FROM docs/05 s2.3
    docs/05 s2.3 specifies "resize to WxW with a box filter". That procedure is
    NOT used for stimulus here, because resizing is a low-pass filter: it
    averages neighbouring pixels, suppresses exactly the high-frequency detail
    that makes adjacent pixels differ, and so systematically UNDERSTATES toggle
    activity. A SAIF captured on a downscaled image yields an optimistic
    dynamic-power number and an inflated FoM -- the competition's headline
    metric -- which is precisely the kind of flattering measurement error this
    project has been at pains to avoid. Crops are therefore taken at NATIVE
    RESOLUTION: a WxW window of original pixels, never a resampled whole scene.
    Resizing is permitted only for the `*_display.png` full-scene figures,
    which are presentation artefacts and never stimulus. Logged as assumption
    A11.

CROP SELECTION
    Two crops per (source, size): the centre window, and the "detail" window --
    the position maximising Sobel gradient energy, found exactly via an
    integral image rather than sampled. The detail crop is the interesting one
    for power, since it carries the most edge content and therefore the most
    switching.

DETERMINISM
    Sources are iterated in sorted order, argmax ties resolve to the first
    (lowest-index) window, every arithmetic step is integer, and nothing is
    downloaded at generation time. `--check` regenerates into a scratch tree
    and compares byte for byte.
"""

from __future__ import annotations

import argparse
import json
import shutil
import sys
import tempfile
from pathlib import Path
from typing import Iterator, Sequence

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))

from golden_conv import save_values_txt  # noqa: E402  (the frozen stimulus writer)
from pkg_params import PARAMS  # noqa: E402

ASSETS = Path(__file__).resolve().parent.joinpath("vectors", "assets")
RAW = ASSETS.joinpath("raw")
CROPS = ASSETS.joinpath("crops")

#: Stimulus sizes. The first is the design default straight from the package;
#: the second is twice that, to exercise a deeper line buffer (W-N SRL depth)
#: without inventing an unrelated constant.
CROP_SIZES: tuple[int, ...] = (PARAMS.W_DEFAULT, 2 * PARAMS.W_DEFAULT)

#: A crop whose pixels span less than this much of the 0..PIX_MAX range is
#: rejected: it is a flat patch of sky or paper, it would barely toggle, and it
#: would make both the power figure and the edge-detection demo meaningless.
MIN_SPAN = 100

#: Minimum MEAN Sobel magnitude per pixel. Chosen so a smooth gradient region
#: fails while genuine texture passes; the measured value is printed on every
#: rejection so the threshold can be argued with rather than guessed at.
MIN_MEAN_GRADIENT = 8

#: Photographs shipped inside scikit-image. Used only when raw/ is empty. These
#: are genuine photographs, not synthesised textures, and they are present in
#: the installed package -- nothing is fetched from the network.
FALLBACK_SOURCES = ("brick", "camera", "coins", "moon", "page")

#: Licence provenance, transcribed from the scikit-image docstrings rather than
#: assumed. Where upstream states nothing, this says so: these lines end up in
#: a published report and an invented licence would be worse than a blank one.
FALLBACK_PROVENANCE = {
    "camera": ("scikit-image `data.camera()` -- photographer Lav Varshney",
               "CC0 (public domain dedication). No copyright restrictions."),
    "coins": ("scikit-image `data.coins()` -- Brooklyn Museum archives, "
              "https://www.brooklynmuseum.org/opencollection/archives/image/51611",
              "No known copyright restrictions."),
    "brick": ("scikit-image `data.brick()` -- CC0Textures (Bricks25), "
              "https://cc0textures.com/view.php?tex=Bricks25",
              "Creative Commons CC0 License."),
    "moon": ("scikit-image `data.moon()` -- surface of the moon",
             "No explicit licence statement in the upstream docstring. "
             "VERIFY BEFORE PUBLICATION, or prefer a CC0 source above."),
    "page": ("scikit-image `data.page()` -- scanned printed text",
             "No explicit licence statement in the upstream docstring. "
             "VERIFY BEFORE PUBLICATION, or prefer a CC0 source above."),
}

RAW_SUFFIXES = (".png", ".jpg", ".jpeg", ".bmp", ".tif", ".tiff")

#: Exactly what happened, in words, for the manifest and PROVENANCE.md.
SOURCE_NOTES = {
    "raw_only":
        "Sources are the user-supplied files in model/vectors/assets/raw/.",
    "fallback_only":
        "model/vectors/assets/raw/ was empty, so sources are the genuine "
        "photographs bundled with scikit-image. Nothing was synthesised.",
    "raw_plus_fallback":
        "Sources are the user-supplied files in model/vectors/assets/raw/ "
        "PLUS the genuine photographs bundled with scikit-image, requested "
        "with --include-fallback. Nothing was synthesised. The bundled images "
        "carry explicit licences (see the table above) and are the safe choice "
        "for published figures.",
}


# ---------------------------------------------------------------------------
# Integer image primitives
# ---------------------------------------------------------------------------

def luma_bt601(rgb: np.ndarray) -> np.ndarray:
    """Reduce an HxWx3 uint8 array to HxW uint8 luma, integer round-half-up.

    Y = (299*R + 587*G + 114*B + 500) // 1000, which is the BT.601 weighting
    evaluated exactly on integers. Accumulate in int32 so 255*999 cannot wrap.
    """
    rgb = rgb.astype(np.int32, copy=False)
    y = (299 * rgb[..., 0] + 587 * rgb[..., 1] + 114 * rgb[..., 2] + 500) // 1000
    return np.clip(y, 0, PARAMS.PIX_MAX).astype(np.uint8)


def to_gray_uint8(arr: np.ndarray) -> np.ndarray:
    """Normalise any supported source array to a 2-D uint8 grayscale image."""
    a = np.asarray(arr)
    if a.ndim == 3:
        if a.shape[2] == 4:            # RGBA: drop alpha, it is not luminance
            a = a[..., :3]
        if a.shape[2] == 3:
            return luma_bt601(a)
        if a.shape[2] == 1:
            a = a[..., 0]
        else:
            raise ValueError(f"unsupported channel count {a.shape[2]}")
    if a.ndim != 2:
        raise ValueError(f"unsupported image shape {a.shape}")
    if a.dtype == np.uint8:
        return a
    # Any other dtype is rescaled to 0..PIX_MAX on its own observed range,
    # integer-only. Sources are expected to be uint8 already; this is a guard.
    lo, hi = int(a.min()), int(a.max())
    if hi == lo:
        return np.zeros(a.shape, dtype=np.uint8)
    scaled = ((a.astype(np.int64) - lo) * PARAMS.PIX_MAX + (hi - lo) // 2) // (hi - lo)
    return scaled.astype(np.uint8)


def sobel_magnitude(img: np.ndarray) -> np.ndarray:
    """|Gx| + |Gy| per pixel, integer, borders zero.

    The same 3x3 Sobel kernels the accelerator runs, so "gradient energy" here
    means the same thing it will mean in the hardware output.
    """
    a = img.astype(np.int32, copy=False)
    gx = np.zeros(a.shape, dtype=np.int32)
    gy = np.zeros(a.shape, dtype=np.int32)
    c = a[1:-1, 1:-1]
    del c
    gx[1:-1, 1:-1] = (
        a[:-2, :-2] + 2 * a[1:-1, :-2] + a[2:, :-2]
        - a[:-2, 2:] - 2 * a[1:-1, 2:] - a[2:, 2:]
    )
    gy[1:-1, 1:-1] = (
        a[:-2, :-2] + 2 * a[:-2, 1:-1] + a[:-2, 2:]
        - a[2:, :-2] - 2 * a[2:, 1:-1] - a[2:, 2:]
    )
    return np.abs(gx) + np.abs(gy)


def window_energy_map(energy: np.ndarray, size: int) -> np.ndarray:
    """Total gradient energy of every size x size window, via an integral image.

    Exact and O(1) per window, so the best window is *found*, not sampled.
    """
    integ = np.zeros((energy.shape[0] + 1, energy.shape[1] + 1), dtype=np.int64)
    integ[1:, 1:] = np.cumsum(np.cumsum(energy.astype(np.int64), axis=0), axis=1)
    h = energy.shape[0] - size + 1
    w = energy.shape[1] - size + 1
    if h <= 0 or w <= 0:
        return np.zeros((0, 0), dtype=np.int64)
    return (integ[size:size + h, size:size + w]
            - integ[0:h, size:size + w]
            - integ[size:size + h, 0:w]
            + integ[0:h, 0:w])


def toggle_density_milli(flat: Sequence[int]) -> int:
    """Mean per-bit Hamming distance between consecutive pixels, x1000.

    This is the statistic that predicts switching activity on `px_data`: how
    many of the PIX_W input bits flip, on average, from one pixel to the next
    in raster order. Returned scaled by 1000 as an integer so the ranking and
    the manifest stay exactly reproducible.
    """
    a = np.asarray(flat, dtype=np.uint8)
    if a.size < 2:
        return 0
    xor = np.bitwise_xor(a[:-1], a[1:])
    bits = int(np.unpackbits(xor).sum())
    return (bits * 1000) // (xor.size * PARAMS.PIX_W)


# ---------------------------------------------------------------------------
# Sources
# ---------------------------------------------------------------------------

def iter_raw_sources() -> Iterator[tuple[str, np.ndarray, tuple[str, str]]]:
    """Yield (name, gray image, (origin, licence)) for every file in raw/."""
    if not RAW.is_dir():
        return
    from PIL import Image
    for path in sorted(RAW.iterdir()):
        if path.suffix.lower() not in RAW_SUFFIXES:
            continue
        with Image.open(path) as im:
            arr = np.array(im)
        yield (path.stem, to_gray_uint8(arr),
               (f"user-supplied file `raw/{path.name}`",
                "UNKNOWN -- supplied locally. Record the licence here before "
                "publishing any figure derived from it."))


def iter_fallback_sources() -> Iterator[tuple[str, np.ndarray, tuple[str, str]]]:
    """Yield the genuine photographs bundled with scikit-image."""
    try:
        from skimage import data
    except ImportError as exc:                                  # pragma: no cover
        raise SystemExit(
            "model/prepare_assets.py: model/vectors/assets/raw/ is empty and "
            "scikit-image is not installed, so there is no real photographic "
            "source available.\n"
            "  Either drop images into model/vectors/assets/raw/, or install "
            "the fallback set with `python -m pip install scikit-image`.\n"
            "  This script will NOT synthesise a texture and call it a "
            "photograph (assumption A9).\n"
            f"  underlying error: {exc}"
        ) from exc
    for name in sorted(FALLBACK_SOURCES):
        arr = np.asarray(getattr(data, name)())
        yield name, to_gray_uint8(arr), FALLBACK_PROVENANCE[name]


def collect_sources(include_fallback: bool = False
                    ) -> tuple[list[tuple[str, np.ndarray, tuple[str, str]]], str]:
    """Return (sources, mode). raw/ wins whenever it holds anything.

    `mode` is "raw_only", "fallback_only" or "raw_plus_fallback" -- three
    distinct facts, not a boolean. A boolean here previously made the manifest
    and PROVENANCE.md claim "raw/ was empty" while raw/ held a user image,
    which is exactly the sort of false provenance statement that must never
    reach a published report.

    `include_fallback` additionally folds in the bundled photographs even when
    raw/ is populated. That is opt-in rather than default because raw/ is the
    user speaking; but a single locally-supplied image of UNKNOWN licence is a
    thin and legally awkward basis for published figures, so the CC0 set is
    kept one flag away.
    """
    raw = list(iter_raw_sources())
    if raw and not include_fallback:
        return raw, "raw_only"
    if raw:
        names = {n for n, _, _ in raw}
        extra = [s for s in iter_fallback_sources() if s[0] not in names]
        return raw + extra, "raw_plus_fallback"
    return list(iter_fallback_sources()), "fallback_only"


# ---------------------------------------------------------------------------
# Crop extraction
# ---------------------------------------------------------------------------

def centre_origin(shape: tuple[int, int], size: int) -> tuple[int, int]:
    return ((shape[0] - size) // 2, (shape[1] - size) // 2)


def detail_origin(energy: np.ndarray, size: int) -> tuple[int, int] | None:
    """Origin of the highest-gradient-energy window, or None if it cannot fit."""
    emap = window_energy_map(energy, size)
    if emap.size == 0:
        return None
    flat = int(np.argmax(emap))            # first maximum: deterministic
    return (flat // emap.shape[1], flat % emap.shape[1])


def evaluate_crop(crop: np.ndarray) -> dict:
    """Statistics + accept/reject verdict for one candidate crop."""
    flat = crop.reshape(-1).tolist()
    lo, hi = int(crop.min()), int(crop.max())
    span = hi - lo
    energy = sobel_magnitude(crop)
    total_energy = int(energy.sum())
    mean_grad = total_energy // crop.size
    reasons = []
    if span < MIN_SPAN:
        reasons.append(f"pixel span {span} < {MIN_SPAN}")
    if mean_grad < MIN_MEAN_GRADIENT:
        reasons.append(f"mean |Sobel| {mean_grad} < {MIN_MEAN_GRADIENT}")
    return {
        "min": lo, "max": hi, "span": span,
        "mean": int(crop.astype(np.int64).sum()) // crop.size,
        "gradient_energy": total_energy,
        "mean_gradient": mean_grad,
        "toggle_density_milli": toggle_density_milli(flat),
        "accepted": not reasons,
        "reject_reasons": reasons,
        "_flat": flat,
    }


# ---------------------------------------------------------------------------
# Generation
# ---------------------------------------------------------------------------

def build(out_root: Path, quiet: bool = False,
          include_fallback: bool = False) -> dict:
    from PIL import Image

    sources, source_mode = collect_sources(include_fallback)
    if not sources:
        raise SystemExit("model/prepare_assets.py: no sources found at all.")

    crops_dir = out_root.joinpath("crops")
    if crops_dir.exists():
        shutil.rmtree(crops_dir)
    crops_dir.mkdir(parents=True)

    entries: list[dict] = []
    rejected: list[dict] = []
    provenance: list[tuple[str, str, str, tuple[int, int]]] = []

    for name, gray, (origin, licence) in sources:
        provenance.append((name, origin, licence, (int(gray.shape[0]), int(gray.shape[1]))))
        energy = sobel_magnitude(gray)

        # Full-scene display image. PRESENTATION ONLY -- never stimulus, which
        # is why it is the one place a resize is allowed.
        disp = Image.fromarray(gray)
        disp.thumbnail((256, 256))
        disp.save(crops_dir.joinpath(f"{name}_display.png"), optimize=False)

        for size in CROP_SIZES:
            if gray.shape[0] < size or gray.shape[1] < size:
                rejected.append({
                    "crop": f"{name}_{size}", "kind": "-",
                    "reasons": [f"source {gray.shape[0]}x{gray.shape[1]} "
                                f"smaller than {size}x{size}"],
                })
                continue

            candidates = {"centre": centre_origin(gray.shape, size)}
            det = detail_origin(energy, size)
            if det is not None:
                candidates["detail"] = det

            for kind, (r0, c0) in sorted(candidates.items()):
                crop = gray[r0:r0 + size, c0:c0 + size]
                stats = evaluate_crop(crop)
                crop_name = f"{name}_{kind}{size}"
                if not stats["accepted"]:
                    rejected.append({"crop": crop_name, "kind": kind,
                                     "reasons": stats["reject_reasons"]})
                    continue

                flat = stats.pop("_flat")
                Image.fromarray(crop).save(crops_dir.joinpath(f"{crop_name}.png"))
                # Written with the golden model's own writer, so the stimulus
                # file format is by construction the one the testbench reads.
                save_values_txt(crops_dir.joinpath(f"{crop_name}.txt"), flat)

                entry = {
                    "name": crop_name,
                    "source": name,
                    "source_resolution": [int(gray.shape[0]), int(gray.shape[1])],
                    "crop_kind": kind,
                    "crop_origin": [int(r0), int(c0)],
                    "size": int(size),
                    "resized": False,
                    "stimulus": f"crops/{crop_name}.txt",
                    "png": f"crops/{crop_name}.png",
                }
                entry.update({k: v for k, v in stats.items()
                              if k not in ("accepted", "reject_reasons")})
                entries.append(entry)

    entries.sort(key=lambda e: e["name"])
    manifest = {
        "generator": "model/prepare_assets.py",
        "source_mode": source_mode,
        "used_fallback_sources": source_mode != "raw_only",
        "source_note": SOURCE_NOTES[source_mode],
        "grayscale": "ITU-R BT.601 luma, integer round-half-up",
        "resized_for_stimulus": False,
        "crop_sizes": list(CROP_SIZES),
        "min_span": MIN_SPAN,
        "min_mean_gradient": MIN_MEAN_GRADIENT,
        "pix_max": PARAMS.PIX_MAX,
        "accepted": entries,
        "rejected": sorted(rejected, key=lambda r: r["crop"]),
        "total_accepted": len(entries),
        "total_rejected": len(rejected),
    }
    out_root.joinpath("manifest.json").write_text(
        json.dumps(manifest, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    write_provenance(out_root, provenance, source_mode)

    if not quiet:
        report(manifest)
    return manifest


def write_provenance(out_root: Path,
                     provenance: list[tuple[str, str, str, tuple[int, int]]],
                     source_mode: str) -> None:
    lines = [
        "# Source image provenance",
        "",
        "Written by `model/prepare_assets.py`. Every figure in the report that",
        "shows a photograph derives from one of these sources.",
        "",
        "**Licence statements are transcribed from upstream, not assumed.**",
        "Where upstream states nothing, this table says so rather than guessing;",
        "prefer a CC0 source for anything that will be published.",
        "",
        "| Source | Native resolution | Origin | Licence |",
        "|---|---|---|---|",
    ]
    for name, origin, licence, shape in sorted(provenance):
        lines.append(f"| `{name}` | {shape[0]}x{shape[1]} | {origin} | {licence} |")
    lines += [
        "",
        "## How these are used",
        "",
        "* Stimulus crops are **native-resolution windows** of these images -- no",
        "  resizing, no resampling (see the module docstring of",
        "  `model/prepare_assets.py` and assumption A11 for why).",
        "* `*_display.png` are downscaled full scenes for figures only. They are",
        "  never used as stimulus and never feed a power measurement.",
    ]
    lines += ["", "## Source selection", "", SOURCE_NOTES[source_mode]]
    out_root.joinpath("PROVENANCE.md").write_text("\n".join(lines) + "\n",
                                                  encoding="utf-8")


def report(manifest: dict) -> None:
    entries = manifest["accepted"]
    print(f"\nsources: {manifest['source_note']}")
    print(f"grayscale: {manifest['grayscale']}")
    print(f"stimulus crops are native-resolution windows (never resized)\n")

    if manifest["rejected"]:
        print(f"REJECTED {len(manifest['rejected'])} candidate crop(s):")
        for r in manifest["rejected"]:
            print(f"  {r['crop']:<24} {'; '.join(r['reasons'])}")
        print()

    print(f"ACCEPTED {len(entries)} crop(s), ranked by toggle density "
          f"(the SAIF stimulus should be the top one of its size):\n")
    hdr = (f"{'CROP':<24} {'SIZE':>5} {'ORIGIN':>11} {'SPAN':>5} {'MEAN':>5} "
           f"{'|GRAD|/px':>9} {'TOGGLE/bit':>11}")
    print(hdr)
    print("-" * len(hdr))
    for e in sorted(entries, key=lambda x: (-x["toggle_density_milli"], x["name"])):
        origin = f"({e['crop_origin'][0]},{e['crop_origin'][1]})"
        tog = e["toggle_density_milli"]
        print(f"{e['name']:<24} {e['size']:>5} {origin:>11} {e['span']:>5} "
              f"{e['mean']:>5} {e['mean_gradient']:>9} "
              f"{tog // 1000}.{tog % 1000:03d}".rstrip())


def check(out_root: Path, include_fallback: bool = False) -> int:
    """Regenerate into a scratch tree and diff byte for byte."""
    with tempfile.TemporaryDirectory(prefix="assets_") as tmp:
        scratch = Path(tmp).joinpath("assets")
        scratch.mkdir(parents=True)
        build(scratch, quiet=True, include_fallback=include_fallback)
        problems: list[str] = []
        want = sorted(p.relative_to(scratch).as_posix()
                      for p in scratch.rglob("*") if p.is_file())
        have = sorted(p.relative_to(out_root).as_posix()
                      for p in out_root.rglob("*") if p.is_file()
                      and not p.relative_to(out_root).as_posix().startswith("raw/"))
        for miss in sorted(set(want) - set(have)):
            problems.append(f"missing from committed tree: {miss}")
        for extra in sorted(set(have) - set(want)):
            problems.append(f"present but not regenerated: {extra}")
        for rel in sorted(set(want) & set(have)):
            if scratch.joinpath(rel).read_bytes() != out_root.joinpath(rel).read_bytes():
                problems.append(f"differs on regeneration: {rel}")
    if problems:
        print("ASSET DETERMINISM CHECK FAILED")
        for p in problems:
            print(f"  {p}")
        return 1
    print(f"ASSET DETERMINISM CHECK PASSED: {out_root} regenerates byte for byte")
    return 0


def main(argv: Sequence[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--list", action="store_true", help="show sources, write nothing")
    ap.add_argument("--check", action="store_true", help="verify byte-for-byte reproduction")
    ap.add_argument("--out", default=str(ASSETS), help="output directory")
    ap.add_argument("--include-fallback", action="store_true",
                    help="also use the bundled CC0 photographs even when raw/ is "
                         "populated (licence-safe sources for published figures)")
    args = ap.parse_args(argv)

    out_root = Path(args.out)

    if args.list:
        sources, mode = collect_sources(args.include_fallback)
        print(f"{'SOURCE':<12} {'RESOLUTION':>12}  ORIGIN")
        for name, gray, (origin, _lic) in sorted(sources):
            print(f"{name:<12} {gray.shape[0]:>5}x{gray.shape[1]:<6}  {origin}")
        print(f"\n{len(sources)} source(s); "
              f"{'scikit-image fallback (raw/ empty)' if fallback else 'from raw/'}")
        return 0

    if args.check:
        return check(out_root, args.include_fallback)

    out_root.mkdir(parents=True, exist_ok=True)
    RAW.mkdir(parents=True, exist_ok=True)
    build(out_root, include_fallback=args.include_fallback)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
