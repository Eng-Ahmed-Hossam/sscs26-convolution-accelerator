# 07 — Work Packages

Four people, seven WPs — everyone owns ≥1 WP; WP7 is shared-load in week 3.
Assign owners in [README.md](../README.md) table on day 1. Effort in
person-days (pd) against the 22-day runway ([08_timeline.md](08_timeline.md)).
All interfaces are frozen in [04_interfaces.md](04_interfaces.md) — WPs 1–4
start **in parallel on day 1**.

## Foundation — parameter source (before WP1)

Create `rtl/pkg_params.sv` first with fixed N=3, all fixed widths/constants, and
the defaults for the build-selectable W and `USE_DSP` top-level module
parameters. Create `model/pkg_params.py`, the read-only Python bridge that
parses those constants without fallback numbers. Compile `pkg_params.sv`
explicitly before every other
SystemVerilog source. WP2 owns subsequent maintenance, but WP1 depends on this
foundation so Python and RTL never acquire separate parameter sources.

## WP1 — Golden model + vectors

- **Scope:** `model/golden_conv.py`, `model/gen_vectors.py`, all vector
  directories in `model/vectors/` per the list in
  [05_verification_plan.md](05_verification_plan.md) §2.
- **Inputs:** [03_fixed_point.md](03_fixed_point.md) (the arithmetic contract),
  vector list.
- **Outputs:** integer-only golden model with CLI; generated
  `image/kernel/config/expected` files for all ≥28 vectors; committed seeds.
- **Definition of done:** `gen_vectors.py --all` regenerates everything
  deterministically; golden model contains zero float operations (grep-clean
  for `float`, `numpy` float dtypes, `/` division); impulse vector manually
  hand-checked against a paper calculation.
- **Depends on:** parameter-source foundation. **Blocks:** WP4. **Effort:** 3 pd.

## WP2 — Datapath RTL

- **Scope:** maintain/use the foundational `rtl/pkg_params.sv`, plus
  `line_window.sv`, `mac_array.sv` (incl.
  `USE_DSP` generate), `adder_tree.sv`, `normalize.sv`.
- **Inputs:** [02_architecture.md](02_architecture.md) §2, §4–6;
  [04_interfaces.md](04_interfaces.md) §2–6; [03_fixed_point.md](03_fixed_point.md).
- **Outputs:** the five modules, lint-clean, each passing its unit TB.
- **Definition of done:** unit TBs green (`tb_line_window`, `tb_adder_tree`,
  `tb_normalize`); `(* srl_style *)`/`(* use_dsp *)` attributes present; no
  independent literal widths — fixed values/defaults come from `pkg_params`,
  with only propagated W/`USE_DSP` module parameters and pure derivations
  allowed; elaborates at fixed N=3, W=64 (smoke).
- **Depends on:** interface freeze (done). **Blocks:** WP3 integration. **Effort:** 4 pd.

## WP3 — Control + integration RTL

- **Scope:** `rtl/ctrl_fsm.sv`, `kernel_regfile.sv`, `conv_top.sv`.
- **Inputs:** [02_architecture.md](02_architecture.md) §3, §7;
  [04_interfaces.md](04_interfaces.md) §1, §3, §7.
- **Outputs:** integrated `conv_top` elaborating and passing the impulse vector
  end-to-end.
- **Definition of done:** FSM matches the state diagram exactly (enum names
  IDLE/LOAD_KERNEL/PRIME/RUN/FLUSH), including the mandatory one-cycle
  LOAD_KERNEL arming state; multi-kernel bank swap works with counters reset at
  FLUSH→RUN; no-bubble inclusive `T_first = 73` is measured and bubble runs
  preserve enabled-cycle alignment; `busy/done` protocol per
  [04_interfaces.md](04_interfaces.md) §7.
- **Depends on:** WP2 module shells (day 3), full WP2 (integration ~Sep 2).
  **Blocks:** WP4 full regression, WP5. **Effort:** 4 pd.

## WP4 — Verification environment

- **Scope:** `tb/tb_conv_top.sv`, unit TBs, `tb/run_regression.py`, SVA,
  waveform capture.
- **Inputs:** [05_verification_plan.md](05_verification_plan.md) (entire file is
  the spec), WP1 vectors.
- **Outputs:** self-checking TB with scoreboard + HW-output dumps; regression
  runner meeting the §4 contract; five waveform PNGs in `docs/waves/`; committed
  regression log.
- **Definition of done:** `python tb/run_regression.py` exit 0, full matrix
  printed; deliberately-injected bug (flip one coefficient) is caught with
  nonzero exit; all listed SVAs and pipeline-alignment checks active and
  passing; px_valid-bubble runs included.
- **Depends on:** WP1 (vectors), WP3 (integrated top). **Blocks:** WP5 numbers,
  merge gate for everything. **Effort:** 4 pd.

## WP5 — Implementation + FoM

- **Scope:** `fpga/build.tcl`, `constraints.xdc`, both variant builds, SAIF
  power flow, FoM worksheet, timing closure.
- **Inputs:** [06_implementation_flow.md](06_implementation_flow.md) (entire
  file is the spec), green regression from WP4.
- **Outputs:** `fpga/reports/{lut,dsp}/*`, `fpga/reports/fom.md`, variant
  comparison table.
- **Definition of done:** the checklist in
  [06_implementation_flow.md](06_implementation_flow.md) §7, fully ticked.
- **Depends on:** WP3 (any elaborating top for early trial synth — start OOC
  synthesis runs by Aug 30 even before regression is green), WP4 (final
  numbers). **Blocks:** WP7 results section. **Effort:** 4 pd.

## WP6 — ML demo + application

- **Scope:** `model/train_demo_cnn.py`, `model/quantize_kernels.py`, Sobel
  demo assets, NEU dataset pipeline, full-network agreement study; optional
  `demo/uart_shell/` + `demo/host/` board demo.
- **Inputs:** [09_bonus_and_stretch.md](09_bonus_and_stretch.md) (acceptance
  criteria live there), WP4 regression for HW runs.
- **Outputs:** trained tiny CNN, INT8 first-layer kernels as vector files,
  bit-exact HW feature maps, agreement table, edge-map images; board-demo
  bitstream + host script if not cut.
- **Definition of done:** per-item acceptance criteria in
  [09_bonus_and_stretch.md](09_bonus_and_stretch.md) §2–4.
- **Depends on:** WP1 (quantize → vector format), WP4 (to run HW). Board demo
  additionally depends on WP5 bitstream. **First candidate for cutting**
  (board demo first, then full-network study — see cut-list). **Effort:** 4 pd
  (+2 pd board demo).

## WP7 — Report + presentation

- **Scope:** the report per [10_report_outline.md](10_report_outline.md), the
  presentation (≤10 slides), final packaging of all deliverables.
- **Inputs:** every docs/ file (large parts are pre-drafted prose — reuse
  verbatim), all reports/logs/waves from WP4/WP5/WP6.
- **Outputs:** final PDF report, slide deck, submission bundle.
- **Definition of done:** every deliverable from the competition list included;
  results table has no empty cells; compliance matrix
  ([01_spec_compliance.md](01_spec_compliance.md)) embedded with evidence; one
  full team read-through completed; frozen **Sep 13**.
- **Depends on:** everything; skeleton starts day 1 (paste pre-drafted prose
  immediately, don't wait for numbers). **Effort:** 4 pd, mostly week 3.

## Dependency graph

```
WP1 ──────────────┐
WP2 ──► WP3 ──► WP4 ──► WP5 ──► WP7
          ▲        │        └──► WP6(board)
          └── docs/04 (frozen)   WP6(ML) ◄── WP1
```
