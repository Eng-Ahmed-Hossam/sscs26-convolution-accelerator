#!/usr/bin/env python3
"""Generate regression vectors from the real-image crops (WP6).

Owner: WP6.  Refs: docs/05_verification_plan.md s2 (vector format and list),
docs/06_implementation_flow.md s4 (SAIF stimulus), docs/09_bonus_and_stretch.md
s2-s3 (ML and Sobel demos).

    python model/prepare_assets.py --include-fallback   # must run first
    python model/gen_real_vectors.py
    python model/gen_real_vectors.py --check            # byte-for-byte rerun
    python model/gen_real_vectors.py --stats            # diagnostics table

WHAT THIS ADDS, AND WHAT IT DOES NOT REPLACE
    The synthetic suite stays exactly as it is. Its job is to hit arithmetic
    corners -- both saturation rails, half-LSB rounding ties, impulse
    orientation -- and a photograph will not reliably do any of that. These
    vectors answer the complementary question: does the design stay bit-exact
    on data with realistic spatial statistics, and what does it actually
    toggle. Both families run in the same regression.

KERNELS PER CROP
    `<crop>_edge`  banks 0/1/2 = Sobel Gx, Sobel Gy, identity, shift 0.
                   Sobel is the demo kernel (docs/09 s3); identity rides along
                   because on a real image it is the sharpest possible
                   end-to-end check -- the output must equal the input interior
                   exactly, so any window-addressing or pipeline-alignment
                   error shows up as a visibly wrong picture, not a subtle
                   numeric drift.
    `<crop>_blur`  bank 0 = 3x3 Gaussian [1 2 1; 2 4 2; 1 2 1], shift 4.
                   Kernel sum is 16 = 2^4, so shift 4 makes this a true
                   normalised blur and exercises a NON-ZERO shift on real data
                   -- the rounding path the synthetic suite only reaches with
                   random coefficients.
    `<crop>_cnn`   the INT8 first-layer kernels from model/quantize_kernels.py
                   at shift 7 (Q1.7), when that artefact exists. It does not
                   yet, so the family is skipped with a notice rather than
                   faked (docs/09 s2 step 2).

    Every vector runs at relu_en 0 and 1, as docs/05 s2 requires of all vectors.

A SEPARATE MANIFEST, ON PURPOSE
    These register in `manifest_real.json`, not in the synthetic
    `manifest.json`. Each generator then owns its own tree and its own
    byte-for-byte `--check`; folding real vectors into the synthetic manifest
    would make `gen_vectors.py --check` report every real vector as an
    unexpected file. `tb/run_regression.py` reads both and runs the union.
"""

from __future__ import annotations

import argparse
import json
import shutil
import sys
import tempfile
from pathlib import Path
from typing import Sequence

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gen_vectors import IDENTITY, SOBEL_GX, SOBEL_GY, VECTORS_DIR, _json_dump, _stats_dict
from golden_conv import ConvSpec, convolve_traced, save_values_txt, validate_kernel
from pkg_params import PARAMS

ASSETS = VECTORS_DIR.joinpath("assets")
ASSET_MANIFEST = ASSETS.joinpath("manifest.json")
REAL_MANIFEST = VECTORS_DIR.joinpath("manifest_real.json")

#: 3x3 Gaussian. Sum = 16 = 2^SHIFT_BLUR, so the shift below normalises it
#: exactly and the result is a true blur rather than a scaled one.
GAUSSIAN = [1, 2, 1,
            2, 4, 2,
            1, 2, 1]
SHIFT_BLUR = 4
SHIFT_EDGE = 0
SHIFT_CNN = 7          # Q1.7 INT8 convention, docs/03 s4 and docs/09 s2

#: Where model/quantize_kernels.py is expected to leave its INT8 fixture.
CNN_KERNEL_DIR = Path(__file__).resolve().parent.joinpath("quantized")


def _load_asset_manifest() -> dict:
    if not ASSET_MANIFEST.is_file():
        raise SystemExit(
            f"gen_real_vectors: {ASSET_MANIFEST} not found.\n"
            "  Run `python model/prepare_assets.py --include-fallback` first --\n"
            "  the crops it verifies are the only accepted source of real stimulus\n"
            "  (assumption A9: never substitute synthetic data for a photograph)."
        )
    return json.loads(ASSET_MANIFEST.read_text(encoding="utf-8"))


def _load_cnn_banks() -> list[list[int]] | None:
    """INT8 first-layer kernels, if WP6 has produced them. Never invented."""
    if not CNN_KERNEL_DIR.is_dir():
        return None
    banks: list[list[int]] = []
    for i in range(PARAMS.NUM_BANKS):
        path = CNN_KERNEL_DIR.joinpath(f"kernel_b{i}.txt")
        if not path.is_file():
            break
        coef = [int(t) for t in path.read_text(encoding="utf-8").split()]
        banks.append(coef)
    return banks or None


def _families(cnn_banks: list[list[int]] | None) -> list[tuple[str, list[list[int]], int]]:
    fams = [
        ("edge", [list(SOBEL_GX), list(SOBEL_GY), list(IDENTITY)], SHIFT_EDGE),
        ("blur", [list(GAUSSIAN)], SHIFT_BLUR),
    ]
    if cnn_banks:
        fams.append(("cnn", [list(b) for b in cnn_banks], SHIFT_CNN))
    return fams


def build(root: Path, quiet: bool = False) -> dict:
    assets = _load_asset_manifest()
    crops = assets["accepted"]
    if not crops:
        raise SystemExit("gen_real_vectors: no accepted crops in the asset manifest.")

    cnn_banks = _load_cnn_banks()
    families = _families(cnn_banks)

    entries: list[dict] = []
    for crop in sorted(crops, key=lambda c: c["name"]):
        size = int(crop["size"])
        spec = ConvSpec.from_package(W=size)
        flat = [int(t) for t in
                ASSETS.joinpath(f"crops/{crop['name']}.txt").read_text(
                    encoding="utf-8").split()]
        if len(flat) != size * size:
            raise SystemExit(
                f"gen_real_vectors: crop {crop['name']} has {len(flat)} pixels, "
                f"expected {size*size}")
        image = [flat[r * size:(r + 1) * size] for r in range(size)]

        for fam, banks, shift in families:
            name = f"real_{crop['name']}_{fam}"
            vdir = root.joinpath(name)
            if vdir.exists():
                shutil.rmtree(vdir)
            vdir.mkdir(parents=True)

            save_values_txt(vdir.joinpath("image.txt"), flat)

            per_bank: dict[str, dict] = {}
            for k, coef in enumerate(banks):
                validate_kernel(coef, spec)
                save_values_txt(vdir.joinpath(f"kernel_b{k}.txt"), coef)
                for relu_en in (0, 1):
                    out, stats = convolve_traced(image, coef, shift, relu_en, spec)
                    save_values_txt(
                        vdir.joinpath(f"expected_b{k}_relu{relu_en}.txt"), out)
                    per_bank[f"b{k}_relu{relu_en}"] = _stats_dict(stats)

            config = {
                "name": name,
                "why": f"real-image {fam} vector from crop {crop['name']}",
                "N": spec.N,
                "W": size,
                "shift": shift,
                "num_kernels": len(banks),
                "banks": list(range(len(banks))),
                "relu_default": 0,
                "relu_modes": [0, 1],
                "outputs_per_bank": spec.OUT_COUNT,
                "seed": None,
                "random_kernels": False,
                "asset": crop["name"],
                "source_image": crop["source"],
                "source_resolution": crop["source_resolution"],
                "crop_origin": crop["crop_origin"],
                "resized": False,
                "toggle_density_milli": crop["toggle_density_milli"],
                "tags": ["real", fam, f"w{size}"],
            }
            _json_dump(vdir.joinpath("config.json"), config)
            _json_dump(vdir.joinpath("stats.json"), per_bank)

            # Worst case across the banks of this vector, for the report table.
            acc_peak = max(s["acc_peak_abs"] for s in per_bank.values())
            entries.append({
                "name": name,
                "W": size,
                "shift": shift,
                "num_kernels": len(banks),
                "runs": 2,
                "family": fam,
                "asset": crop["name"],
                "source_image": crop["source"],
                "toggle_density_milli": crop["toggle_density_milli"],
                "acc_peak_abs": acc_peak,
                "acc_bound": PARAMS.ACC_MAX_ABS,
                "sat_pos": sum(s["sat_pos"] for s in per_bank.values()),
                "sat_neg": sum(s["sat_neg"] for s in per_bank.values()),
                "relu_clips": sum(s["relu_clips"] for s in per_bank.values()),
                "out_min": min(s["out_min"] for s in per_bank.values()),
                "out_max": max(s["out_max"] for s in per_bank.values()),
                "tags": ["real", fam, f"w{size}"],
            })

    entries.sort(key=lambda e: e["name"])
    manifest = {
        "generator": "model/gen_real_vectors.py",
        "N": PARAMS.N,
        "families": [f[0] for f in families],
        "cnn_family_present": bool(cnn_banks),
        "cnn_note": (
            "INT8 first-layer kernels loaded from model/quantized/."
            if cnn_banks else
            "model/quantized/ absent: model/quantize_kernels.py (WP6) has not "
            "produced the INT8 first-layer fixture yet, so the cnn family is "
            "SKIPPED rather than faked. docs/09 s2 step 2 owns that artefact."
        ),
        "gaussian_kernel": list(GAUSSIAN),
        "shifts": {"edge": SHIFT_EDGE, "blur": SHIFT_BLUR, "cnn": SHIFT_CNN},
        "vectors": entries,
        "total_vectors": len(entries),
        "total_runs": sum(e["runs"] for e in entries),
    }
    _json_dump(root.joinpath("manifest_real.json"), manifest)

    if not quiet:
        report(manifest)
    return manifest


def report(manifest: dict) -> None:
    print(f"\n{manifest['total_vectors']} real-image vectors, "
          f"{manifest['total_runs']} runs "
          f"(families: {', '.join(manifest['families'])})")
    if not manifest["cnn_family_present"]:
        print(f"NOTE: {manifest['cnn_note']}")
    bound = manifest["vectors"][0]["acc_bound"] if manifest["vectors"] else PARAMS.ACC_MAX_ABS
    print(f"\nAccumulator bound {bound} ({PARAMS.ACC_W}-bit signed capacity "
          f"{1 << (PARAMS.ACC_W - 1)})\n")
    hdr = (f"{'VECTOR':<34} {'W':>4} {'SH':>3} {'BK':>3} {'ACC PEAK':>9} "
           f"{'HEADROOM':>9} {'SAT+':>6} {'SAT-':>6} {'RELU':>7} "
           f"{'OUT MIN':>8} {'OUT MAX':>8}")
    print(hdr)
    print("-" * len(hdr))
    for e in manifest["vectors"]:
        head = bound - e["acc_peak_abs"]
        print(f"{e['name']:<34} {e['W']:>4} {e['shift']:>3} {e['num_kernels']:>3} "
              f"{e['acc_peak_abs']:>9} {head:>9} {e['sat_pos']:>6} {e['sat_neg']:>6} "
              f"{e['relu_clips']:>7} {e['out_min']:>8} {e['out_max']:>8}")

    peak = max((e["acc_peak_abs"] for e in manifest["vectors"]), default=0)
    print(f"\nWorst accumulator across the real family: {peak} of {bound} "
          f"({(peak * 100) // bound}% of the analytic bound) -- no overflow possible.")


def check(root: Path) -> int:
    with tempfile.TemporaryDirectory(prefix="realvec_") as tmp:
        scratch = Path(tmp)
        build(scratch, quiet=True)
        problems: list[str] = []
        names = [e["name"] for e in json.loads(
            scratch.joinpath("manifest_real.json").read_text(encoding="utf-8"))["vectors"]]
        rels = ["manifest_real.json"]
        for n in names:
            for f in sorted(scratch.joinpath(n).iterdir()):
                rels.append(f"{n}/{f.name}")
        for rel in rels:
            a, b = scratch.joinpath(rel), root.joinpath(rel)
            if not b.is_file():
                problems.append(f"missing from committed tree: {rel}")
            elif a.read_bytes() != b.read_bytes():
                problems.append(f"differs on regeneration: {rel}")
    if problems:
        print("REAL VECTOR DETERMINISM CHECK FAILED")
        for p in problems[:20]:
            print(f"  {p}")
        return 1
    print(f"REAL VECTOR DETERMINISM CHECK PASSED: {len(rels)} files reproduce exactly")
    return 0


def main(argv: Sequence[str] | None = None) -> int:
    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--check", action="store_true")
    ap.add_argument("--stats", action="store_true", help="print the table only")
    ap.add_argument("--out", default=str(VECTORS_DIR))
    args = ap.parse_args(argv)
    root = Path(args.out)

    if args.stats:
        if not REAL_MANIFEST.is_file():
            print("no manifest_real.json; run without --stats first", file=sys.stderr)
            return 1
        report(json.loads(REAL_MANIFEST.read_text(encoding="utf-8")))
        return 0
    if args.check:
        return check(root)

    build(root)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
