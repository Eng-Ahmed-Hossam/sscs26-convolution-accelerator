#!/usr/bin/env python3
"""Validation of the generated vector suite (Phase 2 gate).

These tests check the **vectors**, not the arithmetic: that every committed
file is self-consistent, that the vectors provably exercise what they claim to
exercise (both saturation rails, ReLU clipping, every shift and bank count),
and that the accumulator bound proven analytically in
``docs/03_fixed_point.md`` s3 is never approached, let alone exceeded, anywhere
in the suite.

``model/test_golden_conv.py`` covers the arithmetic itself.

    python model/gen_vectors.py --all --skip-real     # generate first
    python model/test_vectors.py
"""

from __future__ import annotations

import json
import sys
import traceback
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gen_vectors import (  # noqa: E402
    ALL_DEFS,
    IDENTITY,
    REAL_VECTOR_DEFS,
    SOBEL_GX,
    SOBEL_GY,
    VECTOR_DEFS,
    VECTORS_DIR,
    seed_for,
)
from golden_conv import (  # noqa: E402
    ConvSpec,
    convolve,
    load_image_txt,
    load_kernel_txt,
)
from pkg_params import PARAMS  # noqa: E402

SPEC = ConvSpec.from_package()


def _manifest() -> dict:
    path = VECTORS_DIR.joinpath("manifest.json")
    assert path.is_file(), (
        f"{path} missing -- run `python model/gen_vectors.py --all --skip-real` first"
    )
    return json.loads(path.read_text(encoding="utf-8"))


def _config(name: str) -> dict:
    return json.loads(VECTORS_DIR.joinpath(name, "config.json").read_text(encoding="utf-8"))


def _stats(name: str) -> dict:
    return json.loads(VECTORS_DIR.joinpath(name, "stats.json").read_text(encoding="utf-8"))


def _expected(name: str, bank: int, relu: int) -> list[int]:
    path = VECTORS_DIR.joinpath(name, f"expected_b{bank}_relu{relu}.txt")
    return [int(line) for line in path.read_text(encoding="utf-8").split()]


def _image(name: str) -> list[list[int]]:
    image, _ = load_image_txt(VECTORS_DIR.joinpath(name, "image.txt"), SPEC)
    return image


def _kernel(name: str, bank: int) -> list[int]:
    coef, _ = load_kernel_txt(VECTORS_DIR.joinpath(name, f"kernel_b{bank}.txt"), SPEC)
    return coef


def _names() -> list[str]:
    return [e["name"] for e in _manifest()["vectors"]]


# ---------------------------------------------------------------------------
# Suite structure
# ---------------------------------------------------------------------------

def test_manifest_covers_the_frozen_vector_list() -> None:
    """Every synthetic vector of docs/05 s2 is present, with its frozen seed."""
    names = _names()
    for vdef in VECTOR_DEFS:
        assert vdef.name in names, f"vector {vdef.name} missing from the generated suite"
    entries = {e["name"]: e for e in _manifest()["vectors"]}
    for vdef in VECTOR_DEFS:
        assert entries[vdef.name]["seed"] == seed_for(vdef.name), vdef.name
    # docs/05 s2 requires >= 28 named vectors and >= 56 runs.
    assert len(names) >= 28, f"only {len(names)} vectors, docs/05 s2 requires >= 28"
    assert _manifest()["total_runs"] >= 56, _manifest()["total_runs"]


def test_every_vector_has_the_files_the_testbench_reads() -> None:
    """image.txt, one kernel per bank, config.json and both ReLU expectations."""
    for name in _names():
        vdir = VECTORS_DIR.joinpath(name)
        cfg = _config(name)
        assert vdir.joinpath("image.txt").is_file(), name
        assert vdir.joinpath("config.json").is_file(), name
        assert vdir.joinpath("stats.json").is_file(), name
        assert len(_image(name)) == SPEC.W
        for k in range(cfg["num_kernels"]):
            assert vdir.joinpath(f"kernel_b{k}.txt").is_file(), (name, k)
            assert len(_kernel(name, k)) == SPEC.TAPS
            for relu in (0, 1):
                got = _expected(name, k, relu)
                assert len(got) == SPEC.OUT_COUNT, (name, k, relu, len(got))


def test_expected_files_match_a_fresh_model_run() -> None:
    """Round-trip: reload the committed stimulus files and re-run the model.

    This is what makes the committed expectations trustworthy -- they are not
    merely whatever was in memory when they were written, they are reproducible
    from the very bytes the RTL testbench will read.
    """
    for name in _names():
        cfg = _config(name)
        image = _image(name)
        for k in range(cfg["num_kernels"]):
            coef = _kernel(name, k)
            for relu in (0, 1):
                want = _expected(name, k, relu)
                got = convolve(image, coef, cfg["shift"], relu, SPEC)
                assert got == want, f"{name} bank {k} relu {relu}: file disagrees with model"


def test_config_matches_the_frozen_geometry() -> None:
    for name in _names():
        cfg = _config(name)
        assert cfg["N"] == PARAMS.N and cfg["W"] == PARAMS.W_DEFAULT, name
        assert 0 <= cfg["shift"] <= PARAMS.SHIFT_MAX, name
        assert 1 <= cfg["num_kernels"] <= PARAMS.NUM_BANKS, name
        assert cfg["outputs_per_bank"] == SPEC.OUT_COUNT == 900, name
        assert cfg["relu_modes"] == [0, 1], name


# ---------------------------------------------------------------------------
# The directed vectors do what they are named for
# ---------------------------------------------------------------------------

def test_identity_kernel_reproduces_the_interior_bit_exactly() -> None:
    """PHASE 2 GATE: identity-kernel output equals the image interior, exactly."""
    image = _image("identity")
    assert _kernel("identity", 0) == IDENTITY
    want = [image[r + 1][c + 1]
            for r in range(SPEC.OUT_EDGE) for c in range(SPEC.OUT_EDGE)]
    assert _expected("identity", 0, 0) == want
    # With ReLU on, the interior is already non-negative, so nothing changes.
    assert _expected("identity", 0, 1) == want
    assert _stats("identity")["b0_relu0"]["sat_pos"] == 0
    assert _stats("identity")["b0_relu0"]["sat_neg"] == 0


def test_all_zero_image_produces_only_zeros() -> None:
    out = _expected("all_zero", 0, 0)
    assert set(out) == {0}
    s = _stats("all_zero")["b0_relu0"]
    assert s["acc_peak_abs"] == 0 and s["sat_pos"] == 0 and s["sat_neg"] == 0


def test_all_255_dc_gain() -> None:
    """Uniform 255 through an all-ones kernel: every output is 9*255 = 2295."""
    out = _expected("all_255", 0, 0)
    assert set(out) == {2295}, set(out)
    assert _stats("all_255")["b0_relu0"]["acc_peak_abs"] == 2295


def test_impulse_prints_the_mirrored_kernel() -> None:
    """Orientation check: the impulse response is the kernel, mirrored."""
    cfg = _config("impulse")
    assert cfg["num_kernels"] == 2
    image = _image("impulse")
    bright = [(r, c) for r in range(SPEC.W) for c in range(SPEC.W) if image[r][c] != 0]
    assert bright == [(15, 15)], bright

    # Bank 0 is the identity: a single 255 lands at output (14, 14).
    out0 = _expected("impulse", 0, 0)
    hot = [i for i, v in enumerate(out0) if v != 0]
    assert hot == [14 * SPEC.OUT_EDGE + 14], hot
    assert out0[hot[0]] == SPEC.PIX_MAX

    # Bank 1 is asymmetric: check the mirrored placement coefficient by
    # coefficient, which is what catches an r/c swap or an index reversal.
    coef = _kernel("impulse", 1)
    out1 = _expected("impulse", 1, 0)
    r0, c0 = 15, 15
    for i in range(SPEC.OUT_EDGE):
        for j in range(SPEC.OUT_EDGE):
            r, c = r0 - i, c0 - j
            inside = 0 <= r < SPEC.N and 0 <= c < SPEC.N
            want = SPEC.PIX_MAX * coef[r * SPEC.N + c] if inside else 0
            assert out1[i * SPEC.OUT_EDGE + j] == want, (i, j)


def test_horizontal_ramp_has_zero_vertical_gradient() -> None:
    """ramp_h varies with column only, so Sobel Gy must be exactly 0."""
    cfg = _config("ramp_h")
    gy_bank = [k for k in range(cfg["num_kernels"]) if _kernel("ramp_h", k) == SOBEL_GY]
    assert gy_bank, "ramp_h must include the Gy bank"
    assert set(_expected("ramp_h", gy_bank[0], 0)) == {0}


def test_vertical_ramp_has_zero_horizontal_gradient() -> None:
    """ramp_v varies with row only, so Sobel Gx must be exactly 0."""
    cfg = _config("ramp_v")
    gx_bank = [k for k in range(cfg["num_kernels"]) if _kernel("ramp_v", k) == SOBEL_GX]
    assert gx_bank, "ramp_v must include the Gx bank"
    assert set(_expected("ramp_v", gx_bank[0], 0)) == {0}


# ---------------------------------------------------------------------------
# Saturation and ReLU evidence (Phase 2 success criteria)
# ---------------------------------------------------------------------------

def test_positive_saturation_is_provably_triggered() -> None:
    """PHASE 2 GATE: at least one vector drives the positive rail."""
    s = _stats("sat_pos")["b0_relu0"]
    assert s["acc_max"] == PARAMS.N * PARAMS.N * 255 * 127 == 291465, s["acc_max"]
    assert s["sat_pos"] == SPEC.OUT_COUNT, s["sat_pos"]
    assert set(_expected("sat_pos", 0, 0)) == {PARAMS.OUT_MAX}


def test_negative_saturation_is_provably_triggered() -> None:
    """PHASE 2 GATE: at least one vector drives the negative rail."""
    s = _stats("sat_neg")["b0_relu0"]
    assert s["acc_min"] == -(PARAMS.N * PARAMS.N * 255 * 128) == -293760, s["acc_min"]
    assert s["sat_neg"] == SPEC.OUT_COUNT, s["sat_neg"]
    assert set(_expected("sat_neg", 0, 0)) == {PARAMS.OUT_MIN}


def test_relu_clipping_is_provably_exercised() -> None:
    """The same saturated stimulus with ReLU on must clip every output to 0."""
    assert set(_expected("sat_neg", 0, 1)) == {0}
    s = _stats("sat_neg")["b0_relu1"]
    assert s["relu_clips"] == SPEC.OUT_COUNT
    # Saturation still fires with ReLU enabled: the clamp happens first.
    assert s["sat_neg"] == SPEC.OUT_COUNT


def test_relu_never_produces_a_negative_output() -> None:
    """Across the entire suite, relu1 expectations are non-negative."""
    for name in _names():
        cfg = _config(name)
        for k in range(cfg["num_kernels"]):
            assert min(_expected(name, k, 1)) >= 0, (name, k)


def test_some_vector_has_negative_outputs_without_relu() -> None:
    """Guard against a suite that trivially satisfies the ReLU invariant."""
    assert any(min(_expected(n, 0, 0)) < 0 for n in _names())


# ---------------------------------------------------------------------------
# The width proof, empirically (Phase 2 -> Phase 3 hand-off)
# ---------------------------------------------------------------------------

def test_accumulator_never_exceeds_its_declared_width() -> None:
    """PHASE 2 GATE: |acc| <= 293760 < 2^19 everywhere in the suite."""
    bound = PARAMS.ACC_MAX_ABS
    capacity = 1 << (PARAMS.ACC_W - 1)
    peak = 0
    for name in _names():
        for key, s in _stats(name).items():
            assert s["acc_peak_abs"] <= bound, (name, key, s["acc_peak_abs"])
            assert s["acc_width_used"] <= s["acc_width_declared"], (name, key)
            peak = max(peak, s["acc_peak_abs"])
    assert peak <= bound < capacity
    print(f"    (observed suite-wide accumulator peak {peak} of bound {bound}, "
          f"capacity {capacity})")


def test_products_never_exceed_their_declared_width() -> None:
    for name in _names():
        for key, s in _stats(name).items():
            assert s["prod_peak_abs"] <= PARAMS.PIX_MAX * PARAMS.COEF_ABS_MAX
            assert s["prod_width_used"] <= s["prod_width_declared"], (name, key)


def test_every_output_fits_16_signed_bits() -> None:
    for name in _names():
        cfg = _config(name)
        for k in range(cfg["num_kernels"]):
            for relu in (0, 1):
                out = _expected(name, k, relu)
                assert PARAMS.OUT_MIN <= min(out) and max(out) <= PARAMS.OUT_MAX, (name, k)


# ---------------------------------------------------------------------------
# Config-space coverage of the suite
# ---------------------------------------------------------------------------

def test_suite_covers_every_shift_and_bank_count() -> None:
    shifts = {_config(n)["shift"] for n in _names()}
    banks = {_config(n)["num_kernels"] for n in _names()}
    assert {0, 4, 7} <= shifts, f"shift coverage {shifts}, docs/05 s2 requires 0/4/7"
    assert set(range(1, PARAMS.NUM_BANKS + 1)) <= banks, f"bank-count coverage {banks}"


def test_suite_covers_the_kernel_value_classes() -> None:
    """Zero, max-positive, max-negative and mixed kernels all appear."""
    seen = {"zero": False, "max_pos": False, "max_neg": False, "mixed": False}
    for name in _names():
        for k in range(_config(name)["num_kernels"]):
            coef = _kernel(name, k)
            if all(v == 0 for v in coef):
                seen["zero"] = True
            if any(v == PARAMS.COEF_ABS_MAX - 1 for v in coef):
                seen["max_pos"] = True
            if any(v == -PARAMS.COEF_ABS_MAX for v in coef):
                seen["max_neg"] = True
            if any(v > 0 for v in coef) and any(v < 0 for v in coef):
                seen["mixed"] = True
    # An all-zero kernel is not in the frozen fixture list; the other three are
    # the classes docs/05 s6 names for functional coverage.
    for cls in ("max_pos", "max_neg", "mixed"):
        assert seen[cls], f"no vector exercises the {cls} kernel class"


# ---------------------------------------------------------------------------
# Real-image family status
# ---------------------------------------------------------------------------

def test_real_family_is_absent_and_that_is_recorded() -> None:
    """The real-image family must be absent-and-flagged, never substituted.

    This test documents the open Phase 2 item rather than hiding it: it fails
    the moment someone quietly generates real_* from synthetic data, and it is
    replaced by a positive check once the assets land.
    """
    names = _names()
    present = [d.name for d in REAL_VECTOR_DEFS if d.name in names]
    manifest = _manifest()
    if present:
        assert manifest["real_family_included"] is True
        for name in present:
            assert _config(name)["asset"] is not None, name
    else:
        assert manifest["real_family_included"] is False, (
            "manifest claims the real family is included but no real_* vectors exist"
        )
        print("    (real_* family absent: blocked on source assets, docs/05 s2.3 / A9)")


# ---------------------------------------------------------------------------
# Runner
# ---------------------------------------------------------------------------

def main() -> int:
    tests = [(n, f) for n, f in sorted(globals().items())
             if n.startswith("test_") and callable(f)]
    failures = 0
    print(f"vector suite validation ({len(tests)} cases)")
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
