#!/usr/bin/env python3
"""Bit-accurate integer golden model for the SSCS-EDGE-CONV NxN convolution.

This is the arithmetic REFERENCE for the whole project. The RTL is correct if
and only if it is bit-exact against this file on every output pixel of every
vector (docs/03_fixed_point.md s5, docs/05_verification_plan.md).

Contract
--------
* **Integer only.** Every value is a Python ``int`` (arbitrary precision). There
  are no floats, no NumPy dtypes, and no division operator anywhere in this
  file. ``--self-audit`` proves that by walking this module own AST.
* **Never edited to agree with the RTL.** If model and RTL disagree,
  docs/03_fixed_point.md arbitrates.
* **Separable stages.** The six stages below map 1:1 onto the RTL pipeline
  stages, so a mismatch localizes to a stage instead of "somewhere in the
  pipeline" (docs/02_architecture.md s4-s6):

      1. extract_window   <-> line_window   (win[r][c] taps)
      2. multiply         <-> mac_array     (9s x 8s -> 17s products, 1 reg)
      3. accumulate_tree  <-> adder_tree    (exact 20s sum, 3 reg stages)
      4. round_half_up    <-> normalize     (round reg)
      5. saturate         <-> normalize     (saturate reg)
      6. relu             <-> normalize     (same reg, applied after saturate)

* **Parameterized.** Geometry (N, W) and every width come from ConvSpec, whose
  defaults are parsed from rtl/pkg_params.sv by model/pkg_params.py. No
  constant is duplicated here. Width formulas are functions of N so they can be
  shown to generalize (docs/assumptions.md A7); at N=3 they are asserted to
  reproduce the frozen package values exactly.

Data model
----------
image   list[list[int]], W rows x W cols, each in [0, 2**PIX_W - 1].
coef    list[int] of length N*N, index r*N + c pairs with win[r][c]
        (docs/04_interfaces.md s3), each in [-2**(COEF_W-1), 2**(COEF_W-1)-1].
out     list[int] of length (W-N+1)**2 in raster order, each in
        [-2**(OUT_W-1), 2**(OUT_W-1)-1].

Errors
------
Every public entry point validates types, ranges and shapes and raises
TypeError (wrong type: a NumPy scalar, a bool, a float) or ValueError (out of
range, wrong shape). Nothing is silently coerced -- a silent coercion in the
reference model is a wrong reference.

CLI (docs/05_verification_plan.md s1)
-------------------------------------
    python model/golden_conv.py --image f.txt --kernel k.txt --shift S
                                --relu 0 --out expected.txt
    python model/golden_conv.py --smoke        # 32x32 x 3x3 runnable example
    python model/golden_conv.py --self-audit   # prove: no floats, no division
"""

from __future__ import annotations

import argparse
import ast
import sys
from dataclasses import dataclass
from pathlib import Path
from typing import Iterator, Sequence

sys.path.insert(0, str(Path(__file__).resolve().parent))
from pkg_params import PARAMS  # noqa: E402  (path set above; single param source)

__all__ = [
    "ConvSpec", "ConvStats", "WindowTrace",
    "signed_width", "fits_signed",
    "extract_window", "zero_extend_pixel", "multiply", "accumulate_tree",
    "round_half_up", "saturate", "relu",
    "convolve", "convolve_traced", "iter_traces",
    "load_image_txt", "load_kernel_txt", "save_values_txt",
]


# ---------------------------------------------------------------------------
# 0. Integer hygiene -- the guards that keep this model a *reference*
# ---------------------------------------------------------------------------

def _check_int(value: object, what: str) -> int:
    """Return value if it is a true Python int, else raise TypeError.

    bool is rejected even though it subclasses int, and NumPy integer scalars
    are rejected because they carry a fixed width that would silently wrap.
    Callers holding NumPy data convert with .tolist() first
    (docs/05_verification_plan.md s1).
    """
    if isinstance(value, bool) or not isinstance(value, int):
        raise TypeError(
            f"{what} must be a Python int (integer-only model, "
            f"docs/03_fixed_point.md s5); got {type(value).__name__} {value!r}"
        )
    return value


def _check_range(value: int, lo: int, hi: int, what: str) -> int:
    if not lo <= value <= hi:
        raise ValueError(f"{what} = {value} outside [{lo}, {hi}]")
    return value


def signed_width(lo: int, hi: int) -> int:
    """Minimum two-complement signed bit width representing [lo, hi] exactly.

    The primitive behind every width derivation in docs/03_fixed_point.md
    s2-s3. Searching upward from 1 keeps it transparently correct rather than
    clever; widths here are always well under 64.
    """
    _check_int(lo, "lo")
    _check_int(hi, "hi")
    if lo > hi:
        raise ValueError(f"empty range [{lo}, {hi}]")
    width = 1
    while not (-(1 << (width - 1)) <= lo and hi <= (1 << (width - 1)) - 1):
        width += 1
    return width


def fits_signed(value: int, width: int) -> bool:
    """True if value is representable in `width` signed bits."""
    _check_int(value, "value")
    _check_int(width, "width")
    return -(1 << (width - 1)) <= value <= (1 << (width - 1)) - 1


def _ceil_log2(value: int) -> int:
    """ceil(log2(value)) for value >= 1, computed on integers only."""
    _check_int(value, "value")
    if value < 1:
        raise ValueError(f"_ceil_log2 requires value >= 1, got {value}")
    return (value - 1).bit_length()


# ---------------------------------------------------------------------------
# 1. Specification -- geometry and every width, derived, never duplicated
# ---------------------------------------------------------------------------

@dataclass(frozen=True)
class ConvSpec:
    """Geometry + fixed-point format. Attribute names match pkg_params.sv.

    N and W carry the meaning they have throughout docs/: kernel edge and image
    edge. Every other attribute is a bit width or a value bound.
    """

    N: int
    W: int
    PIX_W: int
    COEF_W: int
    OUT_W: int

    @classmethod
    def from_package(cls, N=None, W=None, PIX_W=None, COEF_W=None,
                     OUT_W=None) -> "ConvSpec":
        """Build a spec defaulting every field to rtl/pkg_params.sv.

        Overrides exist for the N/W generalization study (docs/assumptions.md
        A7) and are the only way a value other than the package default enters
        the model.
        """
        pkg_n, pkg_w, pkg_pix, pkg_coef, pkg_out = PARAMS.require(
            "N", "W_DEFAULT", "PIX_W", "COEF_W", "OUT_W"
        )
        spec = cls(
            N=pkg_n if N is None else _check_int(N, "N"),
            W=pkg_w if W is None else _check_int(W, "W"),
            PIX_W=pkg_pix if PIX_W is None else _check_int(PIX_W, "PIX_W"),
            COEF_W=pkg_coef if COEF_W is None else _check_int(COEF_W, "COEF_W"),
            OUT_W=pkg_out if OUT_W is None else _check_int(OUT_W, "OUT_W"),
        )
        spec.validate()
        return spec

    def validate(self) -> None:
        if self.N < 1:
            raise ValueError(f"N = {self.N} must be >= 1")
        if self.W < self.N:
            raise ValueError(f"W = {self.W} must be >= N = {self.N} (no padding, A3)")
        for name in ("PIX_W", "COEF_W", "OUT_W"):
            if getattr(self, name) < 2:
                raise ValueError(f"{name} = {getattr(self, name)} must be >= 2")

    # -- derived geometry ---------------------------------------------------

    @property
    def TAPS(self) -> int:
        """Number of multipliers / window taps: N*N."""
        return self.N * self.N

    @property
    def OUT_EDGE(self) -> int:
        """Output edge length W-N+1 (valid convolution, no padding -- A3)."""
        return self.W - self.N + 1

    @property
    def OUT_COUNT(self) -> int:
        """Outputs per frame per kernel bank: (W-N+1)**2."""
        return self.OUT_EDGE * self.OUT_EDGE

    # -- derived value ranges (docs/03_fixed_point.md s2) -------------------

    @property
    def PIX_MAX(self) -> int:
        return (1 << self.PIX_W) - 1

    @property
    def COEF_MAX(self) -> int:
        return (1 << (self.COEF_W - 1)) - 1

    @property
    def COEF_MIN(self) -> int:
        return -(1 << (self.COEF_W - 1))

    @property
    def PROD_MAX(self) -> int:
        """Largest reachable product: PIX_MAX * COEF_MAX."""
        return self.PIX_MAX * self.COEF_MAX

    @property
    def PROD_MIN(self) -> int:
        """Most negative reachable product: PIX_MAX * COEF_MIN."""
        return self.PIX_MAX * self.COEF_MIN

    @property
    def ACC_MAX(self) -> int:
        """Largest reachable accumulator value: N*N * PROD_MAX."""
        return self.TAPS * self.PROD_MAX

    @property
    def ACC_MIN(self) -> int:
        """Most negative reachable accumulator value: N*N * PROD_MIN."""
        return self.TAPS * self.PROD_MIN

    @property
    def OUT_MAX(self) -> int:
        return (1 << (self.OUT_W - 1)) - 1

    @property
    def OUT_MIN(self) -> int:
        return -(1 << (self.OUT_W - 1))

    # -- derived widths -----------------------------------------------------

    @property
    def PIXS_W(self) -> int:
        """Pixel zero-extended to signed: PIX_W + 1 (explicit in RTL)."""
        return self.PIX_W + 1

    @property
    def PROD_W(self) -> int:
        """Declared product width: the natural full-precision PIXS_W x COEF_W
        signed multiplier output. Exact for any operands, so it needs no range
        argument. PROD_W_MIN is the range-tightened alternative."""
        return self.PIXS_W + self.COEF_W

    @property
    def PROD_W_MIN(self) -> int:
        """Minimum product width justified by the reachable product range. One
        bit narrower than PROD_W because the zero-extended pixel operand is
        provably non-negative; quantified in the docs/03 minimization study."""
        return signed_width(self.PROD_MIN, self.PROD_MAX)

    @property
    def ACC_W(self) -> int:
        """Exact accumulator width from the reachable sum range -- the tight
        bound, not PROD_W + ceil(log2(N*N)). Proof: docs/03_fixed_point.md s3."""
        return signed_width(self.ACC_MIN, self.ACC_MAX)

    @property
    def ACC_W_NAIVE(self) -> int:
        """Conservative textbook bound PROD_W + ceil(log2(N*N)), kept for the
        report width-minimization comparison. Always >= ACC_W."""
        return self.PROD_W + _ceil_log2(self.TAPS)

    @property
    def TREE_LEVELS(self) -> int:
        """Pairwise-reduction levels for N*N terms: ceil(log2(N*N)).

        The RTL uses TREE_STAGES=3 *register* stages at N=3 by folding the last
        two levels into one combinational stage (docs/02_architecture.md s5);
        the values at every level are identical either way.
        """
        return _ceil_log2(self.TAPS)

    # -- cross-check against the frozen package -----------------------------

    def check_against_package(self) -> None:
        """At the package geometry every derived width must equal the frozen
        value in rtl/pkg_params.sv. This is what makes the N-generalized
        formulas trustworthy rather than merely plausible (A7)."""
        if (self.N, self.PIX_W, self.COEF_W) != (PARAMS.N, PARAMS.PIX_W, PARAMS.COEF_W):
            raise ValueError(
                "check_against_package() applies only to the package geometry "
                f"(N={PARAMS.N}, PIX_W={PARAMS.PIX_W}, COEF_W={PARAMS.COEF_W})"
            )
        expected = {
            "PIXS_W": PARAMS.PIXS_W, "PROD_W": PARAMS.PROD_W,
            "ACC_W": PARAMS.ACC_W, "OUT_W": PARAMS.OUT_W,
            "OUT_MAX": PARAMS.OUT_MAX, "OUT_MIN": PARAMS.OUT_MIN,
            "COEF_MAX": PARAMS.COEF_MAX, "COEF_MIN": PARAMS.COEF_MIN,
            "PIX_MAX": PARAMS.PIX_MAX,
            "TAPS": PARAMS.N * PARAMS.N,
        }
        for name, want in expected.items():
            got = getattr(self, name)
            if got != want:
                raise ValueError(
                    f"model {name} = {got} disagrees with "
                    f"rtl/pkg_params.sv {name} = {want}"
                )
        if max(self.ACC_MAX, -self.ACC_MIN) != PARAMS.ACC_MAX_ABS:
            raise ValueError("model accumulator bound disagrees with package ACC_MAX_ABS")

    def describe(self) -> str:
        return (
            f"ConvSpec(N={self.N}, W={self.W})  taps={self.TAPS}  "
            f"out={self.OUT_EDGE}x{self.OUT_EDGE}={self.OUT_COUNT}\n"
            f"  pixel    {self.PIX_W:>2}u  [0, {self.PIX_MAX}]\n"
            f"  coef     {self.COEF_W:>2}s  [{self.COEF_MIN}, {self.COEF_MAX}]\n"
            f"  pixel_s  {self.PIXS_W:>2}s  (explicit zero-extension)\n"
            f"  product  {self.PROD_W:>2}s  [{self.PROD_MIN}, {self.PROD_MAX}]"
            f"   (min sufficient {self.PROD_W_MIN}s)\n"
            f"  acc      {self.ACC_W:>2}s  [{self.ACC_MIN}, {self.ACC_MAX}]"
            f"   (naive bound {self.ACC_W_NAIVE}s, tree levels {self.TREE_LEVELS})\n"
            f"  output   {self.OUT_W:>2}s  [{self.OUT_MIN}, {self.OUT_MAX}]"
        )


DEFAULT_SPEC = ConvSpec.from_package()
DEFAULT_SPEC.check_against_package()


# ---------------------------------------------------------------------------
# 2. Input validation -- shape, type and range of the two operands
# ---------------------------------------------------------------------------

def validate_image(image: Sequence[Sequence[int]], spec: ConvSpec = DEFAULT_SPEC) -> None:
    """Check that image is a W x W grid of ints in [0, PIX_MAX]."""
    if len(image) != spec.W:
        raise ValueError(f"image has {len(image)} rows, expected W = {spec.W}")
    for r, row in enumerate(image):
        if len(row) != spec.W:
            raise ValueError(f"image row {r} has {len(row)} columns, expected {spec.W}")
        for c, px in enumerate(row):
            _check_int(px, f"image[{r}][{c}]")
            _check_range(px, 0, spec.PIX_MAX, f"image[{r}][{c}]")


def validate_kernel(coef: Sequence[int], spec: ConvSpec = DEFAULT_SPEC) -> None:
    """Check that coef is N*N ints in [COEF_MIN, COEF_MAX], index r*N + c."""
    if len(coef) != spec.TAPS:
        raise ValueError(f"kernel has {len(coef)} coefficients, expected N*N = {spec.TAPS}")
    for i, k in enumerate(coef):
        _check_int(k, f"coef[{i}]")
        _check_range(k, spec.COEF_MIN, spec.COEF_MAX, f"coef[{i}]")


def validate_config(shift: int, relu_en: int) -> None:
    """Check the two runtime config fields against docs/04_interfaces.md s1."""
    _check_int(shift, "shift")
    _check_range(shift, 0, PARAMS.SHIFT_MAX, "cfg_out_shift")
    _check_int(relu_en, "relu_en")
    _check_range(relu_en, 0, 1, "cfg_relu_en")


# ---------------------------------------------------------------------------
# 3. Stage 1 -- window extraction        (RTL: line_window)
# ---------------------------------------------------------------------------

def extract_window(
    image: Sequence[Sequence[int]],
    out_row: int,
    out_col: int,
    spec: ConvSpec = DEFAULT_SPEC,
) -> list[list[int]]:
    """Return the N x N window whose result lands at output (out_row, out_col).

    Orientation is the one frozen in docs/02_architecture.md s2:
    ``win[r][c] = image[current_row-(N-1-r)][current_col-(N-1-c)]`` where
    (current_row, current_col) is the newest pixel of the window. With no
    padding (A3) the newest pixel of output (i, j) is image[i+N-1][j+N-1], so
    this reduces to ``win[r][c] = image[out_row + r][out_col + c]``:
    ``win[0][0]`` is the oldest pixel / window top-left and ``win[N-1][N-1]``
    the newest / bottom-right. Getting this backwards is exactly what the
    ``impulse`` vector is designed to catch.
    """
    _check_int(out_row, "out_row")
    _check_int(out_col, "out_col")
    _check_range(out_row, 0, spec.OUT_EDGE - 1, "out_row")
    _check_range(out_col, 0, spec.OUT_EDGE - 1, "out_col")
    return [
        [image[out_row + r][out_col + c] for c in range(spec.N)]
        for r in range(spec.N)
    ]


# ---------------------------------------------------------------------------
# 4. Stage 2 -- zero-extend and multiply  (RTL: mac_array, 1 register stage)
# ---------------------------------------------------------------------------

def zero_extend_pixel(px: int, spec: ConvSpec = DEFAULT_SPEC) -> int:
    """Widen an unsigned PIX_W pixel to a signed PIXS_W value.

    Numerically the identity on a non-negative int; it exists as a named stage
    because the RTL does it explicitly (``signed'({1'b0, win})``) rather than
    relying on signed/unsigned inference (docs/03_fixed_point.md s2). Keeping
    the stage here means the model and the RTL have the same seams.
    """
    _check_int(px, "px")
    _check_range(px, 0, spec.PIX_MAX, "px")
    value = px
    if not fits_signed(value, spec.PIXS_W):
        raise ValueError(f"zero-extended pixel {value} does not fit {spec.PIXS_W}s")
    return value


def multiply(
    win: Sequence[Sequence[int]],
    coef: Sequence[int],
    spec: ConvSpec = DEFAULT_SPEC,
) -> list[int]:
    """N*N products, index r*N + c, each asserted to fit PROD_W signed bits.

    ``coef[r*N+c]`` multiplies ``win[r][c]`` (docs/04_interfaces.md s3).
    """
    prod: list[int] = []
    for r in range(spec.N):
        for c in range(spec.N):
            p = zero_extend_pixel(win[r][c], spec) * coef[r * spec.N + c]
            if not fits_signed(p, spec.PROD_W):
                raise ValueError(
                    f"product {p} at tap ({r},{c}) does not fit PROD_W = "
                    f"{spec.PROD_W}s -- the width proof in docs/03 s3 is violated"
                )
            prod.append(p)
    return prod


# ---------------------------------------------------------------------------
# 5. Stage 3 -- exact adder tree          (RTL: adder_tree, 3 register stages)
# ---------------------------------------------------------------------------

def accumulate_tree(
    prod: Sequence[int],
    spec: ConvSpec = DEFAULT_SPEC,
) -> tuple[int, list[list[int]]]:
    """Reduce N*N products to one exact sum, returning every level.

    Topology matches docs/02_architecture.md s5: at each level adjacent terms
    are paired and an odd trailing term rides an **alignment register** so all
    terms see equal latency. For N=3 the levels are

        level 0: 9 products
        level 1: p0+p1  p2+p3  p4+p5  p6+p7  [p8 aligned]      -> 5 terms
        level 2: s0+s1  s2+s3               [p8 aligned]       -> 3 terms
        level 3: t0+t1                      [p8 aligned]       -> 2 terms
        level 4: (t0+t1) + p8                                  -> 1 term (acc)

    The RTL spends three *register* stages on this: RTL stage 1 = level 1,
    stage 2 = level 2, stage 3 = levels 3 and 4 combined combinationally
    (see RTL_STAGE_LEVELS). Values are identical either way -- integer addition
    is associative and every level is exact, so no grouping can change the sum.

    Returns ``(acc, levels)`` where ``levels[0]`` is the product list and
    ``levels[-1]`` is ``[acc]``. The levels are the debugging instrument the
    Phase 5 scoreboard uses to localize a mismatch to a tree stage.
    """
    if len(prod) != spec.TAPS:
        raise ValueError(f"expected {spec.TAPS} products, got {len(prod)}")
    levels: list[list[int]] = [list(prod)]
    terms = list(prod)
    while len(terms) > 1:
        nxt: list[int] = []
        for i in range(0, len(terms) - 1, 2):
            nxt.append(terms[i] + terms[i + 1])
        if len(terms) % 2 == 1:            # odd term rides the alignment register
            nxt.append(terms[-1])
        terms = nxt
        levels.append(list(terms))
    acc = terms[0]
    if not fits_signed(acc, spec.ACC_W):
        raise ValueError(
            f"accumulator {acc} does not fit ACC_W = {spec.ACC_W}s -- the "
            "exactness proof in docs/03_fixed_point.md s3 is violated"
        )
    return acc, levels


#: Which model tree levels the three RTL register stages expose, at N=3
#: (docs/02_architecture.md s5). Used by the Phase 5 stage-by-stage scoreboard.
RTL_STAGE_LEVELS: tuple[int, int, int] = (1, 2, 4)


# ---------------------------------------------------------------------------
# 6. Stages 4-6 -- round, saturate, activate   (RTL: normalize, 2 reg stages)
# ---------------------------------------------------------------------------

def round_half_up(acc: int, shift: int, spec: ConvSpec = DEFAULT_SPEC) -> int:
    """Round-half-up arithmetic right shift by ``shift`` (docs/03 s4 step 1).

    ``shift == 0`` passes the value through untouched. Otherwise the value is
    offset by ``+2**(shift-1)`` and arithmetically shifted right; Python ``>>``
    on a negative int floors, which is exactly what the RTL ``>>>`` on a signed
    value does, so ties round toward +infinity in both. No division operator is
    involved anywhere.
    """
    _check_int(acc, "acc")
    _check_int(shift, "shift")
    _check_range(shift, 0, PARAMS.SHIFT_MAX, "shift")
    if not fits_signed(acc, spec.ACC_W):
        raise ValueError(f"acc {acc} does not fit ACC_W = {spec.ACC_W}s")
    if shift == 0:
        return acc
    return (acc + (1 << (shift - 1))) >> shift


def saturate(value: int, spec: ConvSpec = DEFAULT_SPEC) -> tuple[int, int]:
    """Symmetric clamp into OUT_W signed bits (docs/03 s4 step 2).

    Returns ``(clamped, sat_flag)``; ``sat_flag`` is 1 exactly when the clamp
    changed the value, mirroring the RTL ``sat_flag`` output pulse.
    """
    _check_int(value, "value")
    if value > spec.OUT_MAX:
        return spec.OUT_MAX, 1
    if value < spec.OUT_MIN:
        return spec.OUT_MIN, 1
    return value, 0


def relu(value: int, relu_en: int) -> tuple[int, int]:
    """Optional ReLU applied **after** saturation (docs/03 s4 step 3).

    Order is fixed as saturate -> ReLU in both model and RTL so bit-exactness
    is unambiguous. Returns ``(result, clipped)``.
    """
    _check_int(value, "value")
    _check_range(_check_int(relu_en, "relu_en"), 0, 1, "relu_en")
    if relu_en == 1 and value < 0:
        return 0, 1
    return value, 0


# ---------------------------------------------------------------------------
# 7. Per-output trace -- the Phase 5 debugging instrument
# ---------------------------------------------------------------------------

@dataclass(frozen=True)
class WindowTrace:
    """Every intermediate for one output pixel, stage by stage."""

    index: int                       # raster index into the output frame
    out_row: int
    out_col: int
    win: tuple[tuple[int, ...], ...]  # win[r][c]
    prod: tuple[int, ...]             # index r*N + c
    levels: tuple[tuple[int, ...], ...]
    acc: int
    rounded: int
    saturated: int
    sat_flag: int
    relu_clipped: int
    out: int

    def rtl_stages(self) -> tuple[int, ...]:
        """The three adder-tree values an RTL waveform exposes (N=3 only)."""
        return tuple(sum(self.levels[lvl]) for lvl in RTL_STAGE_LEVELS)

    def report(self) -> str:
        """Human-readable dump used when the scoreboard reports a mismatch."""
        rows = [f"    win[{r}] = {list(row)}" for r, row in enumerate(self.win)]
        lvls = [f"    level {i}: {list(v)}" for i, v in enumerate(self.levels)]
        return "\n".join(
            [
                f"output[{self.index}] at (row {self.out_row}, col {self.out_col})",
                *rows,
                f"    prod   = {list(self.prod)}",
                *lvls,
                f"    acc={self.acc}  rounded={self.rounded}  "
                f"saturated={self.saturated} (sat_flag={self.sat_flag})  "
                f"relu_clipped={self.relu_clipped}  out={self.out}",
            ]
        )


def compute_output(
    image: Sequence[Sequence[int]],
    coef: Sequence[int],
    out_row: int,
    out_col: int,
    shift: int = 0,
    relu_en: int = 0,
    spec: ConvSpec = DEFAULT_SPEC,
) -> WindowTrace:
    """Run all six stages for one output pixel and return the full trace.

    This is the single arithmetic code path in the model: :func:`convolve` and
    :func:`iter_traces` both go through it, so the traced and untraced results
    can never drift apart.
    """
    win = extract_window(image, out_row, out_col, spec)
    prod = multiply(win, coef, spec)
    acc, levels = accumulate_tree(prod, spec)
    rounded = round_half_up(acc, shift, spec)
    saturated, sat_flag = saturate(rounded, spec)
    out, clipped = relu(saturated, relu_en)
    return WindowTrace(
        index=out_row * spec.OUT_EDGE + out_col,
        out_row=out_row,
        out_col=out_col,
        win=tuple(tuple(row) for row in win),
        prod=tuple(prod),
        levels=tuple(tuple(v) for v in levels),
        acc=acc,
        rounded=rounded,
        saturated=saturated,
        sat_flag=sat_flag,
        relu_clipped=clipped,
        out=out,
    )


def iter_traces(
    image: Sequence[Sequence[int]],
    coef: Sequence[int],
    shift: int = 0,
    relu_en: int = 0,
    spec: ConvSpec = DEFAULT_SPEC,
    validate: bool = True,
) -> Iterator[WindowTrace]:
    """Yield a :class:`WindowTrace` per output pixel, in raster order."""
    if validate:
        validate_image(image, spec)
        validate_kernel(coef, spec)
        validate_config(shift, relu_en)
    for out_row in range(spec.OUT_EDGE):
        for out_col in range(spec.OUT_EDGE):
            yield compute_output(image, coef, out_row, out_col, shift, relu_en, spec)


# ---------------------------------------------------------------------------
# 8. Diagnostics -- the per-vector baseline statistics of docs/03 and Phase 2
# ---------------------------------------------------------------------------

@dataclass(frozen=True)
class ConvStats:
    """Secondary diagnostics recorded per vector. Never a pass/fail criterion --
    the only pass criterion is bit-exactness (docs/05_verification_plan.md)."""

    outputs: int
    out_min: int
    out_max: int
    acc_min: int
    acc_max: int
    acc_peak_abs: int
    acc_width_used: int          # signed_width of the observed acc range
    acc_width_declared: int      # spec.ACC_W
    prod_peak_abs: int
    prod_width_used: int
    prod_width_declared: int
    level_peaks: tuple[int, ...]  # peak |value| observed at each tree level
    sat_pos: int
    sat_neg: int
    relu_clips: int

    @property
    def sat_events(self) -> int:
        return self.sat_pos + self.sat_neg

    @property
    def acc_headroom_bits(self) -> int:
        """Declared minus used accumulator bits: 0 means the width is tight."""
        return self.acc_width_declared - self.acc_width_used

    def as_row(self, name: str) -> str:
        return (
            f"{name:<16} {self.outputs:>7} {self.out_min:>8} {self.out_max:>8} "
            f"{self.acc_peak_abs:>10} {self.acc_width_used:>4}/{self.acc_width_declared:<3} "
            f"{self.sat_pos:>6} {self.sat_neg:>6} {self.relu_clips:>7}"
        )

    @staticmethod
    def header() -> str:
        return (
            f"{'VECTOR':<16} {'OUTPUTS':>7} {'OUT_MIN':>8} {'OUT_MAX':>8} "
            f"{'ACC_PEAK':>10} {'ACCW':>8} {'SAT+':>6} {'SAT-':>6} {'RELUCLIP':>7}"
        )


# ---------------------------------------------------------------------------
# 9. Top-level convolution
# ---------------------------------------------------------------------------

def convolve(
    image: Sequence[Sequence[int]],
    coef: Sequence[int],
    shift: int = 0,
    relu_en: int = 0,
    spec: ConvSpec = DEFAULT_SPEC,
) -> list[int]:
    """Convolve ``image`` with ``coef``; return (W-N+1)**2 ints in raster order.

    Stride 1, no padding (A3): output (i, j) uses the window with top-left at
    image[i][j]. This is the function the RTL must match bit-for-bit.
    """
    return [t.out for t in iter_traces(image, coef, shift, relu_en, spec)]


def convolve_traced(
    image: Sequence[Sequence[int]],
    coef: Sequence[int],
    shift: int = 0,
    relu_en: int = 0,
    spec: ConvSpec = DEFAULT_SPEC,
) -> tuple[list[int], ConvStats]:
    """Convolve and collect the per-vector diagnostics of :class:`ConvStats`."""
    out: list[int] = []
    acc_min = acc_max = None
    prod_peak = 0
    level_peaks: list[int] = []
    sat_pos = sat_neg = relu_clips = 0

    for t in iter_traces(image, coef, shift, relu_en, spec):
        out.append(t.out)
        acc_min = t.acc if acc_min is None else min(acc_min, t.acc)
        acc_max = t.acc if acc_max is None else max(acc_max, t.acc)
        prod_peak = max(prod_peak, max(abs(p) for p in t.prod))
        if not level_peaks:
            level_peaks = [0] * len(t.levels)
        for i, lvl in enumerate(t.levels):
            level_peaks[i] = max(level_peaks[i], max(abs(v) for v in lvl))
        if t.sat_flag == 1:
            if t.saturated == spec.OUT_MAX:
                sat_pos += 1
            else:
                sat_neg += 1
        relu_clips += t.relu_clipped

    if not out:
        raise ValueError("no outputs produced -- check W >= N")

    return out, ConvStats(
        outputs=len(out),
        out_min=min(out),
        out_max=max(out),
        acc_min=acc_min,
        acc_max=acc_max,
        acc_peak_abs=max(abs(acc_min), abs(acc_max)),
        acc_width_used=signed_width(acc_min, acc_max),
        acc_width_declared=spec.ACC_W,
        prod_peak_abs=prod_peak,
        prod_width_used=signed_width(-prod_peak, prod_peak),
        prod_width_declared=spec.PROD_W,
        level_peaks=tuple(level_peaks),
        sat_pos=sat_pos,
        sat_neg=sat_neg,
        relu_clips=relu_clips,
    )


# ---------------------------------------------------------------------------
# 10. File I/O -- the formats the RTL testbench consumes
#     (docs/05_verification_plan.md s1: one decimal value per line, raster order)
# ---------------------------------------------------------------------------

def _isqrt_exact(value: int, what: str) -> int:
    """Integer square root, raising unless ``value`` is a perfect square."""
    _check_int(value, what)
    if value < 0:
        raise ValueError(f"{what} = {value} is negative")
    root = 0
    while (root + 1) * (root + 1) <= value:
        root += 1
    if root * root != value:
        raise ValueError(f"{what} = {value} is not a perfect square")
    return root


def _read_ints(path: Path | str, what: str) -> list[int]:
    """Read one decimal integer per line; blank lines and # comments ignored."""
    path = Path(path)
    if not path.is_file():
        raise ValueError(f"{what} file not found: {path}")
    values: list[int] = []
    for lineno, raw in enumerate(path.read_text(encoding="utf-8").splitlines(), 1):
        line = raw.split("#", 1)[0].strip()
        if not line:
            continue
        try:
            values.append(int(line, 10))
        except ValueError:
            raise ValueError(
                f"{path}:{lineno}: {line!r} is not a decimal integer "
                "(the vector format is integer-only)"
            ) from None
    if not values:
        raise ValueError(f"{path}: no values found")
    return values


def load_image_txt(path: Path | str, spec: ConvSpec | None = None) -> tuple[list[list[int]], ConvSpec]:
    """Load a flat raster image file, inferring W from the line count.

    Returns ``(image, spec)``. When ``spec`` is given its W must match the file;
    otherwise a spec with the inferred W is derived from the package defaults.
    """
    flat = _read_ints(path, "image")
    edge = _isqrt_exact(len(flat), f"image line count in {path}")
    if spec is None:
        spec = ConvSpec.from_package(W=edge)
    elif spec.W != edge:
        raise ValueError(f"{path} holds a {edge}x{edge} image but spec.W = {spec.W}")
    image = [flat[r * edge:(r + 1) * edge] for r in range(edge)]
    validate_image(image, spec)
    return image, spec


def load_kernel_txt(path: Path | str, spec: ConvSpec | None = None) -> tuple[list[int], ConvSpec]:
    """Load an N*N coefficient file, inferring N from the line count."""
    coef = _read_ints(path, "kernel")
    n = _isqrt_exact(len(coef), f"kernel line count in {path}")
    if spec is None:
        spec = ConvSpec.from_package(N=n)
    elif spec.N != n:
        raise ValueError(f"{path} holds a {n}x{n} kernel but spec.N = {spec.N}")
    validate_kernel(coef, spec)
    return coef, spec


def save_values_txt(path: Path | str, values: Sequence[int]) -> None:
    """Write one decimal integer per line (the expected-output file format)."""
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    for i, v in enumerate(values):
        _check_int(v, f"value[{i}]")
    path.write_text("\n".join(str(v) for v in values) + "\n", encoding="utf-8")


# ---------------------------------------------------------------------------
# 11. Self-audit -- prove the integer-only claim instead of asserting it
# ---------------------------------------------------------------------------

_AUDIT_FILES = ("golden_conv.py", "pkg_params.py", "gen_vectors.py")
_BANNED_NAMES = frozenset({"float", "complex", "round"})
_BANNED_MODULES = frozenset({"numpy", "math", "decimal", "fractions", "statistics"})


def self_audit(paths: Sequence[Path] | None = None) -> list[str]:
    """Walk the model source and report anything that could introduce a float.

    Checks, per file: no float or complex literals; no ``/`` (true division)
    operator, which is the one arithmetic operator in Python that turns ints
    into floats; no import of a module that trades in floats; no call to
    ``float()``/``complex()``/``round()``. Returns a list of findings -- empty
    means the integer-only claim of docs/03_fixed_point.md s5 holds
    structurally, not just by inspection.
    """
    here = Path(__file__).resolve().parent
    targets = ([here.joinpath(name) for name in _AUDIT_FILES]
               if paths is None else [Path(p) for p in paths])
    findings: list[str] = []

    for target in targets:
        if not target.is_file():
            findings.append(f"{target}: file not found")
            continue
        tree = ast.parse(target.read_text(encoding="utf-8"), filename=str(target))
        for node in ast.walk(tree):
            loc = f"{target.name}:{getattr(node, 'lineno', 0)}"
            if isinstance(node, ast.Constant) and isinstance(node.value, (float, complex)):
                findings.append(f"{loc}: float/complex literal {node.value!r}")
            elif isinstance(node, ast.BinOp) and isinstance(node.op, ast.Div):
                findings.append(f"{loc}: true-division operator")
            elif isinstance(node, ast.AugAssign) and isinstance(node.op, ast.Div):
                findings.append(f"{loc}: true-division assignment")
            elif isinstance(node, ast.Import):
                for alias in node.names:
                    if alias.name.split(".")[0] in _BANNED_MODULES:
                        findings.append(f"{loc}: imports {alias.name}")
            elif isinstance(node, ast.ImportFrom):
                if (node.module or "").split(".")[0] in _BANNED_MODULES:
                    findings.append(f"{loc}: imports from {node.module}")
            elif isinstance(node, ast.Call) and isinstance(node.func, ast.Name):
                if node.func.id in _BANNED_NAMES:
                    findings.append(f"{loc}: calls {node.func.id}()")
    return findings


def runtime_dtype_check(spec: ConvSpec = DEFAULT_SPEC) -> None:
    """Assert at runtime that every produced value is a true Python int."""
    image = [[(r * spec.W + c) % (spec.PIX_MAX + 1) for c in range(spec.W)]
             for r in range(spec.W)]
    coef = [spec.COEF_MIN if i % 2 == 0 else spec.COEF_MAX for i in range(spec.TAPS)]
    trace = compute_output(image, coef, 0, 0, shift=3, relu_en=0, spec=spec)
    for name, value in (
        ("acc", trace.acc), ("rounded", trace.rounded),
        ("saturated", trace.saturated), ("out", trace.out),
    ):
        if isinstance(value, bool) or not isinstance(value, int):
            raise TypeError(f"{name} is {type(value).__name__}, expected int")
    for value in convolve(image, coef, 3, 1, spec):
        if isinstance(value, bool) or not isinstance(value, int):
            raise TypeError(f"output value is {type(value).__name__}, expected int")


# ---------------------------------------------------------------------------
# 12. Smoke example and CLI
# ---------------------------------------------------------------------------

def smoke(spec: ConvSpec = DEFAULT_SPEC) -> ConvStats:
    """Runnable example: a W x W ramp image through a Sobel Gx kernel.

    Prints the spec, the statistics, and the full stage trace of output 0 so a
    reader can follow one number end to end through the pipeline.
    """
    image = [[(r + c) % (spec.PIX_MAX + 1) for c in range(spec.W)] for r in range(spec.W)]
    # Sobel Gx, index r*N + c. Only meaningful at N=3; for other N use a
    # centre-weighted ramp so the smoke still exercises signed coefficients.
    if spec.N == 3:
        coef = [1, 0, -1, 2, 0, -2, 1, 0, -1]
    else:
        coef = [((i % spec.N) - (spec.N >> 1)) for i in range(spec.TAPS)]

    out, stats = convolve_traced(image, coef, shift=0, relu_en=0, spec=spec)
    print(spec.describe())
    print()
    print("kernel (r*N+c order):", coef)
    print()
    print(ConvStats.header())
    print(stats.as_row("smoke_ramp"))
    print()
    print("stage trace of the first output pixel:")
    first = compute_output(image, coef, 0, 0, 0, 0, spec)
    print(first.report())
    print()
    print(f"outputs = {len(out)} (expected {spec.OUT_COUNT})")
    print(f"first 8 outputs: {out[:8]}")
    return stats


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Bit-accurate integer golden model for NxN convolution.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    parser.add_argument("--image", help="flat raster image file, one pixel per line")
    parser.add_argument("--kernel", help="N*N coefficient file, index r*N+c, one per line")
    parser.add_argument("--shift", type=int, default=0,
                        help=f"cfg_out_shift, 0..{PARAMS.SHIFT_MAX} (default 0)")
    parser.add_argument("--relu", type=int, default=0, choices=(0, 1),
                        help="cfg_relu_en (default 0)")
    parser.add_argument("--out", help="expected-output file to write")
    parser.add_argument("--stats", action="store_true", help="print per-vector diagnostics")
    parser.add_argument("--trace", type=int, metavar="INDEX",
                        help="print the full stage trace of one output index")
    parser.add_argument("--smoke", action="store_true", help="run the built-in example")
    parser.add_argument("--self-audit", action="store_true",
                        help="prove no floats/division exist in the model source")
    parser.add_argument("--spec", action="store_true", help="print the derived spec and exit")
    parser.add_argument("--N", type=int, help="override N (generalization study, A7)")
    parser.add_argument("--W", type=int, help="override W")
    args = parser.parse_args(argv)

    if args.self_audit:
        findings = self_audit()
        runtime_dtype_check()
        if findings:
            print("SELF-AUDIT FAIL")
            for f in findings:
                print(f"  {f}")
            return 1
        files = ", ".join(_AUDIT_FILES)
        print(f"SELF-AUDIT PASS: no float/complex literals, no division operator,")
        print(f"  no float-bearing imports, no float()/complex()/round() calls in {files};")
        print("  runtime dtype check confirms every produced value is a Python int.")
        return 0

    spec = ConvSpec.from_package(N=args.N, W=args.W)

    if args.spec:
        print(spec.describe())
        return 0

    if args.smoke:
        smoke(spec)
        return 0

    if not args.image or not args.kernel:
        parser.error("--image and --kernel are required (or use --smoke/--spec/--self-audit)")

    coef, spec = load_kernel_txt(args.kernel, None if args.N is None else spec)
    if args.W is not None:
        spec = ConvSpec.from_package(N=spec.N, W=args.W)
    image, spec = load_image_txt(args.image, None if args.W is None else spec)
    coef, _ = load_kernel_txt(args.kernel, spec)

    out, stats = convolve_traced(image, coef, args.shift, args.relu, spec)

    if args.out:
        save_values_txt(args.out, out)
        print(f"wrote {len(out)} values to {args.out}")
    else:
        for value in out:
            print(value)

    if args.stats:
        print(ConvStats.header(), file=sys.stderr)
        print(stats.as_row(Path(args.image).stem), file=sys.stderr)

    if args.trace is not None:
        _check_range(args.trace, 0, spec.OUT_COUNT - 1, "--trace index")
        row, col = divmod(args.trace, spec.OUT_EDGE)
        print(compute_output(image, coef, row, col, args.shift, args.relu, spec).report(),
              file=sys.stderr)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
