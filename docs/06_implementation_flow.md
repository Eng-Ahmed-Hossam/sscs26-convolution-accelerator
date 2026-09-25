# 06 — FPGA Implementation Flow

Owner: WP5. Target: **Zynq-7000, xc7z020clg400-1 (PYNQ-Z2)** — matches the board
demo hardware. Everything is scripted; no GUI-only steps are allowed to produce
report numbers.

## 1. Scripted flow (`fpga/build.tcl`)

One entry point, two modes and two variants:

```bash
vivado -mode batch -source fpga/build.tcl                          # both variants, OOC + full
vivado -mode batch -source fpga/build.tcl -tclargs -variant lut    # LUT variant only
vivado -mode batch -source fpga/build.tcl -tclargs -variant dsp
```

`build.tcl` must, per variant (`USE_DSP=0` named `lut`, `USE_DSP=1` named `dsp`):

1. Read `rtl/pkg_params.sv` explicitly first, then read an explicit ordered
   list of the remaining RTL sources; do not rely on `glob rtl/*.sv` ordering.
   Select the variant by overriding the `conv_top` module parameter at
   synthesis, e.g. `synth_design ... -generic USE_DSP=<0|1>`. W smoke builds
   similarly override the top-level `W` module parameter. Never attempt to
   override a package constant and never edit source between variants.
2. **Out-of-context synthesis** (`synth_design -mode out_of_context -top
   conv_top`) — the honest core-only numbers for the FoM, uncontaminated by I/O.
3. `opt_design`, `place_design`, `phys_opt_design`, `route_design`.
4. Write reports to `fpga/reports/<variant>/`:
   `utilization.rpt` (`report_utilization -hierarchical`), `timing.rpt`
   (`report_timing_summary`), `power.rpt` (SAIF-based, §4), `clocks.rpt`.
5. **Compliance gate (LUT variant only):** parse `utilization.rpt`; if
   DSPs ≠ 0 or BRAM ≠ 0, `error` out of the script. This enforces the FoM
   strategy automatically ([01_spec_compliance.md](01_spec_compliance.md)).
6. Full implementation with `fpga/constraints.xdc` for the board-demo bitstream
   (only when the demo is still on the schedule — [08_timeline.md](08_timeline.md)).

`constraints.xdc`: 125 MHz primary clock (`create_clock -period 8.000`), UART
pin locs for the demo build, `set_property SRL_STYLE` fallbacks if attributes
are ever lost.

## 2. Clock target and timing-closure playbook

Start at **125 MHz (8.0 ns)**. If WNS ≥ 0 with margin ≥ 0.5 ns, try 150 MHz and
report the highest clean frequency as Fmax evidence (Fmax = 1000/(8.0 − WNS) is
the estimate; the *reported* Fmax must come from a clean run at that constraint).

If timing fails, apply in order — one change per run, keep the report diffs:

1. Check the failing path in `timing.rpt`. Expected worst path: adder_tree
   stage 3 (two adds) or the LUT multiplier.
2. Split adder_tree stage 3 into two registered stages (P_PIPE 6→7). Update
   `P_PIPE` in `pkg_params.sv` **only** — latency formula and TB check track it
   automatically. Note the change in [assumptions.md](assumptions.md).
3. Add a register between zero-extension and multiplier (retiming help):
   `phys_opt_design -directive AggressiveExplore` first, structural change second.
4. Last resort: lower the constraint to the highest clean value. Never report a
   frequency with WNS < 0.

## 3. Utilization extraction (for the results table)

From `utilization.rpt` record: Slice LUTs, Slice Registers (FFs), DSP48E1,
Block RAM tiles, plus the SRL count (`LUT as shift register`) to evidence the
SRL32 mapping claim. Copy verbatim numbers into
[10_report_outline.md](10_report_outline.md) results table — no rounding.

## 4. Power methodology — SAIF-based, post-implementation

Toggle-rate default power is not credible; use switching activity from a real
frame:

1. In the simulator, run post-implementation **timing** simulation (or
   functional netlist sim if runtime is prohibitive — state which in the
   report) with a **real-image** vector (realistic pixel statistics, not
   all-zeros).

   **Nominated stimulus: `real_camera_detail32_edge`, bank 0 (Sobel Gx),
   toggle density 0.464 bit-flips per input bit per pixel transition** — the
   highest of any W=32 vector in the suite, so it is the most demanding
   realistic switching activity available and gives a conservative (not
   flattering) dynamic-power figure. Ranking of the alternatives:

   | Vector | Toggle density | Note |
   |---|---|---|
   | `real_camera_detail32_edge` | **0.464** | nominated |
   | `real_coins_detail32_edge` | 0.433 | |
   | `real_page_detail32_edge` | 0.426 | |
   | `rand_00` (synthetic) | — | previous stand-in; uniform-random pixels toggle *more* than any photograph, so it overstates power |

   For a full-scene trace, `tb/results/waves/fullscene256.wlf` is an archived
   W=256 run over a 256×256 native crop (toggle density 0.417, 193,548 outputs,
   verified bit-exact). Note the netlist itself is elaborated at W=32, so the
   netlist SAIF must use a 32-wide vector.
2. Capture SAIF over exactly one full frame of RUN (skip reset/priming):
   `$dumpports`/xsim `log_saif` → `fpga/reports/<variant>/conv_top.saif`.
3. In Vivado: `read_saif conv_top.saif; report_power -file power.rpt`.
4. Record: total on-chip power, **dynamic power**, static power, and the SAIF
   match percentage (must be > 90%; if lower, fix the SAIF scope).
5. **FoM uses dynamic power in watts at the reported Fmax**, stated explicitly
   in the report with the methodology sentence: "Power is vector-based
   post-implementation dynamic power (SAIF from a full-frame simulation with
   real image data)."

## 5. FoM worksheet (fill per variant, commit as `fpga/reports/fom.md`)

```
Throughput T        = 1.0 output px/cycle                      (architectural, SVA-proven)
LUTs                = ______   (utilization.rpt)
DSPs                = ______   (must be 0 for lut variant)
BRAMs               = ______   (must be 0)
Power P             = ______ W (dynamic, SAIF, §4)
Cost                = LUTs + 50×DSPs + 100×BRAMs = ______
FoM                 = T / (P × Cost) = ______
Fmax                = ______ MHz (clean run, WNS = ______)
Abs. throughput     = Fmax × 1.0 = ______ Mpx/s   (context number for report prose)
```

## 6. LUT-vs-DSP variant comparison procedure

1. Build both variants from the **same commit** with the same constraint.
2. Tabulate side by side: LUTs, FFs, DSPs, BRAMs, Fmax/WNS, dynamic power, Cost,
   FoM.
3. Expected outcome and report narrative: DSP variant trades ~9 DSP48E1
   (+450 FoM cost) for fewer LUTs and likely higher Fmax; because FoM's
   throughput is per-cycle (not per-second), the higher Fmax buys nothing in
   FoM while 50×DSP dominates → LUT variant wins the FoM; DSP variant wins raw
   Mpx/s. Verify with real numbers — if the data contradicts this, report the
   data and adjust the headline variant choice.
4. This table is the core of the report's Tradeoffs section
   ([10_report_outline.md](10_report_outline.md) §12).

## 7. Deliverables checklist

- [ ] `fpga/reports/lut/{utilization,timing,power,clocks}.rpt` + saif
- [ ] `fpga/reports/dsp/{utilization,timing,power,clocks}.rpt` + saif
- [ ] `fpga/reports/fom.md` filled for both variants
- [ ] LUT variant: DSP=0, BRAM=0 confirmed by the build gate
- [ ] Timing clean (WNS ≥ 0) at reported frequency, both variants
- [ ] (If demo alive) bitstream + `demo/` bring-up notes
