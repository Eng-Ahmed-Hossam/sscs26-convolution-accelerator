# SSCS-EDGE-CONV — Streaming 3×3 CNN Convolution Accelerator

**IEEE SSCS Egypt Chapter 2026 Student Design Competition** · Zynq-7000 `xc7z020clg400-3` · Vivado 2018.2 · standard clock 100 MHz

A line-buffered FPGA convolution engine that sustains **one output pixel every
clock cycle** with **zero BRAM**. It has four runtime-programmable banks of 8-bit
signed 3×3 kernels and a proven-exact integer pipeline (8u in → 16s out,
round-half-up, symmetric saturation, optional ReLU). Every output pixel is
checked bit-exact against an integer golden model.

<table>
<tr>
<td align="center"><b>1.0</b><br>output px / cycle</td>
<td align="center"><b>0</b><br>BRAM</td>
<td align="center"><b>942 LUT</b> + 0 DSP<br>or <b>372 LUT</b> + 9 DSP</td>
<td align="center"><b>217.2 MHz</b> / <b>252.1 MHz</b><br>Fmax (LUT / DSP)</td>
<td align="center"><b>15 mW</b> / <b>19 mW</b><br>dynamic @ 100 MHz</td>
<td align="center"><b>0</b><br>mismatching pixels</td>
</tr>
</table>

![Sobel edge detection on a 256×256 photograph, computed by the RTL](docs/report/figures/demo_headline_w256.png)

*Every edge map above is **RTL simulation output**, not Python. It is a
256×256 native-resolution crop of a real photograph, never resized. The
193,548 output pixels across three kernel banks matched the golden model
bit-exactly before the figure was drawn. Details: [demo_headline_w256.md](docs/report/figures/demo_headline_w256.md).*

---

## Contents

1. [Headline results](#1-headline-results)
2. [Architecture](#2-architecture)
3. [How it is optimized](#3-how-it-is-optimized)
4. [Implementation results (Vivado)](#4-implementation-results-vivado)
5. [Timing and Fmax](#5-timing-and-fmax)
6. [Power and Figure of Merit](#6-power-and-figure-of-merit)
7. [Verification](#7-verification)
8. [Reproducing the results](#8-reproducing-the-results)
9. [Repository map and status](#9-repository-map-and-status)

---

## 1. Headline results

Two build variants come from the same RTL, selected by one parameter
(`USE_DSP`). Both were implemented in Vivado 2018.2 on `xc7z020clg400-3`,
first at the **100 MHz standard clock** and then at their **Fmax**. All values
are post-implementation, from the screenshots in
[§4](#4-implementation-results-vivado).

| | **`lut`** (`USE_DSP=0`) | **`dsp`** (`USE_DSP=1`) |
|---|---|---|
| Slice LUTs | 942 (1.77 %) | **372** (0.70 %) |
| Flip-flops (core / with I/O wrapper) | 830 / 886 (0.83 %) | 677 / 734 (0.69 %) |
| DSP48E1 | **0** | 9 (4.09 %) |
| BRAM | **0** | **0** |
| Timing @ 100 MHz, implemented | WNS **+4.443 ns**, WHS +0.103 ns, 0 failing | WNS **+5.356 ns**, WHS +0.105 ns, 0 failing |
| **Fmax**, implemented at that clock | **217.2 MHz** (4.604 ns, WNS +0.007) | **252.1 MHz** (3.966 ns, WNS +0.279) |
| Throughput at 100 MHz / at Fmax | 100 / **217 Mpx/s** | 100 / **252 Mpx/s** |
| First-output latency | 73 cycles = 730 ns @ 100 MHz, 336 ns @ Fmax | 73 cycles = 730 ns @ 100 MHz, 290 ns @ Fmax |
| Dynamic power @ 100 MHz | **0.015 W** | 0.019 W |
| Energy per output pixel | **150 pJ** | 190 pJ |
| Cost = LUT + 50·DSP + 100·BRAM | 942 | **822** |
| **FoM** @ 100 MHz = T / (P × Cost) | **0.0708** | 0.0640 |

Percentages are of the xc7z020 (53,200 LUT, 106,400 FF, 220 DSP).

**The two variants trade off cleanly.** The DSP variant is 60 % smaller in
LUTs and 16 % faster, which makes it the higher-throughput design. The LUT
variant uses no hard blocks at all and has the lower power, which makes it the
FoM winner at 100 MHz, by 11 %. The power numbers carry an important caveat,
covered in [§6](#6-power-and-figure-of-merit).

---

## 2. Architecture

### 2.1 Top level

![Top-level architecture](docs/images/architecture/top_level.png)

The design splits into a **free-running streaming datapath** (left) and a
small **configuration and control** plane (right). The datapath has no stall
path and no handshake between stages. One shared advance signal, `shift_en`,
moves every pipeline register together. When `px_valid` drops, the whole pipe
freezes coherently and nothing can drift out of alignment.

The control FSM (`IDLE → LOAD_KERNEL → PRIME → RUN → FLUSH`) never touches the
data. It only *qualifies* it:

- **PRIME** fills the line buffers. The first `N−1` rows and the first `N−1`
  columns of each row produce no valid window, so those outputs are masked, not
  computed differently.
- **FLUSH** drains exactly `P_PIPE` results.
- **FLUSH → RUN** swaps kernel bank. The host re-streams the same frame and
  the next bank's result follows, with no coefficient reload.

`W` (image width) is a **compile-time** parameter (assumption A1), not a runtime
configuration input. It appears in exactly one place in the hardware: the depth
of the two delay lines. The adder tree has exactly three registered levels.

### 2.2 Datapath detail

![Line buffers, MAC array and adder tree](docs/images/architecture/datapath_detail.png)

**Line buffers and window: one serpentine shift chain.** A new pixel enters
`R0,0` every cycle. Each row has 3 window registers followed by a `(W−N)`-deep
SRL delay line, so every row delays by exactly `W` cycles. The 3×3 window is
therefore always the nine registers `R0..2,0..2`. There are no read or write
pointers, no address counters, no memory ports and no muxes: the geometry of
the chain *is* the addressing.

**MAC array: nine parallel multipliers.** Each tap (8u, zero-extended to 9s)
multiplies its coefficient (8s) into a 17-bit signed product, all nine in the
same cycle. `USE_DSP` decides whether these map to fabric LUTs or to DSP48E1
slices.

**Adder tree: three registered levels, exact.**

```
stage 1 (reg):  p0+p1  p2+p3  p4+p5  p6+p7        [p8 → align reg]   4 + 1
stage 2 (reg):  s0+s1  s2+s3                      [p8 → align reg]   2 + 1
stage 3 (reg):  (t0+t1) + p8                                          → acc (20s)
```

The odd ninth product rides two **alignment registers** (`reg` in the diagram),
so all nine products see identical latency. That makes the whole datapath a
pure fixed-latency delay line.

**Normalize: the only two lossy steps in the design.** Stage 1 applies
round-half-up by `cfg_out_shift`. Stage 2 applies symmetric saturation to
16-bit signed, then the optional ReLU.

### 2.3 Pipeline, latency, throughput

| Stage | Registers | Contributes to `P_PIPE` |
|---|---|---|
| Window (serpentine chain) | 9 × 8u | 0 (it *is* the input) |
| Multiply | 9 × 17s | 1 |
| Adder tree | 3 levels + 2 align | 3 |
| Round, then saturate + ReLU | 2 | 2 |
| **Total** | | **`P_PIPE = 6`** |

```
T_first    = (N−1)·W + N + P_PIPE    = 73 cycles @ W=32   (137 @ W=64)   measured, exact
Outputs    = (W−N+1)²                = 900 per bank @ W=32               measured, exact
Throughput = 1.0 output px / cycle   no stall path; valid count asserted every run
```

The coefficient read register (see [§5.3](#53-the-fix-that-unlocked-the-clock))
is a static side input to the multipliers, not a stage on the pixel path. That
is why it adds **0** to `P_PIPE`.

### 2.4 Fixed-point chain

```
pixel 8u ─► zero-extend 9s ─► × coef 8s ─► product 17s ─► Σ9 ─► acc 20s ─► round ─► sat 16s ─► ReLU ─► out 16s
```

Every width is **derived**, never guessed. It comes from
[`rtl/pkg_params.sv`](rtl/pkg_params.sv), the single source of truth for RTL,
testbenches and Python alike:

```
|acc| ≤ N² · 255 · 128 = 293,760 < 2¹⁹   ⇒  ACC_W = 20 bits, exact for every reachable input
```

The accumulator is **proven minimal**. The vector suite drives it to exactly
the analytic worst case, −293,760, so the design is neither over- nor
under-provisioned by a single bit ([docs/03](docs/03_fixed_point.md)).

---

## 3. How it is optimized

The FoM charges **100 per BRAM** and **50 per DSP** against **1 per LUT**. The
design is organized around that exchange rate.

### 3.1 Zero BRAM: the line buffer costs 16 LUTs

The two delay lines hold `2 × 29 × 8 = 464` bits. A single BRAM would add
**100** to the cost term, more than 10 % of the entire LUT variant, to store
464 bits. Instead the delay lines are reset-free and marked
`(* srl_style = "srl" *)`, so they map to **SRLC32E** shift-register LUTs: one
per bit-slice per row, **16 LUTs in total**. That is visible directly in the
DSP build's hierarchy below, where `u_line_window` is 16 LUT-as-memory and 72
window flip-flops, and nothing else.

### 3.2 Every flip-flop is accounted for

The flip-flop count is not an estimate. It follows exactly from the
architecture:

| Module | FFs | Where they come from |
|---|---|---|
| `line_window` | 72 | 9 window taps × 8 bits |
| `mac_array` | 153 / **0** | 9 products × 17 bits (`lut`); absorbed into the DSP48E1 pipeline registers (`dsp`) |
| `adder_tree` | 164 | 4×18 + 17 · 2×19 + 17 · 20 (levels + align regs) |
| `normalize` | 37 | 20-bit rounded value + 16-bit result + `sat_flag` |
| `kernel_regfile` | 360 | (4 banks + 1 read register) × 9 × 8 bits |
| `ctrl_fsm` | 44 | state, counters, latched config, metadata |
| **Core total** | **830 / 677** | matches the `u_core` rows below to the flip-flop |

The I/O wrapper (`conv_top_chip`, [§4.6](#46-the-io-wrapper)) adds exactly
56 more: 33 input and 23 output boundary registers, the 58 port bits minus
`clk` and `rst_n`. That gives the totals of 886 and 734.

### 3.3 Other deliberate choices

| Choice | Saves | Instead of |
|---|---|---|
| Serpentine chain window | address counters, read muxes, BRAM ports | a frame or line buffer in memory |
| One shared `shift_en` advance | per-stage valid/ready logic, stall muxes | a handshake pipeline |
| No backpressure (`px_ready` absent) | the entire stall path | a skid buffer per stage |
| Kernel banks in flip-flops | a 100-cost BRAM; the serialized read of LUTRAM | memory primitives for 36 bytes |
| Four banks, write-while-streaming to inactive banks | a shadow register file | reload between kernels |
| Exact 20-bit accumulator, proven minimal | wider adders in every tree level | a "safe" 32-bit accumulator |
| Config sampled once at `cfg_start`, not pipelined | `SHIFT_W+1` FFs per stage | carrying config alongside data |
| Registered coefficient read | a long mux-into-multiplier path, with 0 cycles of latency | an extra pipeline stage |
| DSP48E1 absorbs the product register | 153 FFs and 570 LUTs | fabric multipliers |

### 3.4 Where the resources go

<table>
<tr>
<th>LUT variant: hierarchy (implemented, 100 MHz)</th>
<th>DSP variant: hierarchy (implemented, 100 MHz)</th>
</tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/utilization_impl.png" alt="LUT variant utilization by hierarchy"></td>
<td><img src="docs/images/vivado/dsp_100mhz/utilization_impl.png" alt="DSP variant utilization by hierarchy"></td>
</tr>
</table>

| Module | `lut` LUT / FF | `dsp` LUT / FF / DSP | Observation |
|---|---|---|---|
| `u_mac_array` | 375 / 153 | **77 / 0 / 9** | the multipliers move into the DSP48E1s, product register included |
| `u_kernel_regfile` | 302 / 360 | 114 / 360 | identical RTL; see below |
| `u_line_window` | 116 / 72 | **16 / 72** | 16 SRL LUTs is the whole line buffer |
| `u_adder_tree` | 127 / 164 | 127 / 164 | identical |
| `u_ctrl_fsm` | 84 / 44 | 76 / 44 | 4 of its LUTs are SRLs for metadata |
| `u_normalize` | 23 / 37 | 30 / 37 | |

The RTL of every module except `mac_array` is identical in both variants. The
extra LUTs Vivado attributes to `line_window` and `kernel_regfile` in the LUT
build are multiplier partial-product logic that synthesis moved across the
hierarchy boundary, next to the window taps and coefficients that feed it.
Per-hierarchy LUT counts also do not sum to the total, because a dual-output
LUT6 can serve two hierarchies and is counted in both.

---

## 4. Implementation results (Vivado)

### 4.1 Method

All runs use Vivado 2018.2 project mode with the default synthesis and
implementation strategies, on part **`xc7z020clg400-3`**. The top level is
[`rtl/conv_top_chip.sv`](rtl/conv_top_chip.sv) with
[`fpga/constraints_chip.xdc`](fpga/constraints_chip.xdc). Each variant is run
twice:

1. **Standard clock, 100 MHz (10 ns).** This is the reference operating point,
   with ample margin.
2. **Fmax.** The clock period is tightened until the design sits at the edge
   of closure, then the design is re-implemented **at that period** and must
   still report *All user specified timing constraints are met*. For the DSP
   variant the period is 3.966 ns, which is exactly the 10 ns standard period
   minus its 6.034 ns synthesis slack.

### 4.2 Summary of every run

| Run | Clock | Synth WNS | **Impl WNS** | Impl WHS | WPWS | LUT | FF | DSP | Slices | Dyn. power |
|---|---|---|---|---|---|---|---|---|---|---|
| `lut` @ 100 MHz | 10.000 ns | +5.525 | **+4.443** | +0.103 | +4.230 | 942 | 886 | 0 | 416 | 0.015 W |
| `lut` @ **Fmax** | 4.604 ns · **217.2 MHz** | — | **+0.007** | +0.073 | +1.532 | 971 | 886 | 0 | 419 | 0.034 W |
| `dsp` @ 100 MHz | 10.000 ns | +6.034 | **+5.356** | +0.105 | +4.230 | 372 | 734 | 9 | 262 | 0.019 W |
| `dsp` @ **Fmax** | 3.966 ns · **252.1 MHz** | +0.000 | **+0.279** | +0.077 | +1.213 | 391 | 734 | 9 | 288 | 0.049 W |

Every run reports **"All user specified timing constraints are met"**, with 0
failing setup, hold and pulse-width endpoints. BRAM is 0 in all four.

**Running at Fmax costs almost nothing in area.** The LUT variant grows by 29
LUTs (+3.1 %) and the DSP variant by 19 (+5.1 %), which is the tool buying
speed with logic duplication. Flip-flop counts do not change at all, because
the pipeline depth never changes.

### 4.3 Standard clock: 100 MHz

<table>
<tr><th width="50%">LUT variant</th><th width="50%">DSP variant</th></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/clock.png" alt="LUT 100 MHz clock"></td>
<td><img src="docs/images/vivado/dsp_100mhz/clock.png" alt="DSP 100 MHz clock"></td>
</tr>
<tr><td colspan="2" align="center"><b>Timing, implemented</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/timing_impl.png" alt="LUT 100 MHz implemented timing"></td>
<td><img src="docs/images/vivado/dsp_100mhz/timing_impl.png" alt="DSP 100 MHz implemented timing"></td>
</tr>
<tr><td colspan="2" align="center"><b>Timing, synthesized</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/timing_synth.png" alt="LUT 100 MHz synthesized timing"></td>
<td><img src="docs/images/vivado/dsp_100mhz/timing_synth.png" alt="DSP 100 MHz synthesized timing"></td>
</tr>
<tr><td colspan="2" align="center"><b>Power, implemented</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/power_impl.png" alt="LUT 100 MHz implemented power"></td>
<td><img src="docs/images/vivado/dsp_100mhz/power_impl.png" alt="DSP 100 MHz implemented power"></td>
</tr>
<tr><td colspan="2" align="center"><b>Placement, implemented</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/device_impl.png" alt="LUT 100 MHz device placement"></td>
<td><img src="docs/images/vivado/dsp_100mhz/device_impl.png" alt="DSP 100 MHz device placement"></td>
</tr>
</table>

Synthesis already closes with 5.5–6.0 ns of slack. Implementation gives some
of it back to real wire delay and still keeps 4.4–5.4 ns. The placement views
show how small the design is on the device. The LUT build is a small patch in
clock region X1Y1 and the DSP build a small patch in X1Y0, each next to the I/O
column on the right edge where its 58 pins land.

<details>
<summary>More 100 MHz screenshots: synthesized utilization, synthesized power</summary>

| LUT: utilization, synthesized | DSP: utilization, synthesized |
|---|---|
| ![](docs/images/vivado/lut_100mhz/utilization_synth.png) | ![](docs/images/vivado/dsp_100mhz/utilization_synth.png) |
| **DSP: power, synthesized** | |
| ![](docs/images/vivado/dsp_100mhz/power_synth.png) | |

</details>

### 4.4 Fmax: 217.2 MHz (LUT) and 252.1 MHz (DSP)

<table>
<tr><th width="50%">LUT variant: 4.604 ns · 217.2 MHz</th><th width="50%">DSP variant: 3.966 ns · 252.1 MHz</th></tr>
<tr>
<td><img src="docs/images/vivado/lut_fmax/clock.png" alt="LUT Fmax clock 4.604 ns"></td>
<td><img src="docs/images/vivado/dsp_fmax/clock.png" alt="DSP Fmax clock 3.966 ns"></td>
</tr>
<tr><td colspan="2" align="center"><b>Timing, implemented: all constraints met</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_fmax/timing_impl.png" alt="LUT Fmax implemented timing"></td>
<td><img src="docs/images/vivado/dsp_fmax/timing_impl.png" alt="DSP Fmax implemented timing"></td>
</tr>
<tr><td colspan="2" align="center"><b>Utilization, implemented</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_fmax/utilization_impl.png" alt="LUT Fmax implemented utilization"></td>
<td><img src="docs/images/vivado/dsp_fmax/utilization_impl.png" alt="DSP Fmax implemented utilization"></td>
</tr>
<tr><td colspan="2" align="center"><b>Power, implemented</b></td></tr>
<tr>
<td><img src="docs/images/vivado/lut_fmax/power_impl.png" alt="LUT Fmax implemented power"></td>
<td><img src="docs/images/vivado/dsp_fmax/power_impl.png" alt="DSP Fmax implemented power"></td>
</tr>
</table>

<details>
<summary>More Fmax screenshots: synthesized timing, utilization and power, DSP placement</summary>

| LUT: utilization, synthesized | DSP: utilization, synthesized |
|---|---|
| ![](docs/images/vivado/lut_fmax/utilization_synth.png) | ![](docs/images/vivado/dsp_fmax/utilization_synth.png) |
| **LUT: power, synthesized** | **DSP: power, synthesized** |
| ![](docs/images/vivado/lut_fmax/power_synth.png) | ![](docs/images/vivado/dsp_fmax/power_synth.png) |
| **DSP: timing, synthesized (WNS 0.000)** | **DSP: placement, implemented** |
| ![](docs/images/vivado/dsp_fmax/timing_synth.png) | ![](docs/images/vivado/dsp_fmax/device_impl.png) |

</details>

### 4.5 Check Timing

<table>
<tr><th width="50%">LUT @ 100 MHz</th><th width="50%">DSP @ 100 MHz</th></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/check_timing.png" alt="LUT check timing"></td>
<td><img src="docs/images/vivado/dsp_100mhz/check_timing.png" alt="DSP check timing"></td>
</tr>
</table>

The only entries are 34 `no_input_delay` and 23 `no_output_delay`, identical in
every run. They are deliberate. The accelerator's ports connect to other
on-chip logic (the UART shell of the board demo), not to external devices, so
[`constraints_chip.xdc`](fpga/constraints_chip.xdc) declares them false paths
rather than inventing external delays. Everything that matters is clean:
`no_clock`, `unconstrained_internal_endpoints`, `loops`, `latch_loops` and
`multiple_clock` are all **0**. Every internal register is timed.

<details>
<summary>Check Timing at Fmax</summary>

| LUT @ Fmax | DSP @ Fmax |
|---|---|
| ![](docs/images/vivado/lut_fmax/check_timing.png) | ![](docs/images/vivado/dsp_fmax/check_timing.png) |

</details>

### 4.6 The I/O wrapper

<table>
<tr><th width="50%">RTL: <code>conv_top_chip</code> as elaborated</th><th width="50%">Synthesized top level</th></tr>
<tr>
<td><img src="docs/images/vivado/lut_100mhz/schematic_rtl_wrapper.png" alt="conv_top_chip RTL schematic"></td>
<td><img src="docs/images/vivado/lut_100mhz/schematic_synth.png" alt="Synthesized top-level schematic"></td>
</tr>
</table>

On the left are the eleven input boundary registers (`px_*`, `kl_*`, `cfg_*`).
In the centre is the **unmodified** `conv_top` core. On the right are the seven
output registers. Registering every port makes each pad path a single hop
(`PAD → IBUF → FF` or `FF → OBUF → PAD`). Without the wrapper, the
combinational `out_valid` term would sit between a core register and an output
pad. The cost is **+1 cycle in and +1 cycle out, at the pins only**: `T_first`
is 75 at the wrapper's pins and still 73 at the core's. The core's `P_PIPE`,
throughput and every verified property are untouched.

<details>
<summary>The same views for the DSP variant, and the synthesized schematics at Fmax</summary>

| DSP: RTL wrapper | DSP: synthesized top level |
|---|---|
| ![](docs/images/vivado/dsp_100mhz/schematic_rtl_wrapper.png) | ![](docs/images/vivado/dsp_100mhz/schematic_synth.png) |
| **LUT @ Fmax: synthesized top level** | **DSP @ Fmax: synthesized top level** |
| ![](docs/images/vivado/lut_fmax/schematic_synth.png) | ![](docs/images/vivado/dsp_fmax/schematic_synth.png) |

</details>

---

## 5. Timing and Fmax

### 5.1 Results

| | `lut` | `dsp` |
|---|---|---|
| Standard clock | 100 MHz: impl WNS +4.443 ns | 100 MHz: impl WNS +5.356 ns |
| **Fmax** | **217.2 MHz** (4.604 ns) | **252.1 MHz** (3.966 ns) |
| Implemented slack at Fmax | +0.007 ns: effectively at the limit | +0.279 ns: margin remains |
| Headroom over the standard clock | **2.17×** | **2.52×** |

The LUT variant closes at 217.2 MHz with only 7 ps to spare, so that is its
true ceiling. The DSP variant still has 0.279 ns of slack at 252.1 MHz, so
252.1 MHz is a demonstrated **floor**. Extrapolating that slack suggests
about 271 MHz, but that has not been run, so it is not claimed.

### 5.2 What sets the limit

The pipeline was built so that **no stage does more than one multiply or one
add** (see the note in the datapath diagram). The longest register-to-register
path is therefore the multiply stage in both variants:

- **LUT variant:** a 9×8 fabric multiplier whose partial products ripple
  through CARRY4 carry chains.
- **DSP variant:** the DSP48E1's hardened multiplier, which is faster than a
  fabric carry chain. That is where the DSP variant's 16 % higher Fmax comes
  from.

A deeper multiplier pipeline could raise Fmax further. It would cost
flip-flops and latency, and it buys nothing in the FoM, whose throughput is
counted per cycle. The design stops at the point where the arithmetic,
not the control, sets the clock.

### 5.3 The fix that unlocked the clock

During development the first timing failure came from a path that crossed a
stage boundary:

```
ctrl_fsm.bank_sel → 4-way coefficient bank mux → multiplier → product register
```

The bank mux sat in series with the entire multiplier. The fix registers the
coefficient read in `kernel_regfile`. That is safe because `bank_sel` changes
only in FLUSH, so the new bank is always in place before the first qualified
window reaches the multipliers. It took the failing path from **57 failing
endpoints to 0**, cost −36 LUT and +61 FF, and left `P_PIPE` and `T_first`
**unchanged**. That was confirmed by 33 latency-checked regression runs. A unit
test now fails if the read ever becomes combinational again: it checks that
the output holds **before** the clock edge and switches atomically **after** it.

---

## 6. Power and Figure of Merit

### 6.1 Power breakdown (implemented, 100 MHz)

| | `lut` | `dsp` |
|---|---|---|
| Clocks | 0.004 W | 0.003 W |
| Signals | 0.003 W | 0.002 W |
| Logic | 0.004 W | 0.002 W |
| DSP | — | 0.008 W |
| I/O | 0.004 W | 0.004 W |
| **Dynamic** | **0.015 W** (13 % of total) | **0.019 W** (16 % of total) |
| Device static | 0.105 W | 0.105 W |
| Total on-chip | 0.120 W | 0.124 W |
| Junction temperature | 26.4 °C | 26.4 °C |

Device static power (84–87 % of the total) is the leakage of the whole Zynq
and does not depend on this design. The accelerator itself burns **15–19 mW**.

**Energy per output pixel** divides dynamic power by throughput, so it
compares the variants independently of clock frequency. It stays nearly
constant between 100 MHz and Fmax, as expected: dynamic power scales with the
clock. The small rise at Fmax comes from the extra LUTs the tool adds to close
timing.

| | @ 100 MHz | @ Fmax |
|---|---|---|
| `lut` | 0.015 W ÷ 100 Mpx/s = **150 pJ/px** | 0.034 W ÷ 217.2 Mpx/s = **157 pJ/px** |
| `dsp` | 0.019 W ÷ 100 Mpx/s = **190 pJ/px** | 0.049 W ÷ 252.1 Mpx/s = **194 pJ/px** |

### 6.2 The Figure of Merit

```
FoM = Throughput / (Power × (LUTs + 50·DSPs + 100·BRAMs))
      Throughput = 1.0 output px/cycle, Power = dynamic, implemented
```

| | `lut` @ 100 MHz | `dsp` @ 100 MHz | `lut` @ Fmax | `dsp` @ Fmax |
|---|---|---|---|---|
| Cost | 942 + 0 + 0 = **942** | 372 + 450 + 0 = **822** | 971 | 391 + 450 = 841 |
| Dynamic power | 0.015 W | 0.019 W | 0.034 W | 0.049 W |
| **FoM** | **0.0708** | 0.0640 | 0.0303 | 0.0243 |

At the 100 MHz standard clock the **LUT variant leads by 11 %**. The DSP
variant has the lower cost term (822 vs 942), but that is outweighed by its
higher power: the DSP blocks alone draw 0.008 W. Because the FoM counts
throughput per cycle, running at Fmax raises power without raising the
numerator, so the 100 MHz point is the one that scores best.

> [!NOTE]
> **These power figures are Vivado's vectorless estimate** ("Confidence level:
> Low" in every power screenshot). Vectorless analysis assumes a default toggle
> rate for every net instead of measuring it. The repository also has a
> vector-based flow (`fpga/run_postimpl.py`), which simulates the routed
> netlist on a real photograph and back-annotates the measured switching
> activity through a SAIF file. On the -1 grade at 150 MHz, that flow measured
> 0.031 W (LUT) against 0.020 W (DSP), which **reverses the ranking**: LUT
> multipliers toggle long carry chains that the vectorless estimate
> underweights. Running the SAIF flow on `xc7z020clg400-3` at 100 MHz would
> settle which variant to headline.

---

## 7. Verification

`model/golden_conv.py` is the arithmetic **reference**. The RTL is correct if
and only if it is **bit-exact** against it. There is no "accuracy percentage":
the pass criterion is zero mismatching pixels, and "99.9 % accurate" would be
a failure.

```
python tb/run_regression.py --signoff
  TOTAL: 163 runs, 163 PASS, 0 FAIL          154 top-level vector runs + 8 unit/directed benches + sign-off gate
  output pixels compared: 574,224            0 mismatches   (92 of the runs are real photographs)
  FUNCTIONAL COVERAGE: 29/29 bins = 100 %    FSM states, banks, ReLU, shifts, gapping, saturation rails, ...
  SIGNOFF real-image: PASS
```

| Level | Checked | Mismatches |
|---|---|---|
| Top-level RTL, synthetic + real-image vectors | 574,224 pixels over 154 runs, with and without input bubbles | **0** |
| W=256 full scene (3 banks) | 193,548 pixels | **0** |
| Routed netlist, both variants | 900 pixels each | **0** |
| Datapath stages (MAC, tree, normalize) | 710 stage records × 3 | **0** |
| Window generator | 1,872 windows at W=8 and W=32 | **0** |

![Coins: input, Sobel Gx, Sobel Gy, magnitude, identity, Gx with ReLU, all RTL output](docs/report/figures/demo_real_coins_centre64_edge.png)

*Real-image vectors at W=64: Sobel Gx and Gy, gradient magnitude, the identity
kernel (the output reproduces the input) and Gx with ReLU, all read back from
RTL simulation.*

**How the reference is protected:**

- **Integer-only, proven structurally.** `--self-audit` walks the model's AST
  and rejects any float literal, `/` operator, float-bearing import, or
  `float()`/`round()` call.
- **The model is never edited to agree with the RTL.** Where they disagree,
  [docs/03](docs/03_fixed_point.md) arbitrates.
- **One source of truth.** Python parses `rtl/pkg_params.sv` directly, with no
  fallback numbers, so the model cannot drift from the hardware.
- **The regression is proven able to fail.** A deliberately injected
  pipeline-alignment bug was caught, exited nonzero, and was localised to the
  exact pixel with a full stage trace.
- **Only two steps lose information, both deliberate.** Round-half-up has
  mean bias **+0.007 LSB**, against −0.495 LSB for the truncation it replaced.
  Saturation is a policy, and both rails are exercised.

**What the evidence does not prove:** a large sample of an astronomically
large input space is high confidence, **not formal equivalence**. The
properties in [docs/05 §6](docs/05_verification_plan.md) run as procedural
checkers, because ModelSim ASE 10.1d supports neither SVA nor covergroups.

---

## 8. Reproducing the results

**Vivado GUI (the results in §4):**

1. Create a project on part **`xc7z020clg400-3`**.
2. Add every file in `rtl/` and `fpga/constraints_chip.xdc`. Set the top module
   to `conv_top_chip`.
3. Select the variant under *Settings → General → Generics/Parameters*:
   `USE_DSP=0` (LUT) or `USE_DSP=1` (DSP).
4. Set `clk_period` in `constraints_chip.xdc` to `10.0` and run synthesis and
   implementation. This is the standard 100 MHz point.
5. Set `clk_period` to `4.604` (LUT) or `3.966` (DSP) and re-run both steps.
   This is the Fmax point.

**Model and RTL verification:**

```bash
python model/golden_conv.py --self-audit        # prove the model is integer-only
python model/gen_vectors.py --all               # synthetic + real-image vectors
python tb/run_regression.py --signoff           # ModelSim; exits nonzero on any mismatch
python tb/run_unit_tbs.py                       # module-level testbenches
```

**Scripted Vivado flow:** [`fpga/build.tcl`](fpga/build.tcl), driven by
`python fpga/run_build.py`, with SAIF power in `fpga/run_postimpl.py` and the
FoM worksheet in `fpga/fom.tcl`. It is currently configured for
`xc7z020clg400-1` at 150 MHz (`set part` in `build.tcl`, `clk_period` in
`constraints.xdc`), and its committed reports in `fpga/reports/` are from that
configuration.

---

## 9. Repository map and status

| Path | Contents |
|---|---|
| `rtl/` | 9 synthesizable modules. `pkg_params.sv` holds every constant; `conv_top_chip.sv` is the I/O wrapper. |
| `model/` | Integer golden model, vector generator, width study, real-image asset pipeline, demos |
| `tb/` | Unit TBs, top-level TB, netlist TB, directed corner tests, regression runner |
| `fpga/` | Constraints, scripted Vivado flow, post-implementation simulation, SAIF power, FoM |
| `docs/images/` | Architecture diagrams and the Vivado screenshots used in this README |
| `docs/report/figures/` | Demo figures, all rendered from RTL output |
| `docs/` | Design contract (00–10) and `assumptions.md` |

| Phase | State |
|---|---|
| 1 Golden model · 2 Vectors · 3 Widths · 4 RTL · 5 Verification | ✅ complete (tags `phase1`–`phase5-complete`, `phase5-real-vectors`) |
| 6 Synthesis & implementation | ✅ both variants met at 100 MHz; Fmax 217.2 MHz (LUT) and 252.1 MHz (DSP) |
| 7 Sign-off | ⬜ report document, presentation, results table in [docs/10](docs/10_report_outline.md) |

Conventions are in [CONTRIBUTING.md](CONTRIBUTING.md): no literal widths
outside `pkg_params.sv`, signal names match
[docs/04](docs/04_interfaces.md) character for character, nothing merges
without a green regression, and every assumption is logged in
[docs/assumptions.md](docs/assumptions.md).
