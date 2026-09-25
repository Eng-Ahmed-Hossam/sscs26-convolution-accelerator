# 01 — Spec Compliance Matrix

Update the Evidence column as artifacts land. A row without evidence is
non-compliant regardless of what the RTL does. This table is copied into the
report's compliance appendix.

## Mandatory specification items

| # | Spec item | Our design answer | Implemented in | Evidence / proven by |
|---|---|---|---|---|
| 1 | N×N convolution on grayscale / single-channel feature map, ≥32×32 input, stride 1 | Fixed N=3 (3×3); W=32 by default and compile-time selectable through the `conv_top` W parameter. Fixed constants and defaults come from `rtl/pkg_params.sv`. Stride is fixed at 1 by construction of the streaming window. | `rtl/pkg_params.sv`, `rtl/line_window.sv` | Regression passes at fixed N=3, W=32; parameter smoke test at fixed N=3, W=64 (see [05_verification_plan.md](05_verification_plan.md)) |
| 2 | Unsigned fixed-point input, format justified | UQ8.0 pixels (8-bit unsigned) — native depth of grayscale sensors and PNG/BMP 8-bit images; justification prose in [03_fixed_point.md](03_fixed_point.md) §1, ready to paste into report | `rtl/conv_top.sv` port `px_data[7:0]` | Report §Fixed-Point Analysis |
| 3 | Programmable N×N kernel, 8-bit signed coefficients | Four banks × 9 signed 8-bit coefficients; coefficient values and active bank are runtime-programmable, while geometry is fixed 3×3 | `rtl/kernel_regfile.sv` | `tb/tb_kernel_regfile.sv`; regression loads distinct kernels into all 4 banks |
| 4 | Output ≥16-bit signed; overflow/rounding/saturation policy documented | 16-bit signed output. Internally exact 20-bit accumulator (no intermediate overflow possible — proof in [03_fixed_point.md](03_fixed_point.md) §3), then round-half-up shift by `cfg_out_shift`, then symmetric saturation to [−32768, +32767] | `rtl/normalize.sv` | Saturation test vector (±max-kernel case) passes; waveform screenshot of saturation event |
| 5 | Verification vs Python golden model: test cases, expected outputs, HW outputs, comparison | Bit-accurate integer-only `golden_conv.py`; ≥28 vectors; self-checking TB dumps HW outputs; `run_regression.py` prints pass/fail matrix and exits nonzero on mismatch | `model/golden_conv.py`, `tb/run_regression.py` | Committed regression log + `model/vectors/` + report §Verification |
| 6 | Full FPGA synthesis + implementation results: LUTs, FFs, DSPs, BRAMs, Fmax, timing status, power | Scripted Vivado flow on Zynq-7000 (xc7z020), out-of-context + full impl, SAIF-based post-route power; reports committed for both LUT and DSP variants | `fpga/build.tcl` | `fpga/reports/*` + report §Implementation Results |
| 7 | Assumptions documented (competition instruction 4) | Running log with rationale and report mapping | [docs/assumptions.md](assumptions.md) | Report §Assumptions |

## Bonus items

| # | Bonus | Our design answer | Implemented in | Evidence |
|---|---|---|---|---|
| B1 | One output pixel per cycle, pipelined | No-backpressure, clock-enabled datapath with P_PIPE=6 register stages. Data and aligned metadata hold coherently across `px_valid` gaps; continuous `px_valid` sustains 1.0 px/cycle over each in-bounds output run. SVA proves valid-count = (W−N+1)² = 900 | `rtl/line_window.sv`, `rtl/ctrl_fsm.sv` | SVA `a_valid_count`; throughput formula in report |
| B2 | Multiple kernels | 4 banks; FSM swaps bank at FLUSH→RUN and re-runs the frame with the next kernel; `cfg_num_kernels` selects 1–4 | `rtl/kernel_regfile.sv`, `rtl/ctrl_fsm.sv` | Multi-kernel regression vector: same frame, 4 kernels, 4 golden outputs |
| B3 | ReLU | `max(0, x)` after saturation, bypassable via `cfg_relu_en` config bit | `rtl/normalize.sv` | ReLU-clip waveform screenshot; regression runs each vector with relu_en=0 and 1 |
| B4 | Board demonstration | UART shell on PYNQ-Z2: PC streams image → accelerator → PC compares vs golden. First item on the cut-list — see [08_timeline.md](08_timeline.md) | `demo/uart_shell/`, `demo/host/` | Photo + logged PC-side comparison in report |
| B5 | Edge-detection / industrial-inspection demo | (a) Sobel Gx/Gy visual edge demo; (b) tiny CNN trained on NEU surface-defect dataset (MNIST fallback), first conv layer quantized to INT8 and executed on the accelerator, bit-exact vs Python | `model/train_demo_cnn.py`, `model/quantize_kernels.py` | Feature-map images + agreement table in report §Application Demo |

## Anti-compliance risks (check before freeze)

- Vivado inferring BRAM for line buffers → breaks the FoM story. Guard: `(* srl_style = "srl" *)` on delay lines + utilization report check in `build.tcl` (fails the build if BRAM ≠ 0 or DSP ≠ 0 in the LUT variant).
- Signed×unsigned multiply mis-inference → zero-extend pixels to 9-bit signed **before** the multiply; never rely on tool interpretation ([03_fixed_point.md](03_fixed_point.md)).
- Golden model using floats anywhere → forbidden; `golden_conv.py` must be integer-only (asserted in code, see [05_verification_plan.md](05_verification_plan.md)).
