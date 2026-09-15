#!/usr/bin/env python3
"""Tests for the Phase 3 width study.

The study *prints* claims; these tests *check* them, so a regression in the
model or the vector suite cannot leave a false statement sitting in
``docs/03_fixed_point.md``.

    python model/test_width_study.py
"""

from __future__ import annotations

import sys
import traceback
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from golden_conv import ConvSpec, signed_width  # noqa: E402
from pkg_params import PARAMS  # noqa: E402
from width_study import (  # noqa: E402
    BEGIN_MARK,
    DOC_PATH,
    END_MARK,
    SPEC,
    _declared_width,
    section_derivation,
    section_empirical,
    section_generalize,
    section_rounding,
    section_saturation,
    sweep_suite,
)

#: The full sweep costs a couple of seconds; share it across the tests.
_SWEEP = None


def sweep():
    global _SWEEP
    if _SWEEP is None:
        _SWEEP = sweep_suite(SPEC)
    return _SWEEP


# ---------------------------------------------------------------------------
# Width sufficiency
# ---------------------------------------------------------------------------

def test_no_node_exceeds_its_declared_width() -> None:
    """PHASE 3 GATE: no observed overflow at any node, over the whole suite."""
    for node, rng in sweep()["nodes"].items():
        declared = _declared_width(node, SPEC)
        used = rng.unsigned_width if node == "pixel" else rng.width
        assert used <= declared, f"{node}: observed needs {used} bits, declared {declared}"


def test_accumulator_bound_is_attained_by_the_suite() -> None:
    """The suite drives acc to the analytic worst case, both endpoints."""
    acc = sweep()["nodes"]["acc"]
    assert acc.lo == SPEC.ACC_MIN == -293760, acc.lo
    assert acc.hi == SPEC.ACC_MAX == 291465, acc.hi
    assert signed_width(acc.lo, acc.hi) == PARAMS.ACC_W == 20


def test_every_node_range_matches_its_analytic_prediction() -> None:
    """Observed ranges equal the reachable ranges -- the suite is exhaustive
    at the endpoints, not merely broad."""
    nodes = sweep()["nodes"]
    assert (nodes["product"].lo, nodes["product"].hi) == (SPEC.PROD_MIN, SPEC.PROD_MAX)
    for level in range(1, SPEC.TREE_LEVELS + 1):
        summed = min(1 << level, SPEC.TAPS)
        rng = nodes[f"level{level}"]
        assert rng.lo == summed * SPEC.PROD_MIN, (level, rng.lo)
        assert rng.hi == summed * SPEC.PROD_MAX, (level, rng.hi)


def test_accumulator_is_tight_and_products_carry_one_spare_bit() -> None:
    """The minimization claim: acc is exactly right, prod has one spare bit."""
    assert PARAMS.ACC_W == signed_width(SPEC.ACC_MIN, SPEC.ACC_MAX), "acc not tight"
    assert PARAMS.ACC_W - 1 < signed_width(SPEC.ACC_MIN, SPEC.ACC_MAX), "acc oversized"
    assert SPEC.PROD_W - SPEC.PROD_W_MIN == 1, "product slack is not one bit"
    # The spare bit is unreachable precisely because the pixel operand is >= 0.
    assert SPEC.PROD_MIN == SPEC.PIX_MAX * SPEC.COEF_MIN
    assert abs(SPEC.PROD_MIN) < (1 << (SPEC.PROD_W - 2))


# ---------------------------------------------------------------------------
# Rounding tradeoff
# ---------------------------------------------------------------------------

def test_round_half_up_beats_truncation_on_bias_and_deviation() -> None:
    """PHASE 3 GATE: the recorded rounding tradeoff actually favours the choice."""
    r = sweep()["rounding"]
    assert r["compared"] > 0, "no shifted runs in the suite to compare"
    # Round-half-up bias is near zero; truncation is close to -1/2 LSB.
    rnd_bias_milli = (r["rnd_err_sum"] * 1000) // r["unit_sum"]
    trunc_bias_milli = (r["trunc_err_sum"] * 1000) // r["unit_sum"]
    assert abs(rnd_bias_milli) < 50, f"round-half-up bias {rnd_bias_milli}/1000 LSB"
    assert trunc_bias_milli < -400, f"truncation bias {trunc_bias_milli}/1000 LSB"
    assert abs(rnd_bias_milli) < abs(trunc_bias_milli)
    # ...and its worst-case deviation is strictly smaller.
    assert r["rnd_err_max"] < r["trunc_err_max"]


def test_rounding_error_stays_within_half_an_lsb() -> None:
    """err = result*2^s - acc must lie in (-2^(s-1), +2^(s-1)] for every output."""
    r = sweep()["rounding"]
    # The largest shift in the suite is 7, so half an LSB is 64 units.
    assert r["rnd_err_max"] <= (1 << (PARAMS.SHIFT_MAX - 1)), r["rnd_err_max"]


# ---------------------------------------------------------------------------
# Generalization
# ---------------------------------------------------------------------------

def test_formulas_hold_at_every_studied_geometry() -> None:
    """PHASE 3 GATE: formulas hold for N=3/5 and W=32/64."""
    expected_acc_w = {3: 20, 5: 21}
    for n in (3, 5):
        for w in (32, 64):
            spec = ConvSpec.from_package(N=n, W=w)
            assert spec.ACC_W == expected_acc_w[n], (n, w, spec.ACC_W)
            assert spec.ACC_W == signed_width(spec.ACC_MIN, spec.ACC_MAX)
            assert spec.OUT_COUNT == (w - n + 1) ** 2
            # The tight bound is exactly one bit below the textbook rule.
            assert spec.ACC_W_NAIVE == spec.ACC_W + 1, (n, w)
    ConvSpec.from_package().check_against_package()


def test_widths_are_frozen_against_the_package() -> None:
    """Phase 3 freezes the widths: any change must break this test loudly."""
    frozen = {"PIX_W": 8, "COEF_W": 8, "PIXS_W": 9, "PROD_W": 17,
              "T1_W": 18, "T2_W": 19, "ACC_W": 20, "OUT_W": 16, "P_PIPE": 6}
    for name, want in frozen.items():
        assert PARAMS[name] == want, (
            f"{name} is {PARAMS[name]}, frozen at {want} by phase3-complete. "
            "Changing a width requires re-running Phases 2-3 and re-tagging."
        )


# ---------------------------------------------------------------------------
# The generated documentation is current
# ---------------------------------------------------------------------------

def test_docs_generated_block_is_up_to_date() -> None:
    """docs/03_fixed_point.md must match what the study produces right now."""
    text = DOC_PATH.read_text(encoding="utf-8")
    assert BEGIN_MARK in text and END_MARK in text, (
        "the generated block is missing from docs/03_fixed_point.md; "
        "run `python model/width_study.py --write-docs`"
    )
    committed = text.split(BEGIN_MARK)[1].split(END_MARK)[0].strip()
    s = sweep()
    current = "\n\n".join([
        section_derivation(),
        section_empirical(s),
        section_rounding(s),
        section_saturation(),
        section_generalize(),
    ]).strip()
    assert committed == current, (
        "docs/03_fixed_point.md is stale -- regenerate with "
        "`python model/width_study.py --write-docs`"
    )


def main() -> int:
    tests = [(n, f) for n, f in sorted(globals().items())
             if n.startswith("test_") and callable(f)]
    failures = 0
    print(f"width study checks ({len(tests)} cases)")
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
