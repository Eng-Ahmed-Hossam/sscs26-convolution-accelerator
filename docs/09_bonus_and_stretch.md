# 09 — Bonuses and Stretch Goals

Owner: WP6 (with WP3/WP5 support). Every bonus below has binary acceptance
criteria — a bonus without its evidence artifact does not count as done.

## 1. Architectural bonuses (already in the baseline design)

| Bonus | Acceptance criteria |
|---|---|
| **1 output px/cycle pipelined** | SVA `a_valid_count` proves 900 outputs; waveform shows out_valid high for 30 consecutive cycles per row during steady-state RUN; latency formula section in report |
| **Multiple kernels** | Regression vector with `cfg_num_kernels=4`: one frame streamed 4×, four bit-exact output frames, `out_bank` sequencing 0→1→2→3; bank-swap waveform PNG |
| **ReLU** | `tb_normalize` directed corners pass; ReLU-clip waveform PNG; every regression vector runs at relu_en ∈ {0,1}; SVA `a_relu` |

## 2. Industrial-inspection ML demo (bonus B5, flagship)

**Plan — execute in this order:**

1. `model/train_demo_cnn.py`: train a tiny CNN (conv 3×3×K, K=4 kernels → ReLU
   → maxpool → small FC) on the **NEU surface-defect dataset** (6 classes of
   steel-strip defects — the industrial-inspection framing the bonus asks for).
   Grayscale, images resized to 32×32. **Fallback if NEU download/training
   stalls > 1 day: MNIST**, same topology (cut-list item 3 in
   [08_timeline.md](08_timeline.md)).
2. `model/quantize_kernels.py`: post-training quantization of the **first conv
   layer only** to INT8 (symmetric, per-tensor): scale each kernel to
   [−128,127], emit `kernel_b0..b3.txt` in the vector format of
   [05_verification_plan.md](05_verification_plan.md) §1, with `shift=7`
   (Q1.7 interpretation per [03_fixed_point.md](03_fixed_point.md) §4) and the
   quantization scales recorded in `config.json`.
3. Run test images through the accelerator (4 banks = 4 feature maps per image,
   relu_en=1) via the normal regression path.
4. **Bit-exactness check:** HW feature maps vs `golden_conv.py` on the
   quantized kernels — must be 0-mismatch (this is the same contract as any
   vector, and it is the demo's headline claim).
5. **Full-network agreement:** feed HW-computed first-layer feature maps into
   the Python remainder of the network; report top-1 agreement vs the all-Python
   float network over the test set (expect high-90s %; report the true number).

**Acceptance:** feature-map image grid (input | HW maps | Python maps | diff=0)
committed as `docs/waves/demo_featmaps.png`; agreement percentage in report;
one paragraph in report §Application Demo explaining the surface-inspection use
case.

## 3. Sobel visual demo — DELIVERED

Load Sobel Gx/Gy into banks 0/1 (bank 2 = identity), `shift=0`, run the
real-image vectors, combine |Gx|+|Gy| in the host script.

**Artefacts:** `docs/report/figures/demo_real_*.png` (23 figures, one per
accepted crop) and `docs/report/figures/demo_headline_w256.png` (the headline
full-scene figure). Captions in `docs/report/figures/README.md` and
`demo_headline_w256.md`.

**Acceptance — met:**

| Criterion | Evidence |
|---|---|
| Edge maps from **HW outputs**, not Python | `model/demo_real_images.py` reads `tb/results/<vector>/hw_out_b*.txt`, the files the testbench writes while streaming. It never re-computes convolution for display. |
| Visibly correct | Gx suppresses horizontal grain and isolates vertical edges, Gy the converse, \|Gx\|+\|Gy\| rings every surface defect. |
| Bit-exact | Every map is compared against the golden model **before** any display transform. Both demo scripts **refuse to render** a figure for a mismatching vector. |
| Identity sanity | The identity bank is checked equal to the input interior pixel-for-pixel; a deviation aborts rendering as a blocking bug. |

### Display normalisation — presentation only, never a criterion

The 16-bit signed outputs are mapped to 8-bit for display **strictly after**
the bit-exact comparison has already passed. Integer, per map:

* signed maps (Gx, Gy, learned features): `d = 128 + (v * 127) // max|v|`, so 0
  is mid-grey;
* magnitude: `d = (v * 255) // max(v)`.

The peak used for each map is printed in the caption file, so any figure traces
back to its raw values. **This transform can never turn a failing run into a
passing one**, because the comparison happens first and a mismatch stops the
render outright.

## 4. Optional UART board demo (bonus B4 — first on the cut-list)

PYNQ-Z2. `demo/uart_shell/`: UART RX/TX (115200-8N1) wrapping `conv_top`:
opcode protocol `K` (load 4×9 coefficients), `C` (config byte: relu, shift,
num_kernels), `I` (stream 1024 image bytes), then shell returns 900×2 bytes
(big-endian int16) per bank. `demo/host/run_demo.py`: sends image, receives HW
outputs, compares against `golden_conv.py`, prints PASS/FAIL and renders the
edge map live. Acceptance: photo of the board + host-side log showing 0
mismatches, both in the report. Go/no-go decision **Sep 9** per
[08_timeline.md](08_timeline.md).

## 5. Stretch goals — start only if regression is green with ≥1 week left (i.e., green by Sep 8)

1. **Winograd F(2×2, 3×3) analysis — writeup only, no RTL.** One report page:
   arithmetic count (9 mults/output direct vs 36 mults per 2×2 tile = 2.25×
   reduction), why it was **considered and deferred** — transform adders/wider
   intermediates erode the LUT saving at N=3/8-bit, breaks the clean
   1-px/cycle streaming structure and the exactness proof, and schedule risk vs
   a working verified core. This "engineering judgment" page is cheap and
   scores well; goes in report §Tradeoffs.
2. **Runtime-configurable W discussion** — report paragraph: W is compile-time
   (assumption A1); making it runtime would replace SRL fixed delays with
   addressed line memories (→ BRAM, ×100 FoM cost) or max-length SRLs with tap
   muxes; quantify the FoM impact estimate.
3. **CI workflow:** GitHub Actions running `python tb/run_regression.py`
   (Verilator) on every PR; badge in README. Only if a team member has slack —
   the CONTRIBUTING merge rule already enforces the same gate manually.
