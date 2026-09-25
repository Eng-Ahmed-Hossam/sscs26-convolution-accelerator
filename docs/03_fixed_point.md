# 03 — Fixed-Point Analysis

This file is written as report-ready prose. Paste §1–§4 into the report's
Fixed-Point Analysis section with only the figure references adjusted.

## 1. Input format justification (report-ready)

> The accelerator accepts pixels as **8-bit unsigned integers (UQ8.0)**. This is
> the native bit depth of grayscale image sensors and of standard 8-bit image
> containers (PNG, BMP, PGM): each sample is an integer in [0, 255] with no
> fractional component. Choosing the native container format means zero
> conversion cost and zero quantization error at the input boundary — the
> hardware consumes exactly the bytes a camera or file produces. An unsigned
> format is the natural choice because luminance is non-negative; signedness
> enters the datapath only through the kernel coefficients. This satisfies the
> competition requirement for an unsigned fixed-point input with justification.

Kernel coefficients are **8-bit signed integers (Q8.0, range [−128, +127])** as
mandated. For CNN kernels quantized from floating point, the quantization scale
is absorbed into the output shift (§4), which is the standard INT8 inference
convention.

## 2. Bit-width chain

| Stage | Format | Width | Range |
|---|---|---|---|
| Pixel in | UQ8.0 unsigned | 8 | [0, 255] |
| Zero-extended pixel | signed | 9 | [0, 255] |
| Product (9s × 8s) | signed | 17 | [−32640, +32385] |
| Adder tree stage 1 (2 terms) | signed | 18 | ±65280 |
| Adder tree stage 2 (4 terms) | signed | 19 | ±130560 |
| Accumulator (9 terms) | signed | 20 | [−293760, +291465] |
| After round-half-up ≫ `cfg_out_shift` | signed | 20 | shrinks with shift |
| Output (saturated) | signed | 16 | [−32768, +32767] |

Zero-extension to 9-bit signed is done **explicitly in RTL** (`{1'b0, px}`)
before the multiply so the synthesizer builds a true signed 9×8 multiplier;
signed/unsigned mixed inference is never relied upon.

## 3. Worst-case proof — the 20-bit accumulator is exact

Maximum-magnitude single product: pixel = 255, coefficient = −128 →
|255 × (−128)| = 32,640 < 2¹⁵, so 17 signed bits suffice per product
(max positive product 255 × 127 = 32,385).

The reachable accumulator endpoints are:

```
acc_min = 9 × 255 × (−128) = −293,760
acc_max = 9 × 255 × 127    = +291,465
|acc| ≤ 293,760 < 2¹⁹ = 524,288
```

Therefore a **20-bit signed** accumulator represents every reachable sum
exactly: **no overflow, wrap, or precision loss can occur anywhere inside the
convolution**. Each adder-tree stage adds one bit (18, 19, 20 as tabulated) and
alignment registers carry unpaired terms unchanged, so the proof covers every
intermediate node, not just the final sum. The only lossy operations in the
entire datapath are the two deliberate, documented ones in §4.

## 4. Rounding, overflow, and saturation policy (report-ready)

> The 20-bit exact accumulator is reduced to the 16-bit signed output in two
> documented steps performed by the `normalize` stage:
>
> 1. **Round half up:** with programmable shift `s = cfg_out_shift` (0–7), the
>    accumulator is offset by `+2^(s−1)` and arithmetically shifted right by
>    `s`. For `s = 0` the value passes through unchanged. Round-half-up was
>    chosen over truncation because it is zero-mean for the DC case and matches
>    the integer reference model exactly (`(acc + (1 << (s-1))) >> s` in
>    Python's floor-division semantics for the ranges involved).
> 2. **Symmetric saturation to 16 bits:** results above +32,767 clamp to
>    +32,767; below −32,768 clamp to −32,768. With `s = 0` the reachable
>    range [−293,760, +291,465] (§3) exceeds the 16-bit range, so saturation
>    is a reachable, tested behavior — the max-magnitude kernel vectors drive it deliberately and
>    the event is captured in the report waveforms. With `s ≥ 4` the worst case
>    magnitude is at most 18,360 after the shift and saturation becomes
>    unreachable; the logic
>    remains as a guarantee.
> 3. **ReLU (bonus, bypassable):** when `cfg_relu_en = 1`, negative outputs are
>    replaced by 0 **after** saturation. ReLU order matters: saturate-then-ReLU
>    equals ReLU-then-saturate for our symmetric clamp, but the golden model
>    and RTL both fix the order as saturate → ReLU to keep bit-exactness
>    unambiguous.

The programmable shift serves the CNN demo: quantized INT8 layers use `s = 7`
(coefficients interpreted as Q1.7), while raw integer filters (Sobel, impulse
tests) use `s = 0`. The shift value used for each result is stated alongside it
in the report. (Logged in [assumptions.md](assumptions.md).)

## 5. Golden-model contract

`model/golden_conv.py` implements §2–§4 with Python integers only (arbitrary
precision — no NumPy float types, no `/` division). The RTL is correct **iff**
bit-exact against it on every vector. See
[05_verification_plan.md](05_verification_plan.md).

## 6. Golden-model API (`model/golden_conv.py`)

### 6.1 Parameter sourcing

Nothing in the model is a literal. `model/pkg_params.py` parses
[`rtl/pkg_params.sv`](../rtl/pkg_params.sv) and exposes `PARAMS`; it carries
**no fallback numbers**, so a missing or renamed constant raises rather than
silently defaulting. `ConvSpec.from_package()` builds the model configuration
from those values; `ConvSpec.check_against_package()` asserts that every width
the model *derives from N* equals the width the package *declares*, which is
what licenses the N-generalized formulas (assumption A7).

### 6.2 Types, ranges and error behaviour

| Object | Python type | Range | Raises |
|---|---|---|---|
| `image` | `list[list[int]]`, W×W | `[0, 2**PIX_W − 1]` = [0, 255] | `TypeError` on non-`int` (float, `bool`, NumPy scalar); `ValueError` on range or shape |
| `coef` | `list[int]`, length N² , index `r*N+c` | `[−2**(COEF_W−1), 2**(COEF_W−1)−1]` = [−128, 127] | as above |
| `shift` | `int` | `[0, SHIFT_MAX]` = [0, 7] | `ValueError` |
| `relu_en` | `int` | `{0, 1}` | `ValueError` |
| return of `convolve` | `list[int]`, length (W−N+1)² | `[−32768, 32767]` | — |

NumPy integer scalars are rejected deliberately: they carry a fixed width that
wraps silently, which is precisely the failure a reference model must not have.
Callers convert with `.tolist()` first. Nothing is ever coerced — a silent
coercion in the reference is a wrong reference.

### 6.3 Stage functions — the 1:1 map onto the RTL pipeline

A mismatch localizes to a stage instead of "somewhere in the pipeline". The
Phase 5 scoreboard compares these against the corresponding RTL signals.

| # | Model function | RTL module | Registered stages |
|---|---|---|---|
| 1 | `extract_window(image, out_row, out_col, spec) -> win[r][c]` | `line_window` | — (window regs) |
| 2 | `zero_extend_pixel(px, spec)` then `multiply(win, coef, spec) -> prod[0..N²−1]` | `mac_array` | 1 |
| 3 | `accumulate_tree(prod, spec) -> (acc, levels)` | `adder_tree` | 3 |
| 4 | `round_half_up(acc, shift, spec)` | `normalize` | 1 |
| 5 | `saturate(value, spec) -> (clamped, sat_flag)` | `normalize` | 1 (shared with 6) |
| 6 | `relu(value, relu_en) -> (result, clipped)` | `normalize` | (same register) |

`accumulate_tree` returns **every** reduction level, pairing adjacent terms and
passing an odd trailing term through the alignment path exactly as
[02_architecture.md](02_architecture.md) §5 describes. At N=3 the model
produces levels 1–4 while the RTL spends three register stages on them
(`RTL_STAGE_LEVELS = (1, 2, 4)`: RTL stage 3 performs model levels 3 and 4
combinationally). Integer addition is associative and every level is exact, so
the grouping cannot change the sum — proven by `sum(prod) == acc` in the model
test suite.

### 6.4 Top-level entry points

```python
convolve(image, coef, shift=0, relu_en=0, spec=DEFAULT_SPEC) -> list[int]
convolve_traced(...) -> (list[int], ConvStats)      # + per-vector diagnostics
iter_traces(...) -> Iterator[WindowTrace]           # every intermediate, per pixel
compute_output(image, coef, out_row, out_col, ...) -> WindowTrace
```

All four share one arithmetic code path, so the traced and untraced results
cannot drift apart. `WindowTrace.report()` renders the window, the N² products,
every tree level and the acc/round/saturate/ReLU chain — this is the instrument
the Phase 5 scoreboard prints on a mismatch. `ConvStats` records the secondary
diagnostics (output min/max, accumulator peak versus the declared width,
saturation counts per rail, ReLU clip count, per-level peaks). Those are
**report diagnostics, never pass/fail criteria**: the only pass criterion is
bit-exactness.

### 6.5 Command line

```bash
python model/golden_conv.py --image f.txt --kernel k.txt --shift S --relu {0,1} --out expected.txt
python model/golden_conv.py --spec [--N 5 --W 64]   # print the derived width chain
python model/golden_conv.py --smoke                 # runnable 32x32 x 3x3 example
python model/golden_conv.py --self-audit            # prove: no floats, no division
```

File format is one decimal value per line in raster order, `#` comments and
blank lines ignored (kernel: N² lines, index `r*N+c`). N and W are **inferred
from the file lengths** and cross-checked against any explicit override, so a
malformed vector fails loudly instead of being reinterpreted.

`--self-audit` is the evidence behind the integer-only claim: it walks the AST
of `golden_conv.py` and `pkg_params.py` and fails on any float or complex
literal, any `/` operator, any import of a float-bearing module, and any
`float()`/`complex()`/`round()` call, then runs a live dtype check on produced
values. It is a structural proof, not an assertion of good intent. (This is why
path joins in the model use `Path.joinpath()` rather than the `/` operator — the
ban on `/` carries no exception a real division could hide behind.)

## 7. Width-sufficiency proof and minimization study (Phase 3 evidence)

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

<!-- BEGIN GENERATED: width_study -->

### Analytic derivation (first principles)

Every width below is a closed form in N, `PIX_W` and `COEF_W`. None is a
literal: `rtl/pkg_params.sv` computes them with the same expressions, and
`ConvSpec.check_against_package()` fails the build if the two ever disagree.

| Node | Closed form | Reachable range | Minimum signed width | Declared |
|---|---|---|---|---|
| pixel `px_data` | unsigned `PIX_W` | [0, 2^PIX_W - 1] = [0, 255] | 8u | **8u** |
| zero-extended pixel | `PIX_W + 1` signed | [0, 255] | 9s | **9s** |
| coefficient `kl_coef` | signed `COEF_W` | [-128, 127] | 8s | **8s** |
| product `prod` | `(PIX_W+1) + COEF_W` | [-32640, 32385] | 16s | **17s (+1)** |
| tree level 1 (2 terms, RTL stage 1 reg) | width of 2 x product range | [-65280, 64770] | 17s | **18s (+1)** |
| tree level 2 (4 terms, RTL stage 2 reg) | width of 4 x product range | [-130560, 129540] | 18s | **19s (+1)** |
| tree level 3 (8 terms, RTL stage 3 (comb)) | width of 8 x product range | [-261120, 259080] | 19s | **20s (+1)** |
| tree level 4 (9 terms, RTL stage 3 reg) | width of 9 x product range | [-293760, 291465] | 20s | **20s** |
| accumulator `acc` | width of N^2 x product range | [-293760, 291465] | 20s | **20s** |
| output `out_data` | mandated by the interface | [-32768, 32767] | 16s | **16s** |

**Accumulator exactness.** The largest magnitude reachable anywhere in the
tree is `N^2 x PIX_MAX x 2^(COEF_W-1)` = 9 x 255 x 128 = 293760, and 293760 < 2^19 = 524288. A 20-bit signed accumulator therefore represents every reachable
sum exactly: no overflow, wrap or precision loss can occur anywhere inside
the convolution. The only lossy operations in the datapath are the two
deliberate ones -- the round-half-up shift and the saturating clamp.

**Where the declared widths carry slack.** `ACC_W` is tight: 19 bits could
not hold 293760. The product and the intermediate tree levels each
carry exactly one spare bit, because they are declared by the conservative
*add one bit per addition* rule rather than from the reachable range. That
spare bit exists because the zero-extended pixel operand is provably
non-negative, so the product can never reach the most negative value a
signed `PROD_W` multiplier could express. Keeping it is deliberate: the
declared widths are then exact for *any* operands, which is a much easier
property to maintain than one that depends on an operand-sign argument, and
synthesis range-propagation prunes the unreachable bit anyway. The Phase 6
utilization report is where that last claim gets checked against the tool.

### Empirical ranges over the full vector suite

Every intermediate of every window of every run: **70 runs x 900 outputs = 63,000 windows**, 567,000 products.

A run here is one (vector, kernel bank) pair. `relu_en` is not swept: it
affects only the final activation, and `relu_en=0` is the wider case for
every node in the table, so sweeping it would narrow the observed output
range rather than widen it.

| Node | Observed min | Observed max | Bits used | Declared | Headroom |
|---|---|---|---|---|---|
| `pixel` (u) | 0 | 255 | 8 | 8 | 0 bit(s) |
| `product` (s) | -32640 | 32385 | 16 | 17 | 1 bit(s) |
| `level1` (s) | -65280 | 64770 | 17 | 18 | 1 bit(s) |
| `level2` (s) | -130560 | 129540 | 18 | 19 | 1 bit(s) |
| `level3` (s) | -261120 | 259080 | 19 | 20 | 1 bit(s) |
| `level4` (s) | -293760 | 291465 | 20 | 20 | 0 bit(s) |
| `acc` (s) | -293760 | 291465 | 20 | 20 | 0 bit(s) |
| `rounded` (s) | -293760 | 291465 | 20 | 20 | 0 bit(s) |
| `output` (s) | -32768 | 32767 | 16 | 16 | 0 bit(s) |

**No observed overflow:** every node fits its declared width (confirmed for all nodes).

**The bound is attained, not merely respected.** The observed accumulator
range is [-293760, 291465] against the analytic reachable range [-293760, 291465]. The negative endpoint -293760 equals the analytic worst case exactly, so the suite does not
just fail to overflow -- it drives the accumulator to the very edge of
what the 20-bit width must hold, which is the strongest
empirical evidence the proof can have.

**Headroom read correctly:** the one spare bit on `product` and on the
intermediate tree levels is the conservative-declaration slack explained
above, not unused dynamic range that could be reclaimed for free. `acc` shows
0 bits of headroom -- it is exactly the right width.

### Rounding policy: round-half-up vs truncation

Both policies are measured against the **exact rational quotient**
`acc / 2^s`, over every output of every run in the suite with `s > 0`
(26,100 outputs). To stay integer-only the error is scaled by
`2^s`: `err = policy_result * 2^s - acc`, so one LSB of the shifted result
is `2^s` units.

| Policy | Error range (LSB) | Mean bias (LSB) | Worst deviation (LSB) |
|---|---|---|---|
| **round-half-up** (implemented) | (-1/2, +1/2] | **+0.007** | 1/2 exactly |
| truncation (`acc >> s`) | (-1, 0] | **-0.495** | 1 - 2^-s |

The two policies produce a different result on **13,103 of 26,100 outputs (50%)**.

**Why round-half-up was chosen.** Truncation is a floor, so its error is
one-sided: every inexact result is pulled toward negative infinity, and the
mean bias above is close to -1/2 LSB -- a systematic DC offset that
accumulates through a CNN layer stack rather than averaging out. Round-half-up
halves the worst-case deviation (1/2 LSB instead of 1 LSB) and its bias is
near zero, deviating only through the tie-breaking direction. The cost in
hardware is one `ACC_W`-wide add of the constant `2^(s-1)` before the shift,
which the `normalize` stage performs in the same cycle as the shift: no extra
pipeline stage, no extra multiplier, a handful of LUTs.

**Why not round-half-to-even.** Convergent rounding would drive the residual
tie bias to zero as well, but it needs the LSB of the quotient and a sticky
term, which is more logic on the critical path of the `normalize` stage for a
bias difference far below the quantization already accepted by an 8-bit input
and a 16-bit output. Round-half-up is the standard INT8 inference convention
and is what the golden model and the RTL both implement, exactly.

### Saturation policy: exercised and correct at both rails

| Rail | Vector | Accumulator | After shift 0 | Clamped to | Events |
|---|---|---|---|---|---|
| positive | `sat_pos` | 291465 | 291465 | **32767** | 900/900 outputs |
| negative | `sat_neg` | -293760 | -293760 | **-32768** | 900/900 outputs |

Across the whole suite: **5,208 positive-rail** and **10,190 negative-rail** clamp events, so both rails are covered by
far more than the two directed vectors.

**Order is saturate-then-ReLU.** `sat_neg` with `relu_en=1` still records
900 saturation events and additionally 900 ReLU
clips, with every output 0: the clamp to -32768 happens first and
ReLU then replaces it. Both orders give the same number for a symmetric
clamp, but the model and the RTL fix the order so bit-exactness is never
ambiguous, and `sat_flag` keeps reporting the clamp even when ReLU hides it.

**Reachability depends on the shift.** At `s = 0` the accumulator range [-293760, 291465] far exceeds the 16-bit output, so saturation
is reachable and tested. At `s >= 4` the worst case after the shift is 18360 in magnitude, inside the output range, so the clamp
becomes unreachable and remains only as a guarantee.

### Generalization: the widths are formulas, not constants

The same closed forms are re-derived at other geometries and driven with
worst-case stimulus (uniform `PIX_MAX` image, all `COEF_MIN` kernel), which
attains the analytic accumulator minimum exactly. If any width were a
constant that merely happened to be right at N=3, this table would break.

| N | W | Taps | Outputs | Product | Analytic acc range | `ACC_W` | Naive bound | Driven acc min | Bits needed |
|---|---|---|---|---|---|---|---|---|---|
| 3 | 32 | 9 | 900 | 17s | [-293760, 291465] | **20s** | 21s | -293760 | 20s |
| 3 | 64 | 9 | 3844 | 17s | [-293760, 291465] | **20s** | 21s | -293760 | 20s |
| 5 | 32 | 25 | 784 | 17s | [-816000, 809625] | **21s** | 22s | -816000 | 21s |
| 5 | 64 | 25 | 3600 | 17s | [-816000, 809625] | **21s** | 22s | -816000 | 21s |

At N=3 the derivation reproduces the frozen package values exactly (`PROD_W`=17, `ACC_W`=20), which is what licenses using it
at other geometries. At N=5 the accumulator grows to **21 bits** to hold [-816000, 809625], and the tree
deepens from 4 to 5 reduction levels (`ceil(log2(N^2))`).

Note the two bound columns differ by one bit at both geometries: the
textbook `PROD_W + ceil(log2(N^2))` rule gives 21 at N=3 and 22 at N=5, while the reachable-range derivation gives 20 and 21. Taking the tight bound is worth a bit of
accumulator and adder-tree width at every stage; the design uses it.

**RTL scope.** Only the model generalizes. `rtl/pkg_params.sv` keeps N fixed
at 3 (assumption A6), because a parameterized N would make `P_PIPE`, the
adder-tree depth and the `T_first` latency formula variable, invalidating the
frozen interface and the nine-multiplier FoM argument for no FoM gain
(assumption A7). The generalization above exists to prove the *derivations*,
not to promise a parameterized netlist.

<!-- END GENERATED: width_study -->
