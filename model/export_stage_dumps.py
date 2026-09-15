#!/usr/bin/env python3
"""Export golden-model stage dumps for the RTL unit testbenches (Phase 4).

Phase 4 requires each datapath module to be checked against **golden-model
stage dumps** rather than against a testbench-local reimplementation of the
same arithmetic -- otherwise a unit TB just confirms that the TB agrees with
itself. This writes one flat record per stimulus window covering every
intermediate of `mac_array`, `adder_tree` and `normalize`:

    tb/stage_dumps/datapath.txt

Record layout (one decimal integer per line, 31 per record, no separators, so
a SystemVerilog TB can read it with a plain `$fscanf(fd, "%d", x)` loop):

    [ 0.. 8]  win[r][c]    row-major, index r*N+c
    [ 9..17]  coef[i]
    [18..26]  prod[i]              -- mac_array output
    [27..30]  s1[0..3]             -- adder_tree stage 1 pairwise sums
    [31]      p8                   -- the odd product on the alignment path
    [32..33]  s2[0..1]             -- adder_tree stage 2 sums
    [34]      acc                  -- adder_tree output, exact
    [35]      out_shift
    [36]      relu_en
    [37]      rounded              -- normalize stage 1
    [38]      res                  -- normalize stage 2 (saturated + activated)
    [39]      sat_flag

(The header line of the file states the record length so the TB cannot drift
out of step with the layout.)

Stimulus deliberately mixes directed corners with seeded randoms:
  * both saturation rails at shift 0,
  * exact rounding ties at every shift, positive and negative,
  * all-zero, all-max and all-min operands,
  * randomized windows and kernels across every legal shift and both ReLU
    modes.

    python model/export_stage_dumps.py            # write the dump
    python model/export_stage_dumps.py --show 3   # print the first 3 records
"""

from __future__ import annotations

import argparse
import sys
from pathlib import Path
from random import Random
from typing import Iterator, Sequence

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gen_vectors import MASTER_SEED, seed_for  # noqa: E402
from golden_conv import (  # noqa: E402
    ConvSpec,
    accumulate_tree,
    multiply,
    relu,
    round_half_up,
    saturate,
)
from pkg_params import PARAMS  # noqa: E402

SPEC = ConvSpec.from_package()
DUMP_DIR = Path(__file__).resolve().parent.parent.joinpath("tb", "stage_dumps")
DUMP_PATH = DUMP_DIR.joinpath("datapath.txt")

#: Fields per record; the TB asserts this against the file header.
RECORD_LEN = 40


def _record(win_flat: Sequence[int], coef: Sequence[int],
            shift: int, relu_en: int) -> list[int]:
    """Run all six model stages on one window and flatten every intermediate."""
    win = [list(win_flat[r * SPEC.N:(r + 1) * SPEC.N]) for r in range(SPEC.N)]
    prod = multiply(win, coef, SPEC)
    acc, levels = accumulate_tree(prod, SPEC)

    # levels[1] is [p0+p1, p2+p3, p4+p5, p6+p7, p8]: four sums then the odd
    # term on the alignment path. levels[2] is [s0+s1, s2+s3, p8].
    s1 = list(levels[1][:4])
    p8 = levels[1][4]
    s2 = list(levels[2][:2])

    rounded = round_half_up(acc, shift, SPEC)
    saturated, sat_flag = saturate(rounded, SPEC)
    res, _ = relu(saturated, relu_en)

    rec = list(win_flat) + list(coef) + list(prod) + s1 + [p8] + s2 + \
        [acc, shift, relu_en, rounded, res, sat_flag]
    assert len(rec) == RECORD_LEN, f"record is {len(rec)} fields, expected {RECORD_LEN}"
    return rec


def stimulus() -> Iterator[tuple[list[int], list[int], int, int]]:
    """(window, kernel, shift, relu_en) tuples: directed corners then randoms."""
    taps = SPEC.TAPS
    pmax, cmin, cmax = SPEC.PIX_MAX, SPEC.COEF_MIN, SPEC.COEF_MAX

    # --- directed: quiescent and both saturation rails at shift 0 -----------
    for relu_en in (0, 1):
        yield [0] * taps, [cmin] * taps, 0, relu_en          # all zero
        yield [pmax] * taps, [cmax] * taps, 0, relu_en       # +291465 -> +32767
        yield [pmax] * taps, [cmin] * taps, 0, relu_en       # -293760 -> -32768
        yield [pmax] * taps, [0] * taps, 0, relu_en          # zero kernel
        # Single-tap kernels: isolate one multiplier and one tree path at a time.
        for i in range(taps):
            coef = [0] * taps
            coef[i] = cmin
            win = [0] * taps
            win[i] = pmax
            yield win, coef, 0, relu_en

    # --- directed: exact rounding ties at every shift, both signs -----------
    # A tie is acc = k*2^s + 2^(s-1). Build it from a single tap so the value
    # is exactly controllable: acc = win[0]*coef[0].
    for shift in range(1, PARAMS.SHIFT_MAX + 1):
        half = 1 << (shift - 1)
        for magnitude in (half, half + (1 << shift), 3 * half):
            for sign in (1, -1):
                target = magnitude * sign
                # Find a (pixel, coef) pair whose product is exactly `target`.
                for px in range(1, pmax + 1):
                    if target % px == 0:
                        k = target // px
                        if cmin <= k <= cmax:
                            win = [0] * taps
                            coef = [0] * taps
                            win[0], coef[0] = px, k
                            for relu_en in (0, 1):
                                yield win, coef, shift, relu_en
                            break

    # --- randomized sweep ---------------------------------------------------
    rng = Random(seed_for("stage_dumps"))
    for _ in range(400):
        win = [rng.randint(0, pmax) for _ in range(taps)]
        coef = [rng.randint(cmin, cmax) for _ in range(taps)]
        shift = rng.randint(0, PARAMS.SHIFT_MAX)
        yield win, coef, shift, rng.randint(0, 1)

    # --- randomized extremes: operands pinned to the rails ------------------
    for _ in range(200):
        win = [rng.choice((0, 1, pmax - 1, pmax)) for _ in range(taps)]
        coef = [rng.choice((cmin, -1, 0, 1, cmax)) for _ in range(taps)]
        yield win, coef, rng.randint(0, PARAMS.SHIFT_MAX), rng.randint(0, 1)


def build() -> tuple[int, list[list[int]]]:
    records = [_record(win, coef, shift, relu_en)
               for win, coef, shift, relu_en in stimulus()]
    return len(records), records


def write_dump() -> int:
    count, records = build()
    DUMP_DIR.mkdir(parents=True, exist_ok=True)
    # Header is two plain integers (record count, field count) rather than
    # comment lines: a SystemVerilog TB can then read the whole file with one
    # $fscanf("%d") loop and no string handling, and it cannot drift out of
    # step with the layout because it reads the field count from the file.
    lines = [str(count), str(RECORD_LEN)]
    for rec in records:
        lines.extend(str(v) for v in rec)
    DUMP_PATH.write_text("\n".join(lines) + "\n", encoding="utf-8")

    sat = sum(1 for r in records if r[39] == 1)
    ties = sum(1 for r in records if r[35] > 0)
    print(f"wrote {count} records ({RECORD_LEN} fields each) to {DUMP_PATH}")
    print(f"  saturating records: {sat}")
    print(f"  shifted records:    {ties}")
    print(f"  acc range:          [{min(r[34] for r in records)}, "
          f"{max(r[34] for r in records)}]")
    return 0


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    parser.add_argument("--show", type=int, metavar="N", help="print N records")
    args = parser.parse_args(argv)

    if args.show:
        _, records = build()
        names = ([f"win{i}" for i in range(9)] + [f"coef{i}" for i in range(9)]
                 + [f"prod{i}" for i in range(9)] + [f"s1_{i}" for i in range(4)]
                 + ["p8", "s2_0", "s2_1", "acc", "shift", "relu", "rounded",
                    "res", "sat"])
        for rec in records[:args.show]:
            print(", ".join(f"{n}={v}" for n, v in zip(names, rec)))
        return 0

    return write_dump()


if __name__ == "__main__":
    raise SystemExit(main())
