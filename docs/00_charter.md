# 00 — Project Charter

## Goal

Win the IEEE SSCS Egypt Chapter 2026 Student Design Competition by (a) maximizing
the published Figure of Merit and (b) capturing every bonus item, while shipping a
report whose every claim is backed by a reproducible artifact in this repository.

**FoM = Throughput [output px/cycle] / (Power × (LUTs + 50×DSPs + 100×BRAMs))**

Deadline: **September 15, 2026.** Deliverables: report, RTL, testbench, golden
model, test vectors, FPGA synthesis/implementation reports, short presentation.

## Judging levers → our design answers

| Lever | Our answer |
|---|---|
| Throughput numerator | No backpressure: accepts one pixel per cycle when `px_valid=1`, and the clock-enabled pipeline holds coherently across input-valid gaps. Continuous `px_valid` sustains 1.0 output px/cycle for successive in-bounds windows. This is the maximum the FoM numerator allows per clock — do not chase multi-pixel outputs; they inflate LUTs faster than the numerator. |
| DSPs (×50 penalty) | **Zero.** All 9 multipliers are LUT-mapped signed multipliers. `USE_DSP=1` variant exists only for the tradeoff table. |
| BRAMs (×100 penalty) | **Zero.** Line buffers are SRL/SRL32 shift registers (W−N = 29 deep at defaults) — far below BRAM threshold. |
| LUTs | Kept minimal: N²=9 small 9×8 multipliers, a 9-term adder tree, one normalize stage. No frame buffer, no padding logic. |
| Power | Small design + SAIF-driven post-implementation power analysis with realistic switching ([docs/06_implementation_flow.md](06_implementation_flow.md)). Report vector-based dynamic power, not toggle-rate guesses. |
| Bonuses | 1 px/cycle pipeline ✔, 4 programmable kernel banks ✔, bypassable ReLU ✔, board demo (UART) ✔ if schedule permits, industrial-inspection demo (NEU surface defects + Sobel) ✔. See [09_bonus_and_stretch.md](09_bonus_and_stretch.md). |
| Verification credibility | Bit-accurate integer golden model, ≥28 vectors, self-checking TB, one-command regression, SVA. See [05_verification_plan.md](05_verification_plan.md). |
| Report quality | Every report section pre-drafted in docs/; closed-form latency/throughput formulas, not just measurements. See [10_report_outline.md](10_report_outline.md). |

## Definition of Done (whole project)

Check every box before submission:

- [ ] `python tb/run_regression.py` exits 0 with all vectors passing, both `relu_en` settings, all 4 kernel banks exercised.
- [ ] `vivado -mode batch -source fpga/build.tcl` produces timing-clean (WNS ≥ 0) implementation for **both** variants (`USE_DSP=0` and `USE_DSP=1`) with utilization, timing, and SAIF-based power reports committed under `fpga/reports/`.
- [ ] LUT variant shows DSP=0 and BRAM=0 in `report_utilization`; if not, the project is not done — fix synthesis attributes.
- [ ] FoM computed on the worksheet in [06_implementation_flow.md](06_implementation_flow.md) for both variants; LUT variant is the headline number.
- [ ] Every row of the spec-compliance table in [01_spec_compliance.md](01_spec_compliance.md) has evidence linked (file + report section).
- [ ] Report follows [10_report_outline.md](10_report_outline.md) with the results table fully populated, waveform screenshots included, and all assumptions from [assumptions.md](assumptions.md) stated verbatim.
- [ ] ML demo produces bit-exact HW-vs-Python first-layer feature maps and a full-network agreement number ([09_bonus_and_stretch.md](09_bonus_and_stretch.md)).
- [ ] Presentation (≤10 slides) drafted from the report and rehearsed once.
- [ ] Everything above is on `main`, and `main` regression is green.

## Non-goals

No stride ≠ 1, no padding modes, no multi-channel input, no runtime-configurable W
(discussed as future work only). Any scope addition requires the cut-list check in
[08_timeline.md](08_timeline.md).
