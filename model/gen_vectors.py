#!/usr/bin/env python3
"""Deterministic test-vector generator for the SSCS-EDGE-CONV accelerator.

Generates every vector of ``docs/05_verification_plan.md`` s2 into
``model/vectors/<name>/`` in the exact format the RTL testbench consumes:

    image.txt              W*W lines, one unsigned pixel per line, raster order
    kernel_b<k>.txt        N*N lines, one signed coefficient per line, r*N+c
    config.json            shift, num_kernels, banks, geometry, seed, provenance
    expected_b<k>_relu0.txt   golden outputs, (W-N+1)^2 lines, raster order
    expected_b<k>_relu1.txt   same stimulus with ReLU enabled
    stats.json             per-bank diagnostics (acc peak, saturation counts...)

Everything is integer-only and reproducible: one command regenerates the whole
suite byte for byte. Seeds and coefficient fixtures are frozen in
``docs/05_verification_plan.md`` s2.1-2.2 and must be changed there first.

    python model/gen_vectors.py --all           # regenerate everything
    python model/gen_vectors.py --all --skip-real   # synthetic families only
    python model/gen_vectors.py --vector impulse
    python model/gen_vectors.py --check         # prove byte-for-byte determinism
    python model/gen_vectors.py --stats         # print the baseline table
    python model/gen_vectors.py --list

The real-image family (``real_*``) needs source assets that are not in the
repository. It **fails with an actionable error** rather than substituting a
synthetic stand-in (docs/05 s2.3, assumption A9).
"""

from __future__ import annotations

import argparse
import json
import shutil
import sys
import tempfile
from dataclasses import dataclass, field
from pathlib import Path
from random import Random
from typing import Callable, Sequence

sys.path.insert(0, str(Path(__file__).resolve().parent))

from golden_conv import (  # noqa: E402
    ConvSpec,
    ConvStats,
    convolve_traced,
    save_values_txt,
    validate_kernel,
)
from pkg_params import PARAMS  # noqa: E402

VECTORS_DIR = Path(__file__).resolve().parent.joinpath("vectors")
ASSETS_DIR = VECTORS_DIR.joinpath("assets")

#: Frozen in docs/05_verification_plan.md s2.1. Do not change here alone.
MASTER_SEED = 20260915


# ---------------------------------------------------------------------------
# Seeding -- one independent stream per vector, derived from its name
# ---------------------------------------------------------------------------

def fold31(text: str) -> int:
    """Left-to-right polynomial fold of a name into [0, 2**31).

    Written out explicitly rather than using ``hash()`` (randomized per process)
    or ``hashlib`` (overkill), so the seed of a vector is reproducible by hand
    from the formula printed in docs/05 s2.1.
    """
    h = 0
    for ch in text:
        h = ((h * 31) + ord(ch)) % (1 << 31)
    return h


def seed_for(name: str) -> int:
    """The frozen per-vector seed: MASTER_SEED + fold31(name)."""
    return MASTER_SEED + fold31(name)


# ---------------------------------------------------------------------------
# Frozen coefficient fixtures (docs/05_verification_plan.md s2.2)
# ---------------------------------------------------------------------------

IDENTITY = [0, 0, 0, 0, 1, 0, 0, 0, 0]
RAMP_ASYM = [1, 2, 3, 4, 5, 6, 7, 8, 9]
SOBEL_GX = [1, 0, -1, 2, 0, -2, 1, 0, -1]
SOBEL_GY = [1, 2, 1, 0, 0, 0, -1, -2, -1]
LAPLACIAN = [0, -1, 0, -1, 4, -1, 0, -1, 0]
BOX = [1] * 9
ALL_ONE = [1] * 9
ALL_ZERO = [0] * 9          # kernel value class "zero" (docs/05 s6)
ALL_MAX = [PARAMS.COEF_ABS_MAX - 1] * 9          # +127
ALL_MIN = [-PARAMS.COEF_ABS_MAX] * 9             # -128


# ---------------------------------------------------------------------------
# Image builders -- all integer, all pure functions of (spec, rng)
# ---------------------------------------------------------------------------

def img_impulse(spec: ConvSpec, rng: Random) -> list[list[int]]:
    """Single bright pixel at the centre; output prints the mirrored kernel."""
    image = [[0] * spec.W for _ in range(spec.W)]
    centre = spec.W >> 1
    image[centre - 1][centre - 1] = spec.PIX_MAX      # (15,15) at W=32
    return image


def img_zero(spec: ConvSpec, rng: Random) -> list[list[int]]:
    return [[0] * spec.W for _ in range(spec.W)]


def img_max(spec: ConvSpec, rng: Random) -> list[list[int]]:
    return [[spec.PIX_MAX] * spec.W for _ in range(spec.W)]


def img_checkerboard(spec: ConvSpec, rng: Random) -> list[list[int]]:
    return [[spec.PIX_MAX if (r + c) % 2 == 0 else 0 for c in range(spec.W)]
            for r in range(spec.W)]


def img_ramp_diag(spec: ConvSpec, rng: Random) -> list[list[int]]:
    """pixel = (row + col) mod 256 -- the docs/05 s2 `ramp` image."""
    return [[(r + c) % (spec.PIX_MAX + 1) for c in range(spec.W)]
            for r in range(spec.W)]


def img_ramp_h(spec: ConvSpec, rng: Random) -> list[list[int]]:
    """Horizontal ramp: value varies with column only, so Gy responds 0."""
    return [[(c * 7) % (spec.PIX_MAX + 1) for c in range(spec.W)]
            for r in range(spec.W)]


def img_ramp_v(spec: ConvSpec, rng: Random) -> list[list[int]]:
    """Vertical ramp: value varies with row only, so Gx responds 0."""
    return [[(r * 7) % (spec.PIX_MAX + 1) for c in range(spec.W)]
            for r in range(spec.W)]


def img_random(spec: ConvSpec, rng: Random) -> list[list[int]]:
    return [[rng.randint(0, spec.PIX_MAX) for _ in range(spec.W)]
            for _ in range(spec.W)]


def img_structured(spec: ConvSpec, rng: Random) -> list[list[int]]:
    """Deterministic non-uniform field with edges, for the identity/edge cases."""
    return [[((r * 13) ^ (c * 7)) % (spec.PIX_MAX + 1) for c in range(spec.W)]
            for r in range(spec.W)]


# ---------------------------------------------------------------------------
# Vector definitions
# ---------------------------------------------------------------------------

@dataclass(frozen=True)
class VectorDef:
    """One named vector: an image builder plus the banks and config to run."""

    name: str
    why: str
    image_fn: Callable[[ConvSpec, Random], list[list[int]]]
    banks: list[list[int]] | None = None      # None => random kernels
    shift: int | None = None                  # None => random from {0,4,7}
    num_kernels: int | None = None            # None => random 1..4
    random_kernels: bool = False
    asset: str | None = None                  # real-image family only
    tags: tuple[str, ...] = field(default_factory=tuple)

    @property
    def seed(self) -> int:
        return seed_for(self.name)

    def resolve(self, spec: ConvSpec) -> tuple[list[list[int]], list[list[int]], int]:
        """Return (image, banks, shift) from this vector own seeded stream."""
        rng = Random(self.seed)
        image = self.image_fn(spec, rng)

        if self.random_kernels:
            count = self.num_kernels if self.num_kernels is not None else rng.randint(1, PARAMS.NUM_BANKS)
            banks = [[rng.randint(spec.COEF_MIN, spec.COEF_MAX) for _ in range(spec.TAPS)]
                     for _ in range(count)]
            shift = self.shift if self.shift is not None else rng.choice((0, 4, 7))
        else:
            banks = [list(b) for b in (self.banks or [])]
            shift = 0 if self.shift is None else self.shift

        if not banks:
            raise ValueError(f"vector {self.name}: no kernel banks defined")
        if len(banks) > PARAMS.NUM_BANKS:
            raise ValueError(
                f"vector {self.name}: {len(banks)} banks exceeds NUM_BANKS = {PARAMS.NUM_BANKS}"
            )
        for b in banks:
            validate_kernel(b, spec)
        return image, banks, shift


#: The suite. Order is the order of docs/05_verification_plan.md s2, with the
#: extra directed cases the build prompt asks for (explicit identity vector,
#: separate horizontal/vertical ramps, a second edge kernel) appended to the
#: directed group rather than renumbering the frozen table.
VECTOR_DEFS: list[VectorDef] = [
    VectorDef(
        "impulse", "window alignment/orientation: output reproduces the kernel "
        "mirrored at known coordinates -- catches r/c swaps and index reversals",
        img_impulse, banks=[IDENTITY, RAMP_ASYM], shift=0, tags=("directed", "orientation"),
    ),
    VectorDef(
        "all_zero", "quiescent baseline; every output exactly 0 with the most "
        "negative kernel (bank 0) and with the all-zero kernel (bank 1), which "
        "is the zero kernel value class required by docs/05 s6 coverage",
        img_zero, banks=[ALL_MIN, ALL_ZERO], shift=0,
        tags=("directed", "quiescent", "kernel_zero"),
    ),
    VectorDef(
        "all_255", "DC gain = 9*255 = 2295 on a uniform field",
        img_max, banks=[ALL_ONE], shift=0, tags=("directed", "dc"),
    ),
    VectorDef(
        "checkerboard", "highest spatial frequency; sign changes every pixel",
        img_checkerboard, banks=[SOBEL_GX], shift=0, tags=("directed", "highfreq"),
    ),
    VectorDef(
        "ramp", "known analytic gradients plus a multi-kernel bank swap",
        img_ramp_diag, banks=[SOBEL_GX, SOBEL_GY], shift=0,
        tags=("directed", "gradient", "multibank"),
    ),
    VectorDef(
        "ramp_h", "horizontal ramp: Gy must respond 0, Gx a constant",
        img_ramp_h, banks=[SOBEL_GX, SOBEL_GY], shift=0, tags=("directed", "gradient"),
    ),
    VectorDef(
        "ramp_v", "vertical ramp: Gx must respond 0, Gy a constant",
        img_ramp_v, banks=[SOBEL_GX, SOBEL_GY], shift=0, tags=("directed", "gradient"),
    ),
    VectorDef(
        "identity", "identity kernel: output must equal the image interior exactly",
        img_structured, banks=[IDENTITY], shift=0, tags=("directed", "identity"),
    ),
    VectorDef(
        "laplacian", "second-derivative edge kernel on structured content",
        img_structured, banks=[LAPLACIAN, BOX], shift=0, tags=("directed", "edge"),
    ),
    VectorDef(
        "sat_pos", "positive saturation must fire: acc +291465 clamps to +32767",
        img_max, banks=[ALL_MAX], shift=0, tags=("directed", "saturation"),
    ),
    VectorDef(
        "sat_neg", "negative saturation must fire: acc -293760 clamps to -32768; "
        "with ReLU the clamped value becomes 0",
        img_max, banks=[ALL_MIN], shift=0, tags=("directed", "saturation", "relu"),
    ),
]

#: rand_00 .. rand_19 -- bulk coverage of datapath and config space.
VECTOR_DEFS += [
    VectorDef(
        f"rand_{i:02d}",
        "uniform-random image, random kernels, random shift and bank count",
        img_random, random_kernels=True, tags=("random",),
    )
    for i in range(20)
]

#: Real-image family. Blocked on assets; see docs/05 s2.3 and assumption A9.
REAL_VECTOR_DEFS: list[VectorDef] = [
    VectorDef("real_lena32", "photographic statistics", img_structured,
              banks=[SOBEL_GX], shift=7, asset="lena.pgm", tags=("real",)),
    VectorDef("real_neu32", "NEU surface-defect crop, feeds the inspection demo",
              img_structured, banks=[SOBEL_GX], shift=7, asset="neu.pgm", tags=("real",)),
    VectorDef("real_pcb32", "PCB inspection crop", img_structured,
              banks=[SOBEL_GX], shift=7, asset="pcb.pgm", tags=("real",)),
]

ALL_DEFS = VECTOR_DEFS + REAL_VECTOR_DEFS
BY_NAME = {d.name: d for d in ALL_DEFS}


class MissingAssetError(RuntimeError):
    """Raised when a real-image vector is requested without its source asset."""


# ---------------------------------------------------------------------------
# Generation
# ---------------------------------------------------------------------------

def _json_dump(path: Path, obj: object) -> None:
    """Write JSON with a stable key order and a trailing newline."""
    path.write_text(json.dumps(obj, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def _stats_dict(stats: ConvStats) -> dict:
    return {
        "outputs": stats.outputs,
        "out_min": stats.out_min,
        "out_max": stats.out_max,
        "acc_min": stats.acc_min,
        "acc_max": stats.acc_max,
        "acc_peak_abs": stats.acc_peak_abs,
        "acc_width_used": stats.acc_width_used,
        "acc_width_declared": stats.acc_width_declared,
        "acc_headroom_bits": stats.acc_headroom_bits,
        "prod_peak_abs": stats.prod_peak_abs,
        "prod_width_used": stats.prod_width_used,
        "prod_width_declared": stats.prod_width_declared,
        "level_peaks": list(stats.level_peaks),
        "sat_pos": stats.sat_pos,
        "sat_neg": stats.sat_neg,
        "relu_clips": stats.relu_clips,
    }


def load_pgm(path: Path, spec: ConvSpec) -> list[list[int]]:
    """Read a binary or ASCII PGM as integers, asserting W x W and 8-bit depth.

    Kept integer-only: pixel bytes become Python ints directly, never a NumPy
    array or a float-scaled value.
    """
    raw = path.read_bytes()
    tokens: list[bytes] = []
    idx = 0
    while len(tokens) < 4 and idx < len(raw):
        while idx < len(raw) and raw[idx:idx + 1].isspace():
            idx += 1
        if raw[idx:idx + 1] == b"#":
            while idx < len(raw) and raw[idx:idx + 1] not in (b"\n", b"\r"):
                idx += 1
            continue
        start = idx
        while idx < len(raw) and not raw[idx:idx + 1].isspace():
            idx += 1
        tokens.append(raw[start:idx])
    magic, width, height, maxval = tokens[0], int(tokens[1]), int(tokens[2]), int(tokens[3])
    if magic not in (b"P2", b"P5"):
        raise ValueError(f"{path}: not a PGM (magic {magic!r})")
    if width != spec.W or height != spec.W:
        raise ValueError(f"{path}: image is {width}x{height}, expected {spec.W}x{spec.W}")
    if maxval != spec.PIX_MAX:
        raise ValueError(f"{path}: maxval {maxval}, expected {spec.PIX_MAX} (8-bit)")
    idx += 1
    if magic == b"P5":
        body = raw[idx:idx + width * height]
        if len(body) != width * height:
            raise ValueError(f"{path}: truncated raster")
        flat = [int(b) for b in body]
    else:
        flat = [int(t) for t in raw[idx:].split()]
        if len(flat) != width * height:
            raise ValueError(f"{path}: expected {width * height} samples, got {len(flat)}")
    return [flat[r * width:(r + 1) * width] for r in range(height)]


def generate_vector(vdef: VectorDef, spec: ConvSpec, root: Path) -> dict:
    """Write one vector directory; return its manifest entry."""
    if vdef.asset is not None:
        asset_path = ASSETS_DIR.joinpath(vdef.asset)
        if not asset_path.is_file():
            raise MissingAssetError(
                f"vector {vdef.name!r} needs the source asset {asset_path}, which is "
                f"not in the repository.\n"
                f"  docs/05_verification_plan.md s2.3 defines its provenance and the "
                f"crop/resize procedure.\n"
                f"  This family is NEVER substituted with synthetic data (assumption "
                f"A9). Supply the asset, or run with --skip-real to generate the "
                f"synthetic suite alone -- but note that a skipped real family means "
                f"the Phase 2 gate is not met."
            )
        image = load_pgm(asset_path, spec)
        _, banks, shift = vdef.resolve(spec)
    else:
        image, banks, shift = vdef.resolve(spec)

    vdir = root.joinpath(vdef.name)
    if vdir.exists():
        shutil.rmtree(vdir)
    vdir.mkdir(parents=True)

    save_values_txt(vdir.joinpath("image.txt"),
                    [px for row in image for px in row])

    per_bank_stats: dict[str, dict] = {}
    for k, coef in enumerate(banks):
        save_values_txt(vdir.joinpath(f"kernel_b{k}.txt"), coef)
        for relu_en in (0, 1):
            out, stats = convolve_traced(image, coef, shift, relu_en, spec)
            save_values_txt(vdir.joinpath(f"expected_b{k}_relu{relu_en}.txt"), out)
            per_bank_stats[f"b{k}_relu{relu_en}"] = _stats_dict(stats)

    config = {
        "name": vdef.name,
        "why": vdef.why,
        "N": spec.N,
        "W": spec.W,
        "shift": shift,
        "num_kernels": len(banks),
        "banks": list(range(len(banks))),
        "relu_default": 0,
        "relu_modes": [0, 1],
        "outputs_per_bank": spec.OUT_COUNT,
        "seed": vdef.seed,
        "random_kernels": vdef.random_kernels,
        "asset": vdef.asset,
        "tags": list(vdef.tags),
    }
    _json_dump(vdir.joinpath("config.json"), config)
    _json_dump(vdir.joinpath("stats.json"), per_bank_stats)

    return {
        "name": vdef.name,
        "shift": shift,
        "num_kernels": len(banks),
        "seed": vdef.seed,
        "tags": list(vdef.tags),
        "runs": len(banks) * 2,
    }


def generate_all(root: Path, spec: ConvSpec, skip_real: bool,
                 only: str | None = None, quiet: bool = False) -> dict:
    """Generate the whole suite (or one vector) and write the manifest."""
    root.mkdir(parents=True, exist_ok=True)
    defs = [BY_NAME[only]] if only else (VECTOR_DEFS if skip_real else ALL_DEFS)

    entries = []
    for vdef in defs:
        entry = generate_vector(vdef, spec, root)
        entries.append(entry)
        if not quiet:
            print(f"  {vdef.name:<14} shift={entry['shift']} banks={entry['num_kernels']} "
                  f"seed={entry['seed']} runs={entry['runs']}")

    manifest = {
        "master_seed": MASTER_SEED,
        "N": spec.N,
        "W": spec.W,
        "outputs_per_bank": spec.OUT_COUNT,
        "vectors": entries,
        "total_vectors": len(entries),
        "total_runs": sum(e["runs"] for e in entries),
        "real_family_included": (not skip_real) and only is None,
    }
    if only is None:
        _json_dump(root.joinpath("manifest.json"), manifest)
        # The baseline table is a derived artifact of the suite, so it is
        # written here rather than by hand -- otherwise --check would (rightly)
        # flag it as a file present in the tree that regeneration cannot
        # reproduce, and it could drift out of step with the vectors.
        root.joinpath("baseline_stats.md").write_text(
            BASELINE_HEADER + baseline_table(root) + "\n", encoding="utf-8"
        )
    return manifest


# ---------------------------------------------------------------------------
# Baseline statistics table (Phase 2 deliverable)
# ---------------------------------------------------------------------------

BASELINE_HEADER = """# Baseline statistics -- vector suite

Written by `python model/gen_vectors.py --all`; printed by `--stats`.
Do not edit by hand -- it is regenerated with the suite and `--check` compares
it byte for byte.

These are **secondary diagnostics for the report, never pass/fail criteria** --
the only pass criterion for this design is bit-exactness
(`docs/05_verification_plan.md`). Their purpose is the empirical half of the
width-sufficiency proof in `docs/03_fixed_point.md` s3: every accumulator value
observed anywhere in the suite, against the analytic bound and the declared
20-bit capacity.

"""


def baseline_table(root: Path) -> str:
    """Render the per-vector baseline table from the generated stats.json files."""
    manifest = json.loads(root.joinpath("manifest.json").read_text(encoding="utf-8"))
    spec_acc_w = PARAMS.ACC_W

    lines = [
        "| Vector | Bank | ReLU | Outputs | out min | out max | acc peak \\|x\\| | acc bits used/decl | sat+ | sat- | ReLU clips |",
        "|---|---|---|---|---|---|---|---|---|---|---|",
    ]
    peak_overall = 0
    peak_vector = ""
    sat_pos_total = sat_neg_total = relu_total = 0
    runs = 0

    for entry in manifest["vectors"]:
        stats = json.loads(root.joinpath(entry["name"], "stats.json").read_text(encoding="utf-8"))
        for key in sorted(stats):
            s = stats[key]
            bank = key.split("_")[0][1:]
            relu = key.split("relu")[1]
            runs += 1
            if s["acc_peak_abs"] > peak_overall:
                peak_overall = s["acc_peak_abs"]
                peak_vector = f"{entry['name']} b{bank}"
            sat_pos_total += s["sat_pos"]
            sat_neg_total += s["sat_neg"]
            relu_total += s["relu_clips"]
            lines.append(
                f"| `{entry['name']}` | {bank} | {relu} | {s['outputs']} | "
                f"{s['out_min']} | {s['out_max']} | {s['acc_peak_abs']} | "
                f"{s['acc_width_used']}/{s['acc_width_declared']} | "
                f"{s['sat_pos']} | {s['sat_neg']} | {s['relu_clips']} |"
            )

    bound = PARAMS.ACC_MAX_ABS
    summary = [
        "",
        f"**Runs:** {runs} &nbsp;&nbsp; **Vectors:** {manifest['total_vectors']} "
        f"&nbsp;&nbsp; **Outputs per run:** {manifest['outputs_per_bank']}",
        "",
        f"**Observed accumulator peak across the whole suite:** {peak_overall} "
        f"(`{peak_vector}`), against the analytic bound {bound} and the "
        f"{spec_acc_w}-bit signed capacity {1 << (spec_acc_w - 1)}.",
        "",
        f"**Saturation events:** {sat_pos_total} positive-rail, {sat_neg_total} "
        f"negative-rail. **ReLU clips:** {relu_total}.",
    ]
    return "\n".join(lines + summary)


# ---------------------------------------------------------------------------
# Determinism check
# ---------------------------------------------------------------------------

def check_determinism(root: Path, spec: ConvSpec, skip_real: bool) -> list[str]:
    """Regenerate into a scratch tree and diff every byte against `root`."""
    problems: list[str] = []
    with tempfile.TemporaryDirectory(prefix="genvec_") as tmp:
        scratch = Path(tmp).joinpath("vectors")
        generate_all(scratch, spec, skip_real, quiet=True)

        want = sorted(p.relative_to(scratch).as_posix()
                      for p in scratch.rglob("*") if p.is_file())
        have = sorted(p.relative_to(root).as_posix()
                      for p in root.rglob("*") if p.is_file()
                      and not p.relative_to(root).as_posix().startswith("assets/"))

        for missing in sorted(set(want) - set(have)):
            problems.append(f"missing from committed tree: {missing}")
        for extra in sorted(set(have) - set(want)):
            problems.append(f"present but not regenerated: {extra}")
        for rel in sorted(set(want) & set(have)):
            if scratch.joinpath(rel).read_bytes() != root.joinpath(rel).read_bytes():
                problems.append(f"differs on regeneration: {rel}")
    return problems


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    parser.add_argument("--all", action="store_true", help="generate the whole suite")
    parser.add_argument("--vector", help="generate a single named vector")
    parser.add_argument("--skip-real", action="store_true",
                        help="omit the real-image family (Phase 2 gate NOT met)")
    parser.add_argument("--check", action="store_true",
                        help="prove the committed suite regenerates byte for byte")
    parser.add_argument("--stats", action="store_true",
                        help="print the baseline statistics table")
    parser.add_argument("--list", action="store_true", help="list vectors and seeds")
    parser.add_argument("--out", default=str(VECTORS_DIR), help="output directory")
    parser.add_argument("--W", type=int, help="override image edge W")
    args = parser.parse_args(argv)

    spec = ConvSpec.from_package(W=args.W)
    root = Path(args.out)

    if args.list:
        print(f"{'VECTOR':<14} {'SEED':>12}  TAGS")
        for d in ALL_DEFS:
            print(f"{d.name:<14} {d.seed:>12}  {','.join(d.tags)}")
        print(f"\n{len(VECTOR_DEFS)} synthetic + {len(REAL_VECTOR_DEFS)} real "
              f"= {len(ALL_DEFS)} vectors, MASTER_SEED = {MASTER_SEED}")
        return 0

    if args.stats:
        if not root.joinpath("manifest.json").is_file():
            print(f"no manifest in {root}; run --all first", file=sys.stderr)
            return 1
        print(baseline_table(root))
        return 0

    if args.check:
        problems = check_determinism(root, spec, args.skip_real)
        if problems:
            print("DETERMINISM CHECK FAILED")
            for p in problems:
                print(f"  {p}")
            return 1
        print(f"DETERMINISM CHECK PASSED: {root} regenerates byte for byte")
        return 0

    if args.vector:
        if args.vector not in BY_NAME:
            parser.error(f"unknown vector {args.vector!r}; try --list")
        generate_all(root, spec, args.skip_real, only=args.vector)
        return 0

    if not args.all:
        parser.error("pass --all, --vector NAME, --check, --stats or --list")

    print(f"generating into {root} (N={spec.N}, W={spec.W}, seed={MASTER_SEED})")
    try:
        manifest = generate_all(root, spec, args.skip_real)
    except MissingAssetError as exc:
        print(f"\nERROR: {exc}", file=sys.stderr)
        return 2

    print(f"\n{manifest['total_vectors']} vectors, {manifest['total_runs']} runs "
          f"({manifest['outputs_per_bank']} outputs each)")
    if args.skip_real:
        print("NOTE: --skip-real was used. The real-image family is absent, so the "
              "Phase 2 gate is NOT met (docs/05 s2.3).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
