#!/usr/bin/env python3
"""Width-sufficiency proof, minimization study and rounding tradeoff (Phase 3).

There is no float-to-fixed conversion in this design -- the model is integer by
construction -- so the fixed-point phase is instead a proof that every declared
width is *sufficient*, a check that none is *wastefully oversized*, and the
rounding-policy tradeoff the report requires.

Four independent pieces of evidence, all produced by running this file:

  1. **Analytic derivation.** Every width from first principles, as a closed
     form in N and the operand widths (section `derivation`).
  2. **Empirical ranges.** The observed min/max of every intermediate node over
     the entire Phase 2 vector suite, against its declared width (`empirical`).
  3. **Rounding vs truncation.** Bias and worst-case deviation of both policies
     measured against the exact rational quotient, over every run in the suite
     with a nonzero shift (`rounding`).
  4. **Generalization.** The same formulas re-derived and re-driven at N=3/5 and
     W=32/64, with worst-case stimulus, to show they are formulas and not
     constants that happen to be right at N=3 (`generalize`).

    python model/width_study.py              # everything, as markdown
    python model/width_study.py --section rounding
    python model/width_study.py --quick      # skip the full-suite sweep

Integer-only, like the model: biases are reported as exact fractions and as
scaled integers (milli-LSB) rather than as floating-point averages.
"""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path
from typing import Sequence

sys.path.insert(0, str(Path(__file__).resolve().parent))

from gen_vectors import VECTORS_DIR  # noqa: E402
from golden_conv import (  # noqa: E402
    ConvSpec,
    accumulate_tree,
    extract_window,
    multiply,
    round_half_up,
    saturate,
    signed_width,
)
from golden_conv import load_image_txt, load_kernel_txt  # noqa: E402
from pkg_params import PARAMS  # noqa: E402

SPEC = ConvSpec.from_package()


# ---------------------------------------------------------------------------
# 1. Analytic derivation
# ---------------------------------------------------------------------------

def section_derivation(spec: ConvSpec = SPEC) -> str:
    """Every width as a closed form, with the reachable range that justifies it."""
    lines = [
        "### Analytic derivation (first principles)",
        "",
        "Every width below is a closed form in N, `PIX_W` and `COEF_W`. None is a",
        "literal: `rtl/pkg_params.sv` computes them with the same expressions, and",
        "`ConvSpec.check_against_package()` fails the build if the two ever disagree.",
        "",
        "| Node | Closed form | Reachable range | Minimum signed width | Declared |",
        "|---|---|---|---|---|",
    ]

    rows = [
        ("pixel `px_data`", "unsigned `PIX_W`",
         f"[0, 2^PIX_W - 1] = [0, {spec.PIX_MAX}]", spec.PIX_W, spec.PIX_W, "u"),
        ("zero-extended pixel", "`PIX_W + 1` signed",
         f"[0, {spec.PIX_MAX}]", spec.PIXS_W, spec.PIXS_W, "s"),
        ("coefficient `kl_coef`", "signed `COEF_W`",
         f"[{spec.COEF_MIN}, {spec.COEF_MAX}]", spec.COEF_W, spec.COEF_W, "s"),
        ("product `prod`", "`(PIX_W+1) + COEF_W`",
         f"[{spec.PROD_MIN}, {spec.PROD_MAX}]", spec.PROD_W_MIN, spec.PROD_W, "s"),
    ]

    # Tree levels: level k sums 2**k products (the alignment path carries fewer,
    # which only ever makes the range smaller).
    terms = spec.TAPS
    level = 0
    while terms > 1:
        level += 1
        summed = min(1 << level, spec.TAPS)
        lo, hi = summed * spec.PROD_MIN, summed * spec.PROD_MAX
        declared = {1: PARAMS.T1_W, 2: PARAMS.T2_W}.get(level, spec.ACC_W)
        # At N=3 the RTL registers levels 1 and 2 (T1_W, T2_W) and folds levels
        # 3 and 4 into one combinational stage feeding the acc register, so
        # level 3 has no declared width of its own -- it is carried in the
        # ACC_W-wide adder (docs/02_architecture.md s5).
        rtl = {1: "RTL stage 1 reg", 2: "RTL stage 2 reg"}.get(
            level, "RTL stage 3 (comb)" if level < spec.TREE_LEVELS else "RTL stage 3 reg"
        )
        rows.append((
            f"tree level {level} ({summed} terms, {rtl})",
            f"width of {summed} x product range",
            f"[{lo}, {hi}]", signed_width(lo, hi), declared, "s",
        ))
        terms = (terms + 1) >> 1

    rows.append((
        "accumulator `acc`", "width of N^2 x product range",
        f"[{spec.ACC_MIN}, {spec.ACC_MAX}]", spec.ACC_W, spec.ACC_W, "s",
    ))
    rows.append((
        "output `out_data`", "mandated by the interface",
        f"[{spec.OUT_MIN}, {spec.OUT_MAX}]", spec.OUT_W, spec.OUT_W, "s",
    ))

    for name, form, rng, minimum, declared, sign in rows:
        slack = declared - minimum
        note = f"{declared}{sign}" + ("" if slack == 0 else f" (+{slack})")
        lines.append(f"| {name} | {form} | {rng} | {minimum}{sign} | **{note}** |")

    lines += [
        "",
        f"**Accumulator exactness.** The largest magnitude reachable anywhere in the",
        f"tree is `N^2 x PIX_MAX x 2^(COEF_W-1)` = "
        f"{spec.TAPS} x {spec.PIX_MAX} x {1 << (spec.COEF_W - 1)} = "
        f"{-spec.ACC_MIN}, and "
        f"{-spec.ACC_MIN} < 2^{spec.ACC_W - 1} = {1 << (spec.ACC_W - 1)}. A "
        f"{spec.ACC_W}-bit signed accumulator therefore represents every reachable",
        "sum exactly: no overflow, wrap or precision loss can occur anywhere inside",
        "the convolution. The only lossy operations in the datapath are the two",
        "deliberate ones -- the round-half-up shift and the saturating clamp.",
        "",
        "**Where the declared widths carry slack.** `ACC_W` is tight: 19 bits could",
        f"not hold {-spec.ACC_MIN}. The product and the intermediate tree levels each",
        "carry exactly one spare bit, because they are declared by the conservative",
        "*add one bit per addition* rule rather than from the reachable range. That",
        "spare bit exists because the zero-extended pixel operand is provably",
        "non-negative, so the product can never reach the most negative value a",
        "signed `PROD_W` multiplier could express. Keeping it is deliberate: the",
        "declared widths are then exact for *any* operands, which is a much easier",
        "property to maintain than one that depends on an operand-sign argument, and",
        "synthesis range-propagation prunes the unreachable bit anyway. The Phase 6",
        "utilization report is where that last claim gets checked against the tool.",
    ]
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# 2. Empirical ranges over the whole Phase 2 suite
# ---------------------------------------------------------------------------

class _Range:
    """Running signed min/max of one intermediate node."""

    __slots__ = ("lo", "hi")

    def __init__(self) -> None:
        self.lo: int | None = None
        self.hi: int | None = None

    def add(self, value: int) -> None:
        if self.lo is None or value < self.lo:
            self.lo = value
        if self.hi is None or value > self.hi:
            self.hi = value

    @property
    def width(self) -> int:
        """Minimum SIGNED width holding the observed range."""
        return signed_width(self.lo, self.hi) if self.lo is not None else 0

    @property
    def unsigned_width(self) -> int:
        """Minimum UNSIGNED width; only meaningful when the range is >= 0."""
        if self.lo is None:
            return 0
        if self.lo < 0:
            raise ValueError(f"unsigned width requested for a range starting at {self.lo}")
        return self.hi.bit_length()


def _iter_runs() -> list[tuple[str, int, int]]:
    """(vector name, bank, shift) for every run in the committed suite."""
    manifest = json.loads(VECTORS_DIR.joinpath("manifest.json").read_text(encoding="utf-8"))
    runs = []
    for entry in manifest["vectors"]:
        cfg = json.loads(
            VECTORS_DIR.joinpath(entry["name"], "config.json").read_text(encoding="utf-8")
        )
        for k in range(cfg["num_kernels"]):
            runs.append((entry["name"], k, cfg["shift"]))
    return runs


def sweep_suite(spec: ConvSpec = SPEC, limit: int | None = None) -> dict:
    """Walk every window of every run, recording ranges and rounding deltas.

    Returns a dict of node-name -> _Range plus the rounding-comparison totals.
    One pass serves both studies so the suite is only traversed once.
    """
    nodes: dict[str, _Range] = {}
    for name in ("pixel", "product", "acc", "rounded", "output"):
        nodes[name] = _Range()

    # Rounding vs truncation, accumulated as exact integers.
    rnd_err_sum = trunc_err_sum = 0          # scaled by 2**shift (see below)
    rnd_err_max = trunc_err_max = 0
    differing = 0
    compared = 0
    scaled_unit_sum = 0                      # sum of 2**shift over compared outputs

    runs = _iter_runs()
    if limit is not None:
        runs = runs[:limit]

    for vec, bank, shift in runs:
        image, _ = load_image_txt(VECTORS_DIR.joinpath(vec, "image.txt"), spec)
        coef, _ = load_kernel_txt(VECTORS_DIR.joinpath(vec, f"kernel_b{bank}.txt"), spec)

        for r in range(spec.OUT_EDGE):
            for c in range(spec.OUT_EDGE):
                win = extract_window(image, r, c, spec)
                for row in win:
                    for px in row:
                        nodes["pixel"].add(px)

                prod = multiply(win, coef, spec)
                for p in prod:
                    nodes["product"].add(p)

                acc, levels = accumulate_tree(prod, spec)
                for lvl in range(1, len(levels)):
                    key = f"level{lvl}"
                    if key not in nodes:
                        nodes[key] = _Range()
                    for v in levels[lvl]:
                        nodes[key].add(v)
                nodes["acc"].add(acc)

                rounded = round_half_up(acc, shift, spec)
                nodes["rounded"].add(rounded)
                out, _ = saturate(rounded, spec)
                nodes["output"].add(out)

                if shift > 0:
                    unit = 1 << shift
                    truncated = acc >> shift
                    # Error against the exact quotient acc/2**shift, scaled by
                    # 2**shift so everything stays an integer:
                    #   err_scaled = policy_result * 2**shift - acc
                    rnd_err = rounded * unit - acc
                    trunc_err = truncated * unit - acc
                    rnd_err_sum += rnd_err
                    trunc_err_sum += trunc_err
                    rnd_err_max = max(rnd_err_max, abs(rnd_err))
                    trunc_err_max = max(trunc_err_max, abs(trunc_err))
                    scaled_unit_sum += unit
                    compared += 1
                    if rounded != truncated:
                        differing += 1

    return {
        "nodes": nodes,
        "runs": len(runs),
        "windows": len(runs) * spec.OUT_COUNT,
        "rounding": {
            "compared": compared,
            "differing": differing,
            "rnd_err_sum": rnd_err_sum,
            "trunc_err_sum": trunc_err_sum,
            "rnd_err_max": rnd_err_max,
            "trunc_err_max": trunc_err_max,
            "unit_sum": scaled_unit_sum,
        },
    }


def _declared_width(node: str, spec: ConvSpec) -> int:
    return {
        "pixel": spec.PIX_W,
        "product": spec.PROD_W,
        "level1": PARAMS.T1_W,
        "level2": PARAMS.T2_W,
        "level3": spec.ACC_W,
        "level4": spec.ACC_W,
        "acc": spec.ACC_W,
        "rounded": spec.ACC_W,
        "output": spec.OUT_W,
    }.get(node, spec.ACC_W)


def section_empirical(sweep: dict, spec: ConvSpec = SPEC) -> str:
    lines = [
        "### Empirical ranges over the full vector suite",
        "",
        f"Every intermediate of every window of every run: **{sweep['runs']} runs x "
        f"{spec.OUT_COUNT} outputs = {sweep['windows']:,} windows**, "
        f"{sweep['windows'] * spec.TAPS:,} products.",
        "",
        "A run here is one (vector, kernel bank) pair. `relu_en` is not swept: it",
        "affects only the final activation, and `relu_en=0` is the wider case for",
        "every node in the table, so sweeping it would narrow the observed output",
        "range rather than widen it.",
        "",
        "| Node | Observed min | Observed max | Bits used | Declared | Headroom |",
        "|---|---|---|---|---|---|",
    ]
    order = ["pixel", "product"] + sorted(
        [k for k in sweep["nodes"] if k.startswith("level")],
        key=lambda s: int(s[5:]),
    ) + ["acc", "rounded", "output"]

    overflow = []
    for node in order:
        rng = sweep["nodes"][node]
        declared = _declared_width(node, spec)
        # px_data is the one unsigned node in the chain; comparing its observed
        # range against a signed width would spuriously report an overflow.
        signedness = "u" if node == "pixel" else "s"
        used = rng.unsigned_width if signedness == "u" else rng.width
        head = declared - used
        if used > declared:
            overflow.append(node)
        lines.append(
            f"| `{node}` ({signedness}) | {rng.lo} | {rng.hi} | {used} | {declared} | "
            f"{'**OVERFLOW**' if used > declared else f'{head} bit(s)'} |"
        )

    acc = sweep["nodes"]["acc"]
    attained = (acc.lo == spec.ACC_MIN)
    lines += [
        "",
        f"**No observed overflow:** every node fits its declared width "
        f"({'FAIL: ' + ', '.join(overflow) if overflow else 'confirmed for all nodes'}).",
        "",
    ]
    if attained:
        lines += [
            "**The bound is attained, not merely respected.** The observed accumulator",
            f"range is [{acc.lo}, {acc.hi}] against the analytic reachable range "
            f"[{spec.ACC_MIN}, {spec.ACC_MAX}]. The negative endpoint "
            f"{acc.lo} equals the analytic worst case exactly, so the suite does not",
            "just fail to overflow -- it drives the accumulator to the very edge of",
            f"what the {spec.ACC_W}-bit width must hold, which is the strongest",
            "empirical evidence the proof can have.",
        ]
    else:
        lines += [
            f"**Bound not attained by this sweep.** The observed accumulator range is",
            f"[{acc.lo}, {acc.hi}], inside the analytic reachable range "
            f"[{spec.ACC_MIN}, {spec.ACC_MAX}] but not touching it. The width proof",
            "still holds analytically, but this sweep is not evidence that the bound",
            "is reachable -- run the full suite (the `sat_neg` vector attains it).",
        ]
    lines += [
        "",
        "**Headroom read correctly:** the one spare bit on `product` and on the",
        "intermediate tree levels is the conservative-declaration slack explained",
        "above, not unused dynamic range that could be reclaimed for free. `acc` shows",
        "0 bits of headroom -- it is exactly the right width.",
    ]
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# 3. Rounding vs truncation
# ---------------------------------------------------------------------------

def section_rounding(sweep: dict) -> str:
    r = sweep["rounding"]
    if r["compared"] == 0:
        return "### Rounding vs truncation\n\nNo runs with a nonzero shift.\n"

    # Mean bias in LSBs, as an exact fraction and as a scaled integer.
    # err_scaled is in units of 2**-shift LSB, so the mean bias in LSB is
    # (sum of err_scaled) / (sum of 2**shift).
    def milli_lsb(total: int) -> str:
        """Mean bias in LSB, to three places, computed with integers only."""
        milli = (total * 1000) // r["unit_sum"]
        sign = "-" if milli < 0 else "+"
        milli = abs(milli)
        return f"{sign}{milli // 1000}.{milli % 1000:03d}"

    lines = [
        "### Rounding policy: round-half-up vs truncation",
        "",
        "Both policies are measured against the **exact rational quotient**",
        "`acc / 2^s`, over every output of every run in the suite with `s > 0`",
        f"({r['compared']:,} outputs). To stay integer-only the error is scaled by",
        "`2^s`: `err = policy_result * 2^s - acc`, so one LSB of the shifted result",
        "is `2^s` units.",
        "",
        "| Policy | Error range (LSB) | Mean bias (LSB) | Worst deviation (LSB) |",
        "|---|---|---|---|",
        f"| **round-half-up** (implemented) | (-1/2, +1/2] | "
        f"**{milli_lsb(r['rnd_err_sum'])}** | 1/2 exactly |",
        f"| truncation (`acc >> s`) | (-1, 0] | "
        f"**{milli_lsb(r['trunc_err_sum'])}** | 1 - 2^-s |",
        "",
        f"The two policies produce a different result on **{r['differing']:,} of "
        f"{r['compared']:,} outputs "
        f"({(r['differing'] * 100) // r['compared']}%)**.",
        "",
        "**Why round-half-up was chosen.** Truncation is a floor, so its error is",
        "one-sided: every inexact result is pulled toward negative infinity, and the",
        "mean bias above is close to -1/2 LSB -- a systematic DC offset that",
        "accumulates through a CNN layer stack rather than averaging out. Round-half-up",
        "halves the worst-case deviation (1/2 LSB instead of 1 LSB) and its bias is",
        "near zero, deviating only through the tie-breaking direction. The cost in",
        "hardware is one `ACC_W`-wide add of the constant `2^(s-1)` before the shift,",
        "which the `normalize` stage performs in the same cycle as the shift: no extra",
        "pipeline stage, no extra multiplier, a handful of LUTs.",
        "",
        "**Why not round-half-to-even.** Convergent rounding would drive the residual",
        "tie bias to zero as well, but it needs the LSB of the quotient and a sticky",
        "term, which is more logic on the critical path of the `normalize` stage for a",
        "bias difference far below the quantization already accepted by an 8-bit input",
        "and a 16-bit output. Round-half-up is the standard INT8 inference convention",
        "and is what the golden model and the RTL both implement, exactly.",
    ]
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# 4. Generalization over N and W
# ---------------------------------------------------------------------------

def section_generalize() -> str:
    lines = [
        "### Generalization: the widths are formulas, not constants",
        "",
        "The same closed forms are re-derived at other geometries and driven with",
        "worst-case stimulus (uniform `PIX_MAX` image, all `COEF_MIN` kernel), which",
        "attains the analytic accumulator minimum exactly. If any width were a",
        "constant that merely happened to be right at N=3, this table would break.",
        "",
        "| N | W | Taps | Outputs | Product | Analytic acc range | `ACC_W` | Naive bound | Driven acc min | Bits needed |",
        "|---|---|---|---|---|---|---|---|---|---|",
    ]
    for n in (3, 5):
        for w in (32, 64):
            spec = ConvSpec.from_package(N=n, W=w)
            image = [[spec.PIX_MAX] * spec.W for _ in range(spec.W)]
            coef = [spec.COEF_MIN] * spec.TAPS
            # One window is enough: the field is uniform, so every window attains
            # the same worst-case accumulator value.
            win = extract_window(image, 0, 0, spec)
            acc, _ = accumulate_tree(multiply(win, coef, spec), spec)
            lines.append(
                f"| {n} | {w} | {spec.TAPS} | {spec.OUT_COUNT} | {spec.PROD_W}s | "
                f"[{spec.ACC_MIN}, {spec.ACC_MAX}] | **{spec.ACC_W}s** | "
                f"{spec.ACC_W_NAIVE}s | {acc} | {signed_width(acc, -acc)}s |"
            )

    n3 = ConvSpec.from_package()
    n5 = ConvSpec.from_package(N=5, W=64)
    lines += [
        "",
        f"At N=3 the derivation reproduces the frozen package values exactly "
        f"(`PROD_W`={n3.PROD_W}, `ACC_W`={n3.ACC_W}), which is what licenses using it",
        "at other geometries. At N=5 the accumulator grows to "
        f"**{n5.ACC_W} bits** to hold [{n5.ACC_MIN}, {n5.ACC_MAX}], and the tree",
        f"deepens from {n3.TREE_LEVELS} to {n5.TREE_LEVELS} reduction levels "
        f"(`ceil(log2(N^2))`).",
        "",
        f"Note the two bound columns differ by one bit at both geometries: the",
        f"textbook `PROD_W + ceil(log2(N^2))` rule gives {n3.ACC_W_NAIVE} at N=3 and "
        f"{n5.ACC_W_NAIVE} at N=5, while the reachable-range derivation gives "
        f"{n3.ACC_W} and {n5.ACC_W}. Taking the tight bound is worth a bit of",
        "accumulator and adder-tree width at every stage; the design uses it.",
        "",
        "**RTL scope.** Only the model generalizes. `rtl/pkg_params.sv` keeps N fixed",
        "at 3 (assumption A6), because a parameterized N would make `P_PIPE`, the",
        "adder-tree depth and the `T_first` latency formula variable, invalidating the",
        "frozen interface and the nine-multiplier FoM argument for no FoM gain",
        "(assumption A7). The generalization above exists to prove the *derivations*,",
        "not to promise a parameterized netlist.",
    ]
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# 5. Saturation policy confirmation
# ---------------------------------------------------------------------------

def section_saturation(spec: ConvSpec = SPEC) -> str:
    stats_pos = json.loads(VECTORS_DIR.joinpath("sat_pos", "stats.json").read_text(encoding="utf-8"))
    stats_neg = json.loads(VECTORS_DIR.joinpath("sat_neg", "stats.json").read_text(encoding="utf-8"))
    baseline = VECTORS_DIR.joinpath("baseline_stats.md").read_text(encoding="utf-8")
    total_pos = total_neg = 0
    for line in baseline.splitlines():
        if line.startswith("**Saturation events:**"):
            parts = line.replace("**Saturation events:**", "").split(",")
            total_pos = int(parts[0].split()[0])
            total_neg = int(parts[1].split()[0])

    p = stats_pos["b0_relu0"]
    n = stats_neg["b0_relu0"]
    nr = stats_neg["b0_relu1"]
    return "\n".join([
        "### Saturation policy: exercised and correct at both rails",
        "",
        "| Rail | Vector | Accumulator | After shift 0 | Clamped to | Events |",
        "|---|---|---|---|---|---|",
        f"| positive | `sat_pos` | {p['acc_max']} | {p['acc_max']} | "
        f"**{spec.OUT_MAX}** | {p['sat_pos']}/{spec.OUT_COUNT} outputs |",
        f"| negative | `sat_neg` | {n['acc_min']} | {n['acc_min']} | "
        f"**{spec.OUT_MIN}** | {n['sat_neg']}/{spec.OUT_COUNT} outputs |",
        "",
        f"Across the whole suite: **{total_pos:,} positive-rail** and "
        f"**{total_neg:,} negative-rail** clamp events, so both rails are covered by",
        "far more than the two directed vectors.",
        "",
        f"**Order is saturate-then-ReLU.** `sat_neg` with `relu_en=1` still records",
        f"{nr['sat_neg']} saturation events and additionally {nr['relu_clips']} ReLU",
        f"clips, with every output 0: the clamp to {spec.OUT_MIN} happens first and",
        "ReLU then replaces it. Both orders give the same number for a symmetric",
        "clamp, but the model and the RTL fix the order so bit-exactness is never",
        "ambiguous, and `sat_flag` keeps reporting the clamp even when ReLU hides it.",
        "",
        f"**Reachability depends on the shift.** At `s = 0` the accumulator range "
        f"[{spec.ACC_MIN}, {spec.ACC_MAX}] far exceeds the 16-bit output, so saturation",
        f"is reachable and tested. At `s >= 4` the worst case after the shift is "
        f"{-spec.ACC_MIN >> 4} in magnitude, inside the output range, so the clamp",
        "becomes unreachable and remains only as a guarantee.",
    ])


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

SECTIONS = ("derivation", "empirical", "rounding", "saturation", "generalize")

DOC_PATH = Path(__file__).resolve().parent.parent.joinpath("docs", "03_fixed_point.md")
BEGIN_MARK = "<!-- BEGIN GENERATED: width_study -->"
END_MARK = "<!-- END GENERATED: width_study -->"

DOC_PREAMBLE = """## 7. Width-sufficiency proof and minimization study (Phase 3 evidence)

*Everything between the generated markers below is produced by
`python model/width_study.py --write-docs`. Do not edit it by hand — edit the
study and regenerate, so the numbers in the report can never drift from the
model that produced them.*

This design has no float-to-fixed conversion step: the model is integer by
construction (§5), so §§1–4 above already fix the formats. What remains, and
what this section supplies, is the evidence that each declared width is
**sufficient**, that none is **wastefully oversized**, that the **rounding
policy** is the right tradeoff, and that the derivations are **formulas rather
than constants** that happen to be right at N=3.

"""


def write_docs(quick: bool = False) -> int:
    """Regenerate the generated block inside docs/03_fixed_point.md."""
    sweep = sweep_suite(SPEC, limit=8 if quick else None)
    body = "\n\n".join([
        section_derivation(),
        section_empirical(sweep),
        section_rounding(sweep),
        section_saturation(),
        section_generalize(),
    ])
    block = f"{BEGIN_MARK}\n\n{body}\n\n{END_MARK}"

    text = DOC_PATH.read_text(encoding="utf-8")
    if BEGIN_MARK in text and END_MARK in text:
        head = text.split(BEGIN_MARK)[0]
        tail = text.split(END_MARK)[1]
        text = head + block + tail
    else:
        text = text.rstrip("\n") + "\n\n" + DOC_PREAMBLE + block + "\n"
    DOC_PATH.write_text(text, encoding="utf-8")
    print(f"wrote the width study into {DOC_PATH}")
    return 0


def main(argv: Sequence[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    parser.add_argument("--section", choices=SECTIONS, help="print one section only")
    parser.add_argument("--quick", action="store_true",
                        help="sweep only the first 8 runs (development aid)")
    parser.add_argument("--write-docs", action="store_true",
                        help="regenerate the generated block in docs/03_fixed_point.md")
    args = parser.parse_args(argv)

    if args.write_docs:
        return write_docs(quick=args.quick)

    wanted = [args.section] if args.section else list(SECTIONS)
    needs_sweep = any(s in ("empirical", "rounding") for s in wanted)

    sweep = None
    if needs_sweep:
        print("<!-- sweeping the vector suite... -->", file=sys.stderr)
        sweep = sweep_suite(SPEC, limit=8 if args.quick else None)

    out = []
    for name in wanted:
        if name == "derivation":
            out.append(section_derivation())
        elif name == "empirical":
            out.append(section_empirical(sweep))
        elif name == "rounding":
            out.append(section_rounding(sweep))
        elif name == "saturation":
            out.append(section_saturation())
        elif name == "generalize":
            out.append(section_generalize())
    print("\n\n".join(out))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
