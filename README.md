# SSCS-EDGE-CONV — Streaming 3×3 CNN Convolution Accelerator

**IEEE SSCS Egypt Chapter 2026 Student Design Competition**

A streaming, line-buffered FPGA convolution accelerator that sustains **1.0 output
pixel per clock cycle**, with runtime-programmable 8-bit signed kernels in four
banks, a fully documented integer fixed-point pipeline (8u in → 16s out,
round-half-up + symmetric saturation), and a bypassable ReLU.

Every number in this README was produced by a command in this repository, and
every command can be re-run from a clean checkout.

---

## Status

| Phase | State | Evidence |
|---|---|---|
| 1 — Golden model | ✅ complete | `phase1-complete` |
| 2 — Vector suite | ✅ complete | `phase2-complete` |
| 3 — Width analysis | ✅ complete | `phase3-complete` |
| 4 — RTL implementation | ✅ complete | `phase4-complete` |
| 5 — RTL verification | ✅ complete | `phase5-complete` |
| 6 — Synthesis & implementation | 🟡 built, not signed off | see *Open items* |
| 7 — Sign-off & report | ⬜ not started | — |

```
python tb/run_regression.py       →  70 runs, 70 PASS, 0 FAIL   (exit 0)
functional coverage               →  27/27 bins = 100%
output pixels compared            →  126,000, bit-exact, 0 mismatches
netlist verification              →  900/900 bit-exact, both variants
```

---

## Results

### Implementation — Zynq-7000 `xc7z020clg400-1`, out-of-context, 125 MHz

Both variants close timing with zero failing endpoints.

| Variant | Slice LUTs | FFs | SRLs | DSPs | BRAMs | WNS | Dynamic power¹ | **FoM²** |
|---|---|---|---|---|---|---|---|---|
| `lut` (`USE_DSP=0`) | 937 | 758 | 20 | **0** | **0** | +0.323 ns | 0.030 W | 0.0356 |
| `dsp` (`USE_DSP=1`) | 377 | 606 | 20 | 9 | **0** | +1.377 ns | 0.022 W | **0.0550** |

¹ SAIF-based, post-implementation, captured over one full streaming frame.
Confidence "High", 100 % design-net match (2724/2724 and 1464/1464).
² `FoM = Throughput / (Power × (LUTs + 50×DSPs + 100×BRAMs))`, throughput = 1.0 px/cycle.

**The DSP variant currently wins the FoM by 54 %**, which contradicts the
zero-DSP strategy in [docs/00_charter.md](docs/00_charter.md). This is a real,
evidenced finding rather than an error: vectorless power analysis understated
the LUT variant by 67 % and the DSP variant by only 5 %, because LUT multipliers
toggle long carry chains while a DSP48 is hardened silicon doing the same
multiply far more efficiently. The DSP variant is cheaper on the cost term
*and* lower power. [docs/06 §6](docs/06_implementation_flow.md) anticipated this
case and directs the headline variant to follow the data. **The choice is not yet
made** — see *Open items*.

### Latency and throughput — closed form, measured

```
T_first = (N−1)·W + N + P_PIPE       measured 73 @ W=32, 137 @ W=64   ✅ exact
Outputs = (W−N+1)²                   measured 900 @ W=32, 3844 @ W=64 ✅ exact
Throughput = 1.0 output px/cycle     no stall path; valid-count asserted
```

---

## The golden model and what "accuracy" means here

`model/golden_conv.py` is the arithmetic **reference** for the entire project.
The RTL is correct if and only if it is bit-exact against it.

### There is no accuracy percentage — that is the design goal, not a gap

The pass criterion is **zero mismatching output pixels**, not an error
tolerance. Quoting "99.9 % accurate" would be a *failure*, not a result. The
accuracy statement has two independent halves:

**1. RTL vs model — exactly 0 error.**

| Level | Checked | Mismatches |
|---|---|---|
| Top level (RTL sim) | 126,000 output pixels | **0** |
| Top level (routed netlist) | 900 output pixels × 2 variants | **0** |
| Datapath stages | 710 stage records × 3 modules | **0** |
| Window generator | 1,872 windows @ W=8 and W=32 | **0** |

**2. Model vs exact mathematics — provably exact until two deliberate steps.**

The convolution itself carries **no rounding at all**: the 20-bit accumulator
represents every reachable sum exactly (`|acc| ≤ 293,760 < 2¹⁹`), proven
analytically in [docs/03 §3](docs/03_fixed_point.md) and confirmed empirically —
the vector suite drives the accumulator to **exactly** the analytic worst case
of −293,760. Observed range equals reachable range at *every* internal node.

Only two operations lose information, both deliberate and documented:

| Operation | Error | Measured |
|---|---|---|
| Round-half-up shift | ≤ ½ LSB | mean bias **+0.007 LSB** |
| (vs truncation, rejected) | ≤ 1 LSB | mean bias **−0.495 LSB** |
| Symmetric saturation | policy, not error | both rails exercised |

### How that is enforced

- **Integer-only, proven structurally.** `--self-audit` walks the AST of the
  model and rejects any float literal, any `/` operator, any float-bearing
  import, and any `float()`/`round()` call, then runs a live dtype check. Not an
  assertion of intent — a proof over the source.
- **The model is never edited to agree with the RTL.** Where they disagree,
  [docs/03_fixed_point.md](docs/03_fixed_point.md) arbitrates.
- **Single source of truth.** Every width comes from
  [rtl/pkg_params.sv](rtl/pkg_params.sv); `model/pkg_params.py` parses it with
  no fallback numbers, so Python cannot drift from the RTL.
- **The regression is proven able to fail.** A deliberately injected
  pipeline-alignment bug (reading the wrong alignment register in
  `adder_tree`) was caught, exited nonzero, and localised to the exact output
  pixel with a full stage trace. A regression that has never failed proves
  nothing.

### What the evidence does *not* prove

126,000 pixels is a large sample of an astronomically large input space — this
is high confidence, **not formal equivalence**. The `docs/05 §6` properties run
as *procedural checkers* rather than SystemVerilog assertions, and the coverage
bins are procedural too.

---

## Quick start

```bash
python model/gen_vectors.py --all --skip-real   # generate the vector suite
python model/golden_conv.py --self-audit        # prove the model is integer-only
python tb/run_regression.py                     # RTL vs model, exits nonzero on any mismatch
```

FPGA flow (needs Vivado; tested on 2018.2):

```bash
vivado -mode batch -source fpga/build.tcl       # both variants, OOC + full implementation
python fpga/run_postimpl.py --variant lut       # netlist verification + SAIF power
vivado -mode batch -source fpga/fom.tcl         # FoM worksheet
```

Model-side test suites (no simulator required):

```bash
python model/test_golden_conv.py    # 20 tests — arithmetic, incl. a hand-computed case
python model/test_vectors.py        # 21 tests — the vectors exercise what they claim
python model/test_width_study.py    #  9 tests — width proof and rounding tradeoff
python -m pytest tb/test_regression_gate.py     # 3 tests — sign-off gate
```

---

## Repository map

| Path | Contents |
|---|---|
| `rtl/` | 8 synthesizable modules. `pkg_params.sv` is the single source of every constant. |
| `model/` | Integer golden model, vector generator, width study, stage-dump exporter, test suites |
| `model/vectors/` | 31 generated vectors (140 runs) + `baseline_stats.md` |
| `tb/` | Unit TBs, top-level TB, netlist TB, directed corner tests, regression runner |
| `fpga/` | Scripted Vivado flow, post-implementation simulation, SAIF power, FoM worksheet |
| `fpga/reports/` | Committed utilization / timing / power reports for both variants |
| `docs/` | Design contract, 00–10 + `assumptions.md` |

### Design at a glance

```
px_data ─► line_window ─► mac_array ─► adder_tree ─► normalize ─► out_data
px_valid   (9 taps, 8u)   (9 mults,    (9→1, 20s     (round, sat,   out_valid
     ▲                     17s prods)   exact)        opt. ReLU)    out_last
     │          coef[0..8] (8s)
 ctrl_fsm ◄──── kernel_regfile (4 banks × 9 × 8s)
```

No frame buffer and no BRAM: two `(W−N)`-deep SRL delay lines plus nine tap
registers form the window. `P_PIPE = 6` registered stages, one shared
`shift_en` advance, no stall path anywhere.

---

## Open items

1. **Real image assets** — `model/vectors/assets/` is empty, so the
   `real_lena32` / `real_neu32` / `real_pcb32` family cannot be generated.
   `gen_vectors.py --all` fails loudly rather than substituting synthetic data
   ([assumption A9](docs/assumptions.md)). Power currently uses `rand_00`;
   uniform-random pixels toggle *more* than photographic ones, so both power
   figures are **overestimates**. `python tb/run_regression.py --signoff`
   fails today for exactly this reason, and must pass before submission.
2. **Headline variant not chosen** — the DSP variant leads on measured data but
   inverts the charter's narrative. Needs an explicit decision, ideally after
   real-image power.
3. **SVA and covergroups** — the `docs/05 §6` properties are implemented as
   procedural checkers because the primary simulator (ModelSim ASE) supports
   neither. Vivado `xsim` is now available and could host the real assertions.
4. **Phase 7** — results table, traceability matrix, waveform captures.

---

## Conventions

Read [CONTRIBUTING.md](CONTRIBUTING.md) before changing anything. In short: no
literal widths outside `pkg_params.sv`; signal names match
[docs/04_interfaces.md](docs/04_interfaces.md) character-for-character; nothing
merges without a green regression; every simplifying assumption is logged in
[docs/assumptions.md](docs/assumptions.md) with its rationale.

Deadline: **15 September 2026**.
