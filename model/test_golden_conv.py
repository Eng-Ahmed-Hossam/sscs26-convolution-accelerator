#!/usr/bin/env python3
"""Self-checking tests for the golden model itself (Phase 1 gate).

Run standalone -- no pytest required, though the ``test_*`` naming means pytest
collects it too:

    python model/test_golden_conv.py

The centrepiece is :func:`test_handcheck_5x5`, whose expected values were
computed **by hand on paper** before the model was run, with the full longhand
arithmetic reproduced in the docstring. That is what makes it a check on the
model rather than a recording of whatever the model happened to print
(``docs/07_work_packages.md`` WP1 definition of done).
"""

from __future__ import annotations

import sys
import traceback
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from golden_conv import (  # noqa: E402
    DEFAULT_SPEC,
    ConvSpec,
    accumulate_tree,
    compute_output,
    convolve,
    convolve_traced,
    extract_window,
    multiply,
    relu,
    round_half_up,
    saturate,
    self_audit,
    signed_width,
)
from pkg_params import PARAMS  # noqa: E402


# ---------------------------------------------------------------------------
# The hand-computed reference case
# ---------------------------------------------------------------------------

#: 5x5 image, image[r][c] = 5*r + c + 1
#:      1   2   3   4   5
#:      6   7   8   9  10
#:     11  12  13  14  15
#:     16  17  18  19  20
#:     21  22  23  24  25
HAND_IMAGE = [[5 * r + c + 1 for c in range(5)] for r in range(5)]

#: Deliberately asymmetric 3x3 kernel, coef[r*3+c]:
#:      1   2   3
#:      4   5   6
#:      7   8   9
#: Asymmetry is the point: a transposed window would give 363 instead of 411
#: for output (0,0), so this case catches an r/c swap in extract_window.
HAND_KERNEL = [1, 2, 3, 4, 5, 6, 7, 8, 9]

#: Hand-computed expected outputs, raster order, 3x3 = (5-3+1)^2 outputs.
#:
#: output(0,0): window rows 0..2, cols 0..2 =  1  2  3 / 6  7  8 / 11 12 13
#:      row 0: 1*1 + 2*2 + 3*3     =   1 +  4 +  9 =  14
#:      row 1: 4*6 + 5*7 + 6*8     =  24 + 35 + 48 = 107
#:      row 2: 7*11 + 8*12 + 9*13  =  77 + 96 + 117 = 290
#:      total                      =  14 + 107 + 290 = 411
#:
#: output(0,1): window cols 1..3 =  2  3  4 / 7  8  9 / 12 13 14
#:      row 0: 1*2 + 2*3 + 3*4    =   2 +  6 + 12 =  20
#:      row 1: 4*7 + 5*8 + 6*9    =  28 + 40 + 54 = 122
#:      row 2: 7*12 + 8*13 + 9*14 =  84 + 104 + 126 = 314
#:      total                     =  20 + 122 + 314 = 456
#:
#: Cross-check on the structure: every one-column step adds 1 to all nine
#: pixels, so it adds sum(kernel) = 45 to the result (411 -> 456 -> 501); every
#: one-row step adds 5 to all nine pixels, so it adds 5*45 = 225
#: (411 -> 636 -> 861). Both independent checks agree with the longhand sums.
#:
#: output(1,0): window rows 1..3, cols 0..2 = 6 7 8 / 11 12 13 / 16 17 18
#:      row 0: 1*6 + 2*7 + 3*8       =   6 + 14 + 24 =  44
#:      row 1: 4*11 + 5*12 + 6*13    =  44 + 60 + 78 = 182
#:      row 2: 7*16 + 8*17 + 9*18    = 112 + 136 + 162 = 410
#:      total                        =  44 + 182 + 410 = 636   (= 411 + 225)
HAND_EXPECTED = [
    411, 456, 501,
    636, 681, 726,
    861, 906, 951,
]

HAND_SPEC = ConvSpec.from_package(N=3, W=5)


def test_handcheck_5x5() -> None:
    """PHASE 1 GATE: model output equals the paper computation, exactly."""
    got = convolve(HAND_IMAGE, HAND_KERNEL, shift=0, relu_en=0, spec=HAND_SPEC)
    assert got == HAND_EXPECTED, f"expected {HAND_EXPECTED}, got {got}"


def test_handcheck_stage_by_stage() -> None:
    """The individual stages of output (0,0) match the longhand intermediates."""
    win = extract_window(HAND_IMAGE, 0, 0, HAND_SPEC)
    assert win == [[1, 2, 3], [6, 7, 8], [11, 12, 13]], win

    prod = multiply(win, HAND_KERNEL, HAND_SPEC)
    assert prod == [1, 4, 9, 24, 35, 48, 77, 96, 117], prod

    acc, levels = accumulate_tree(prod, HAND_SPEC)
    assert acc == 411, acc
    assert sum(prod) == acc, "tree grouping changed the sum"
    # Pairwise levels with the odd term on the alignment path (docs/02 s5).
    assert levels[1] == [5, 33, 83, 173, 117], levels[1]
    assert levels[2] == [38, 256, 117], levels[2]
    assert levels[3] == [294, 117], levels[3]
    assert levels[4] == [411], levels[4]


def test_handcheck_is_orientation_sensitive() -> None:
    """A transposed window would give 363, so the hand case really pins r/c."""
    transposed = [[HAND_IMAGE[c][r] for c in range(3)] for r in range(3)]
    acc, _ = accumulate_tree(multiply(transposed, HAND_KERNEL, HAND_SPEC), HAND_SPEC)
    assert acc == 363, acc
    assert acc != HAND_EXPECTED[0], "the hand case cannot detect an r/c swap"


# ---------------------------------------------------------------------------
# Arithmetic policy: rounding, saturation, ReLU (docs/03_fixed_point.md s4)
# ---------------------------------------------------------------------------

def test_round_half_up_directed() -> None:
    """Round-half-up, including the negative-tie direction, by hand.

    Ties round toward +infinity: 3.5 -> 4 and -3.5 -> -3.
    """
    cases = [
        # (acc, shift, expected, comment)
        (7, 1, 4),      # 3.5 -> 4
        (-7, 1, -3),    # -3.5 -> -3  (half UP, not away from zero)
        (6, 1, 3),      # 3.0 -> 3
        (-6, 1, -3),    # -3.0 -> -3
        (5, 2, 1),      # 1.25 -> 1
        (6, 2, 2),      # 1.5 -> 2
        (-6, 2, -1),    # -1.5 -> -1
        (7, 2, 2),      # 1.75 -> 2
        (0, 7, 0),
        (12345, 0, 12345),      # shift 0 is a pass-through
        (-12345, 0, -12345),
    ]
    for acc, shift, want in cases:
        got = round_half_up(acc, shift, DEFAULT_SPEC)
        assert got == want, f"round_half_up({acc}, {shift}) = {got}, expected {want}"


def test_saturate_both_rails() -> None:
    spec = DEFAULT_SPEC
    assert saturate(spec.OUT_MAX, spec) == (spec.OUT_MAX, 0)
    assert saturate(spec.OUT_MIN, spec) == (spec.OUT_MIN, 0)
    assert saturate(spec.OUT_MAX + 1, spec) == (spec.OUT_MAX, 1)
    assert saturate(spec.OUT_MIN - 1, spec) == (spec.OUT_MIN, 1)
    assert saturate(spec.ACC_MAX, spec) == (spec.OUT_MAX, 1)
    assert saturate(spec.ACC_MIN, spec) == (spec.OUT_MIN, 1)


def test_relu_after_saturation() -> None:
    """ReLU is applied after saturation, and only when enabled."""
    assert relu(-32768, 0) == (-32768, 0)
    assert relu(-32768, 1) == (0, 1)
    assert relu(0, 1) == (0, 0)
    assert relu(5, 1) == (5, 0)


def test_positive_saturation_reachable() -> None:
    """All-255 image x all-+127 kernel at shift 0 hits the positive rail."""
    spec = ConvSpec.from_package(W=8)
    image = [[spec.PIX_MAX] * spec.W for _ in range(spec.W)]
    coef = [spec.COEF_MAX] * spec.TAPS
    out, stats = convolve_traced(image, coef, shift=0, relu_en=0, spec=spec)
    assert stats.acc_max == spec.ACC_MAX == 291465, stats.acc_max
    assert set(out) == {spec.OUT_MAX}, set(out)
    assert stats.sat_pos == spec.OUT_COUNT and stats.sat_neg == 0


def test_negative_saturation_and_relu_clip() -> None:
    """All-255 image x all -128 kernel hits the negative rail; ReLU zeroes it."""
    spec = ConvSpec.from_package(W=8)
    image = [[spec.PIX_MAX] * spec.W for _ in range(spec.W)]
    coef = [spec.COEF_MIN] * spec.TAPS
    out0, s0 = convolve_traced(image, coef, shift=0, relu_en=0, spec=spec)
    assert s0.acc_min == spec.ACC_MIN == -293760, s0.acc_min
    assert set(out0) == {spec.OUT_MIN}
    assert s0.sat_neg == spec.OUT_COUNT and s0.relu_clips == 0

    out1, s1 = convolve_traced(image, coef, shift=0, relu_en=1, spec=spec)
    assert set(out1) == {0}, set(out1)
    assert s1.relu_clips == spec.OUT_COUNT
    # Saturation still fires with ReLU on: the clamp happens first.
    assert s1.sat_neg == spec.OUT_COUNT


# ---------------------------------------------------------------------------
# Structural properties
# ---------------------------------------------------------------------------

def test_identity_kernel_is_the_interior() -> None:
    """Identity kernel must reproduce the image interior bit-exactly."""
    spec = ConvSpec.from_package(W=12)
    image = [[(7 * r + 13 * c) % (spec.PIX_MAX + 1) for c in range(spec.W)]
             for r in range(spec.W)]
    coef = [0] * spec.TAPS
    coef[(spec.N * spec.N) >> 1] = 1          # centre tap
    got = convolve(image, coef, spec=spec)
    want = [image[r + 1][c + 1]
            for r in range(spec.OUT_EDGE) for c in range(spec.OUT_EDGE)]
    assert got == want


def test_impulse_reproduces_mirrored_kernel() -> None:
    """A single bright pixel prints the kernel, mirrored, at known coordinates.

    out(i,j) = PIX_MAX * coef[(r0-i)*N + (c0-j)] wherever that index is inside
    the kernel. The mirroring is the convolution-vs-correlation flip and is
    exactly what the ``impulse`` vector of docs/05 s2 is for.
    """
    spec = ConvSpec.from_package(W=9)
    r0, c0 = 4, 5
    image = [[0] * spec.W for _ in range(spec.W)]
    image[r0][c0] = spec.PIX_MAX
    coef = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    out = convolve(image, coef, spec=spec)
    for i in range(spec.OUT_EDGE):
        for j in range(spec.OUT_EDGE):
            r, c = r0 - i, c0 - j
            want = spec.PIX_MAX * coef[r * spec.N + c] if 0 <= r < spec.N and 0 <= c < spec.N else 0
            want, _ = saturate(want, spec)
            assert out[i * spec.OUT_EDGE + j] == want, (i, j)


def test_all_zero_image_is_all_zero() -> None:
    spec = ConvSpec.from_package(W=10)
    image = [[0] * spec.W for _ in range(spec.W)]
    out, stats = convolve_traced(image, [spec.COEF_MIN] * spec.TAPS, spec=spec)
    assert set(out) == {0}
    assert stats.acc_peak_abs == 0 and stats.sat_events == 0


def test_output_count_and_order() -> None:
    """Output is (W-N+1)^2 values in raster order of the output frame."""
    spec = ConvSpec.from_package(W=7)
    image = [[(r * spec.W + c) % 256 for c in range(spec.W)] for r in range(spec.W)]
    coef = [0] * spec.TAPS
    coef[0] = 1                                   # picks win[0][0] = image[i][j]
    out = convolve(image, coef, spec=spec)
    assert len(out) == spec.OUT_COUNT == 25
    assert out == [image[i][j] for i in range(5) for j in range(5)]


# ---------------------------------------------------------------------------
# Width derivation and package agreement
# ---------------------------------------------------------------------------

def test_widths_match_frozen_package() -> None:
    """Derived widths reproduce rtl/pkg_params.sv exactly at the package N."""
    DEFAULT_SPEC.check_against_package()
    assert DEFAULT_SPEC.PROD_W == PARAMS.PROD_W == 17
    assert DEFAULT_SPEC.ACC_W == PARAMS.ACC_W == 20
    assert DEFAULT_SPEC.OUT_W == PARAMS.OUT_W == 16
    assert DEFAULT_SPEC.OUT_COUNT == 900


def test_accumulator_bound_is_provable_and_tight() -> None:
    """|acc| <= 293760 < 2^19, so 20 signed bits are exact (docs/03 s3)."""
    spec = DEFAULT_SPEC
    assert spec.ACC_MIN == -(spec.TAPS * spec.PIX_MAX * 128) == -293760
    assert spec.ACC_MAX == spec.TAPS * spec.PIX_MAX * 127 == 291465
    assert max(abs(spec.ACC_MIN), spec.ACC_MAX) < (1 << 19)
    assert signed_width(spec.ACC_MIN, spec.ACC_MAX) == 20
    # Tight: 19 bits would not hold the negative rail.
    assert not (-(1 << 18) <= spec.ACC_MIN)


def test_width_formulas_generalize() -> None:
    """The same formulas give the documented growth at N=5 (A7)."""
    n5 = ConvSpec.from_package(N=5, W=64)
    assert n5.TAPS == 25 and n5.OUT_COUNT == 3600
    assert n5.ACC_MIN == -816000 and n5.ACC_MAX == 809625
    assert n5.ACC_W == 21, n5.ACC_W
    assert n5.TREE_LEVELS == 5              # ceil(log2(25))
    # ACC_W is derived from the reachable range, so it is one bit tighter than
    # the textbook PROD_W + ceil(log2(N*N)) bound at both geometries.
    assert n5.ACC_W_NAIVE == 22 and DEFAULT_SPEC.ACC_W_NAIVE == 21


def test_no_intermediate_exceeds_its_width() -> None:
    """Random-ish sweep: every product and accumulator fits its declared width."""
    spec = ConvSpec.from_package(W=16)
    extremes = [
        [spec.COEF_MIN] * spec.TAPS,
        [spec.COEF_MAX] * spec.TAPS,
        [spec.COEF_MIN if i % 2 else spec.COEF_MAX for i in range(spec.TAPS)],
    ]
    image = [[spec.PIX_MAX if (r + c) % 3 else 0 for c in range(spec.W)]
             for r in range(spec.W)]
    for coef in extremes:
        _, stats = convolve_traced(image, coef, spec=spec)
        assert stats.prod_width_used <= stats.prod_width_declared
        assert stats.acc_width_used <= stats.acc_width_declared


# ---------------------------------------------------------------------------
# Error behaviour and integer hygiene
# ---------------------------------------------------------------------------

def test_rejects_non_int_and_out_of_range() -> None:
    spec = ConvSpec.from_package(W=5)
    good = [[1] * 5 for _ in range(5)]
    coef = [1] * 9

    bad_float = [row[:] for row in good]
    bad_float[0][0] = 1.0
    _expect(TypeError, convolve, bad_float, coef, spec=spec)

    bad_bool = [row[:] for row in good]
    bad_bool[0][0] = True
    _expect(TypeError, convolve, bad_bool, coef, spec=spec)

    bad_range = [row[:] for row in good]
    bad_range[2][3] = 256
    _expect(ValueError, convolve, bad_range, coef, spec=spec)

    _expect(ValueError, convolve, good, [1] * 8, spec=spec)          # wrong count
    _expect(ValueError, convolve, good, [128] * 9, spec=spec)        # coef too big
    _expect(ValueError, convolve, good, coef, 8, 0, spec)            # shift > 7
    _expect(ValueError, convolve, good, coef, 0, 2, spec)            # relu not 0/1
    _expect(ValueError, convolve, good[:4], coef, spec=spec)         # wrong shape


def test_rejects_numpy_scalars() -> None:
    """NumPy integer scalars are rejected: they carry a width that can wrap."""
    try:
        import numpy as np
    except ImportError:
        print("    (numpy not installed -- skipping numpy rejection check)")
        return
    spec = ConvSpec.from_package(W=5)
    image = [[np.int64(1)] * 5 for _ in range(5)]
    _expect(TypeError, convolve, image, [1] * 9, spec=spec)


def test_source_is_float_free() -> None:
    findings = self_audit()
    assert not findings, "\n".join(findings)


def test_trace_report_is_complete() -> None:
    """The mismatch-report instrument shows window, products and every level."""
    trace = compute_output(HAND_IMAGE, HAND_KERNEL, 0, 0, 0, 0, HAND_SPEC)
    text = trace.report()
    for needle in ("win[0]", "prod", "level 4", "acc=411", "out=411"):
        assert needle in text, f"trace report missing {needle!r}:\n{text}"
    assert trace.rtl_stages() == (411, 411, 411), trace.rtl_stages()


# ---------------------------------------------------------------------------
# Runner
# ---------------------------------------------------------------------------

def _expect(exc, fn, *args, **kwargs) -> None:
    try:
        fn(*args, **kwargs)
    except exc:
        return
    except Exception as other:  # noqa: BLE001
        raise AssertionError(f"expected {exc.__name__}, got {type(other).__name__}: {other}")
    raise AssertionError(f"expected {exc.__name__}, no exception raised")


def main() -> int:
    tests = [(n, f) for n, f in sorted(globals().items())
             if n.startswith("test_") and callable(f)]
    failures = 0
    print(f"golden model self-tests ({len(tests)} cases)")
    for name, fn in tests:
        try:
            fn()
        except Exception:  # noqa: BLE001
            failures += 1
            print(f"  FAIL  {name}")
            traceback.print_exc()
        else:
            print(f"  pass  {name}")
    print(f"\n{len(tests) - failures} passed, {failures} failed")
    return 1 if failures else 0


if __name__ == "__main__":
    raise SystemExit(main())
