# 10 — Report Outline

Owner: WP7. Target ≤ 20 pages + appendices. Sections map 1:1 to the required
deliverables list. "Source" tells the writer where pre-drafted prose already
exists — paste, then edit; do not rewrite from scratch.

## Section plan

| § | Section | Content | Source |
|---|---|---|---|
| 1 | Introduction & objectives | Task restatement, FoM strategy thesis (1 px/cycle, zero BRAM/DSP), bonus coverage summary | [00_charter.md](00_charter.md) |
| 2 | Assumptions | The numbered assumptions, verbatim, with rationale (competition instruction 4) | [assumptions.md](assumptions.md) |
| 3 | Architecture overview | Top-level block diagram (export of `docs/architecture/top_block.drawio`), dataflow narrative, no-backpressure valid-driven pipeline with coherent holds across input gaps | [02_architecture.md](02_architecture.md) §1 |
| 4 | Memory organization & window generation | Serpentine chain figure, SRL mapping, storage math (536 bits), no-frame-buffer rationale, border masking (W×W → (W−N+1)²) | [02_architecture.md](02_architecture.md) §2 |
| 5 | Datapath | MAC array, adder tree with alignment registers, normalize; per-stage widths table | [02_architecture.md](02_architecture.md) §4–6, [03_fixed_point.md](03_fixed_point.md) §2 |
| 6 | Control FSM | State diagram (export of `fsm.drawio`), counters, bank-swap protocol, latency **formulas**: no-bubble inclusive T_first = (N−1)·W + N + P_PIPE = 73 with first accepted pixel numbered 1; outputs = 900; frame time | [02_architecture.md](02_architecture.md) §7–8 |
| 7 | Fixed-point analysis | Input-format justification, width chain, worst-case exactness proof (9·255·128 = 293,760 < 2¹⁹), round/saturate/ReLU policy | [03_fixed_point.md](03_fixed_point.md) — paste §1–4 verbatim |
| 8 | RTL implementation details | Module list w/ line counts, pkg_params single-source, USE_DSP generate, synthesis attributes | [04_interfaces.md](04_interfaces.md) intro + rtl/ |
| 9 | Verification | Golden model (integer-only), vector table, self-checking TB + scoreboard, regression matrix (paste committed log), SVA list, HW-vs-expected comparison statement | [05_verification_plan.md](05_verification_plan.md) |
| 10 | Waveforms | The five PNGs from `docs/waves/` with captions: window formation, no-bubble inclusive first valid @73, saturation, ReLU clip, bank swap | [05_verification_plan.md](05_verification_plan.md) §5 |
| 11 | FPGA implementation results | Both variants: utilization, Fmax + timing status, SAIF power methodology + numbers, FoM worksheet | [06_implementation_flow.md](06_implementation_flow.md), `fpga/reports/` |
| 12 | Tradeoffs | LUT-vs-DSP comparison table + narrative; Winograd considered-and-deferred page; runtime-W discussion | [06_implementation_flow.md](06_implementation_flow.md) §6, [09_bonus_and_stretch.md](09_bonus_and_stretch.md) §5 |
| 13 | Application demo | NEU CNN demo: pipeline figure, bit-exact feature maps, full-network agreement %, Sobel edge maps, (board demo photo + log if done) | [09_bonus_and_stretch.md](09_bonus_and_stretch.md) §2–4 |
| 14 | Conclusion | Results vs spec, FoM headline, what we'd do next | write fresh |
| A | Appendix: compliance matrix | Full table with evidence links | [01_spec_compliance.md](01_spec_compliance.md) |
| B | Appendix: how to reproduce | The three quick-start commands | [README.md](../README.md) |

## Required results table (place in §11; Specification column is pre-filled — do not edit it; fill Team Result from reports only)

| Parameter | Specification | Team Result | Units | Comments |
|---|---|---|---|---|
| Input image size | ≥ 32×32, grayscale, single channel | 32×32 (W compile-time `conv_top` parameter) | px | One W per bitstream, assumption A1 |
| Input precision | Unsigned fixed-point, justified | UQ8.0 | bits | Native grayscale depth, §7 |
| Kernel size / programmability | N×N programmable | Fixed N=3; four runtime-programmable coefficient banks | — | Assumption A6; §6 bank swap |
| Kernel precision | 8-bit signed | 8-bit signed (Q8.0 / Q1.7 via shift) | bits | §7 |
| Output precision | ≥ 16-bit signed, policy documented | 16-bit signed, round-half-up + saturate + optional ReLU | bits | §7; exact 20-bit internal |
| Architecture type | — | Streaming line-buffer, no-backpressure, clock-enabled, validity-masked | — | Coherent hold across valid gaps; zero BRAM / zero DSP |
| Multipliers / MACs | — | 9 (= 3²), LUT-mapped | — | DSP variant in §12 |
| Pipeline stages | — | P_PIPE = 6 | stages | 1 MAC + 3 tree + 2 normalize |
| Latency (first output) | — | (N−1)·W + N + P_PIPE = **73** (no-bubble, inclusive, formula + measured) | cycles | First accepted pixel = cycle 1; §6 |
| Throughput | — | 1.0 output px/cycle for successive in-bounds windows; ___ Mpx/s @ Fmax | px/cycle | Continuous `px_valid`; FoM numerator; bonus B1 |
| FPGA utilization | Report LUT/FF/DSP/BRAM | LUT ___ / FF ___ / DSP **0** / BRAM **0** | — | LUT variant headline; DSP variant §12 |
| Fmax / timing status | Report | ___ MHz, WNS = ___ (met) | MHz/ns | Clean-run rule, [06](06_implementation_flow.md) §2 |
| Power | Report | ___ (dynamic, SAIF post-impl) | W | Methodology §11 |
| Verification status | Bit-exact vs golden model | ___ vectors × configs, 0 mismatches, exit 0 | — | Regression log appendix |
| FoM | T / (P × (LUT + 50·DSP + 100·BRAM)) | ___ | 1/(W·LUT) | Worksheet in `fpga/reports/fom.md` |

## Presentation (≤10 slides, drafted Sep 11–12)

1 title/team · 2 problem+FoM strategy · 3 architecture block diagram ·
4 window chain + latency formula · 5 fixed-point chain + proof · 6 verification
matrix + waves · 7 implementation results table · 8 LUT-vs-DSP tradeoff ·
9 demo (feature maps / edge maps / board) · 10 FoM headline + conclusion.
