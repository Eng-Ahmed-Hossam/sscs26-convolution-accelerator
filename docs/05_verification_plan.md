# 05 — Verification Plan

Owner: WP4 (env) + WP1 (golden model/vectors). The bar: **bit-exact equality
between HW and golden model on every output pixel of every vector**, proven by
one command with a nonzero exit on any mismatch.

## 1. Golden model requirements (`model/golden_conv.py`)

- **Integer-only.** Python `int` arithmetic exclusively: no floats, no NumPy
  float dtypes, no `/` operator (use `>>` / explicit expressions). Add
  `assert isinstance(x, int)` guards at the boundaries; images load via
  `PIL → list[int]` or NumPy with immediate `.astype(object).tolist()`.
- Implements exactly [03_fixed_point.md](03_fixed_point.md): zero-extend, 9×
  products, exact sum, round-half-up (`(acc + (1 << (s-1))) >> s` when `s > 0`),
  symmetric saturate to [−32768, 32767], then optional ReLU — in that order.
- Border policy: no padding; output size (W−N+1)² in raster order.
- CLI: `python model/golden_conv.py --image f.txt --kernel k.txt --shift S
  --relu {0,1} --out expected.txt`. File formats: one decimal value per line,
  raster order (kernel: 9 lines, index r·N+c).
- Multi-kernel: run once per kernel file; regression stitches per-bank expected
  files.

## 2. Vector list (`model/gen_vectors.py --all` generates all of these into `model/vectors/<name>/`)

Each vector directory contains `image.txt`, `kernel_b<0..3>.txt` (as used),
`config.json` (shift and num_kernels; a default relu value is allowed for a
standalone invocation), and both `expected_b<k>_relu0.txt` and
`expected_b<k>_relu1.txt` for every used bank.

| # | Name | Image | Kernel(s) | Why |
|---|---|---|---|---|
| 1 | `impulse` | Single 255 at (15,15), rest 0 | Identity (center=1) + asymmetric ramp kernel | Window alignment/orientation: output must reproduce the kernel mirrored at the right coordinates — catches r/c swaps and index reversals |
| 2 | `all_zero` | All 0 | Max kernel (all −128) | Quiescent baseline; every output exactly 0 |
| 3 | `all_255` | All 255 | All +1 | DC gain = 9·255 = 2295, uniform field |
| 4 | `checkerboard` | 0/255 alternating | Sobel Gx | High-frequency content, exercises sign changes every pixel |
| 5 | `ramp` | pixel = (row+col) mod 256 | Sobel Gx and Gy in banks 0/1, num_kernels=2 | Known analytic gradients + multi-kernel bank swap |
| 6 | `sat_pos` / `sat_neg` | All 255 | All +127 / all −128, shift=0 | **Saturation must fire**: +291,465 → clamp +32767; −293,760 → clamp −32768. Run with relu 0 and 1 (ReLU-clip evidence) |
| 7–26 | `rand_00..rand_19` | ≥20 uniform-random images (seeded, seeds committed in gen_vectors.py) | Random kernels, random shift ∈ {0,4,7}, random num_kernels 1–4; each runs both ReLU modes | Bulk coverage of the datapath and config space |
| 27–29 | `real_lena32` / `real_neu32` / `real_pcb32` | 2–3 real grayscale crops resized to 32×32 (committed as PGM) | Sobel + one CNN INT8 kernel from `model/quantize_kernels.py`, shift=7 | Realistic data statistics; feeds report imagery and the demo |

Every vector runs at **both** `relu_en` settings.
Total ≥ 28 named vectors ≥ 56 regression runs.

Before generating the random, real-image, or CNN-derived families, freeze in
this document (and log assumptions where applicable) the exact seeds,
coefficient fixtures, image provenance/crop/resize procedure, and the dependency
on the trained/quantized CNN artifact. `gen_vectors.py --all` must fail clearly
rather than silently substitute an unspecified fixture.

### 2.1 Frozen seeds (required by the paragraph above)

`MASTER_SEED = 20260915` (the submission deadline, chosen so the number is
memorable and obviously arbitrary — it carries no meaning beyond determinism).

Each vector draws from its **own** generator, seeded by a documented pure
function of the vector name so that regenerating one vector cannot perturb any
other, and so vectors can be added later without renumbering existing streams:

```
seed(name) = MASTER_SEED + (fold31(name) mod 2**31)
fold31(s)  = ((h * 31) + ord(ch)) mod 2**31   folded left to right from h = 0
```

`gen_vectors.py --check` proves determinism by regenerating the whole suite into
a scratch directory and comparing every byte against the committed tree.

### 2.2 Frozen coefficient fixtures

Every non-random kernel in the suite, `coef[r*N+c]` order. These are the exact
lists in `gen_vectors.py`; changing one is a vector change and needs the WP1 +
WP4 review of [CONTRIBUTING.md](../CONTRIBUTING.md) §5.

| Fixture | Coefficients | Purpose |
|---|---|---|
| `IDENTITY` | `0 0 0 0 1 0 0 0 0` | Output must equal the image interior exactly |
| `RAMP_ASYM` | `1 2 3 4 5 6 7 8 9` | Asymmetric — a transposed window changes the result, so it catches r/c swaps |
| `SOBEL_GX` | `1 0 -1 2 0 -2 1 0 -1` | Horizontal gradient |
| `SOBEL_GY` | `1 2 1 0 0 0 -1 -2 -1` | Vertical gradient |
| `LAPLACIAN` | `0 -1 0 -1 4 -1 0 -1 0` | Second-derivative edge kernel |
| `BOX` | `1 1 1 1 1 1 1 1 1` | DC gain 9 |
| `ALL_ONE` | `1 1 1 1 1 1 1 1 1` | DC gain check on the all-255 image |
| `ALL_MAX` | `127 × 9` | Drives the **positive** saturation rail |
| `ALL_MIN` | `-128 × 9` | Drives the **negative** saturation rail |
| `GAUSSIAN` | `1 2 1 2 4 2 1 2 1` | 3×3 blur, sum 16 = 2⁴; paired with shift 4 for a normalised result on the real-image `blur` family |

Random kernels draw each coefficient uniformly from [−128, 127], `shift` from
{0, 4, 7} and `num_kernels` from 1–4, all from the vector's own seeded stream.

### 2.3 Real-image family — DELIVERED

Produced by `model/prepare_assets.py` then `model/gen_real_vectors.py`, and
registered in `model/vectors/manifest_real.json`. They run in the same
regression as the synthetic suite and **do not replace it**: the synthetic
vectors exist to hit arithmetic corners a photograph never reaches (measured —
real images produce accumulator peaks of 260–3,985 against the 293,760 bound
and **zero** saturation events), while the real ones supply the spatial
statistics the synthetic ones cannot.

**Procedure — native-resolution crops, never resized.** The earlier plan here
said "resize to W×W with a box filter". That step is gone for anything that
feeds hardware: resizing low-pass filters the image, understates toggle
activity, and would flatter the SAIF power figure and therefore the FoM. A W×W
window is cut from the source at its original scale. See **assumption A11**.

| Stage | What it does |
|---|---|
| `model/prepare_assets.py` | Reads `model/vectors/assets/raw/*.{png,jpg,bmp,tif}`; falls back to the genuine photographs bundled with scikit-image if `raw/` is empty (`--include-fallback` uses both). Greyscale by integer ITU-R BT.601 luma. Emits a centre crop and a **detail crop** (the window of maximum Sobel gradient energy, located exactly with an integral image) at W=32 and W=64. Rejects crops with pixel span < 100 or mean \|Sobel\| < 8, printing the reason. |
| `model/gen_real_vectors.py` | Runs the golden model over every accepted crop and emits vectors in the standard format. |

**Vector families** (each at `relu_en` 0 and 1, as for every vector):

| Family | Banks | Shift | Purpose |
|---|---|---|---|
| `real_<crop>_edge` | 0=Sobel Gx, 1=Sobel Gy, 2=identity | 0 | Edge demo; the identity bank must reproduce the input interior **exactly** — the sharpest end-to-end check available, since any addressing or alignment error becomes a visibly wrong picture |
| `real_<crop>_blur` | 0=Gaussian `[1 2 1; 2 4 2; 1 2 1]` | 4 | Kernel sum 16 = 2⁴, so shift 4 is a true normalised blur and exercises a non-zero shift on real data |
| `real_<crop>_cnn` | INT8 first-layer kernels | 7 | **Not yet generated.** `model/quantize_kernels.py` (WP6) has not produced the fixture; the family is skipped with a notice rather than faked (A9). |

Plus `real_fullscene256_edge`: a single 256×256 native crop, three banks,
193,548 outputs — the W-parameterisation demonstration and the switching-activity
source for the Phase 6 SAIF flow.

**Coefficient fixture added:** `GAUSSIAN = [1 2 1 2 4 2 1 2 1]` (sum 16),
used only by the `blur` family.

**Sign-off gate.** `python tb/run_regression.py --signoff` fails unless at
least three `real_*` vectors are present. The gate counts real vectors rather
than naming three fixed files: which photographs are supplied is a local
choice, but the requirement that a submission rests on real imagery is not.

## 3. Self-checking testbench (`tb/tb_conv_top.sv`)

- Reads `image.txt`/`config.json`-derived plusargs; drives the exact
  [04_interfaces.md](04_interfaces.md) protocol: load banks → `cfg_start` →
  wait the mandatory one-cycle LOAD_KERNEL arming state → stream W² pixels
  beginning in PRIME (`px_last` on the final valid pixel) → after each
  nonfinal `out_last`, re-stream per remaining bank while `busy` stays high.
- Randomly de-asserts `px_valid` (bubbles) in half the runs. Bubble runs check
  coherent data/metadata holds, exact output data/order/count, and enabled-cycle
  alignment; they do not require a fixed wall-clock latency.
- Scoreboard: on each `out_valid`, compare `out_data` against the expected
  file line-by-line; on mismatch print `pixel_index, expected, got, bank` and
  `$fatal`. At end, check total valid count and `out_last` position.
- Writes `hw_out_b<k>_relu0.txt` and `hw_out_b<k>_relu1.txt` (the "HW outputs"
  deliverable) next to expected files under `tb/results/<vector>/`.
- A dedicated no-bubble timing test numbers the first accepted pixel as
  inclusive cycle 1 and asserts first `out_valid` at wall-clock cycle
  `(N−1)*W + N + P_PIPE = 73`. Every run also counts `shift_en` advances;
  bubble runs assert the corresponding enabled-cycle relationship.
- Unit TBs: `tb_line_window.sv` (tap positions vs a reference queue),
  `tb_adder_tree.sv` (random 9-term sums vs $signed sum), `tb_normalize.sv`
  (directed round/sat/ReLU corners: ±32768 boundary, half-LSB rounding cases),
  `tb_kernel_regfile.sv` (write/read all banks).
- Parameter smoke: compile `pkg_params.sv` first and elaborate fixed N=3 at
  W=64 by overriding the supported top-level W module parameter.

## 4. Regression runner contract (`tb/run_regression.py`)

- **One command:** `python tb/run_regression.py` (options: `--vector NAME`,
  `--sim {xsim,questa,verilator}`, `--seed`). It (1) calls `gen_vectors.py` if
  vectors are missing, (2) compiles RTL+TB, (3) runs every vector × relu
  matrix, (4) prints a pass/fail table:

  Compilation always reads `rtl/pkg_params.sv` explicitly first, followed by
  an explicit ordered list of remaining RTL and TB sources. W and `USE_DSP`
  overrides target `conv_top` module parameters, never package constants.

```
VECTOR            RELU  BANKS  OUTPUTS  MISMATCH  RESULT
impulse           0     1      900      0         PASS
...
TOTAL: 58 runs, 58 PASS, 0 FAIL
```

- **Exit code 0 iff every run passes; nonzero otherwise.** No green summary
  without a zero exit — CONTRIBUTING gates merges on this exact command.
- Archives the printed matrix to `tb/results/regression_<date>.log` (committed
  for the report's verification evidence).

## 5. Required waveform screenshots (for the report — capture from tb_conv_top)

1. **Window formation:** first 3 rows streaming; `win[0..2][0..2]` taps filling; annotate the serpentine shift.
2. **First valid:** no-bubble run, with the first accepted pixel numbered
   inclusive cycle 1; cursor on first `out_valid` at cycle 73 with formula
   `(N−1)·W + N + P_PIPE`.
3. **Saturation event:** `sat_pos` vector — `acc = 291465`, `sat_flag` pulse, `out_data = 32767`.
4. **ReLU clip:** same pixel with `relu_en` 0 vs 1 (negative result → 0).
5. (Bonus figure) **Bank swap:** FLUSH→RUN transition, `bank_sel` increment, second frame's first valid.

Store as `docs/waves/wave_<name>.png`; the report references them by these names.

## 6. SVA assertions (in `tb/tb_conv_top.sv` bind or inline in RTL, active in all regressions)

```systemverilog
// A1: exactly (W-N+1)^2 valid outputs per bank. valid_cnt is the
//     number of earlier qualified beats, so out_last is the final beat.
a_valid_count:  assert property (@(posedge clk) disable iff (!rst_n)
                out_last |-> (out_valid &&
                valid_cnt == ((W-N+1)**2)-1));
// A2: no X/Z on qualified data
a_no_x_out:     assert property (@(posedge clk) disable iff (!rst_n)
                out_valid |-> !$isunknown({out_data, out_bank, out_last}));
// A3: outputs only in RUN/FLUSH
a_valid_state:  assert property (@(posedge clk) disable iff (!rst_n)
                out_valid |-> (state inside {RUN, FLUSH}));
// A4: out_last is a single-cycle event co-asserted with out_valid
a_last_valid:   assert property (@(posedge clk) disable iff (!rst_n)
                out_last |-> out_valid);
a_last_pulse:   assert property (@(posedge clk) disable iff (!rst_n)
                out_last |=> !out_last);
// A5: ReLU invariant — no negative outputs when enabled
a_relu:         assert property (@(posedge clk) disable iff (!rst_n)
                (out_valid && relu_en) |-> !out_data[15]);

// A6: public event qualifiers never replay a held output.
a_no_event_hold: assert property (@(posedge clk) disable iff (!rst_n)
                 !shift_en |-> !{out_valid, out_last, sat_flag});
```

The TB additionally maintains a six-stage transaction-tag pipeline advanced
only by `shift_en`. It asserts that result/valid/bank/last emerge with the same
tag after exactly P_PIPE enabled stages, including across bubbles and FLUSH.
Bind/hierarchical assertions check that the registered window changes only on
`shift_en && px_valid`, that MAC/tree/normalize and in-flight metadata hold when
`shift_en=0`, and that odd product p8 passes through both enabled alignment
registers before the stage-3 sum. These are required pipeline-alignment checks,
not optional coverage.

## 7. Done criteria (feeds [00_charter.md](00_charter.md))

Regression green (exit 0) on `main`; zero assertion failures; no-bubble
inclusive wall-clock `T_first == 73` plus bubble enabled-cycle alignment
checked; all five waveform PNGs captured; regression log committed. Target date:
**Sep 6** ([08_timeline.md](08_timeline.md)).
