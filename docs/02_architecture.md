# 02 — Architecture

Draw.io sources for all figures live in `docs/architecture/` (`top_block.drawio`,
`line_window.drawio`, `adder_tree.drawio`, `fsm.drawio`). Export each to PNG at
2× for the report. The ASCII sketches below are the authoritative topology; the
draw.io files must match them and the signal names in
[04_interfaces.md](04_interfaces.md).

Fixed N=3, all fixed widths/constants, and the defaults for W and `USE_DSP`
come from `rtl/pkg_params.sv`. `conv_top` exposes W and `USE_DSP` as the only
supported build overrides and propagates them to the affected child modules;
pure local derivations from W are permitted. Numbers below use W=32.

## 1. Top level (`conv_top`)

A no-backpressure, valid-driven streaming pipeline. It accepts one 8-bit
unsigned pixel per cycle in raster order whenever `px_valid=1`; one 16-bit
signed output pixel per cycle is sustained over each in-bounds output run under
continuous `px_valid`. In PRIME/RUN, an input-valid gap holds the line window,
datapath registers, and aligned in-flight metadata coherently. Control
(`ctrl_fsm`) qualifies output events but never applies backpressure. Border
handling is masking, not padding: the first N−1 = 2 rows produce nothing, and
the first N−1 = 2 columns of every subsequent row are masked, so a W×W = 32×32
frame yields exactly (W−N+1)² = 30² = **900 valid outputs**.

```
 px_data[7:0] ──► line_window ──► mac_array ──► adder_tree ──► normalize ──► out_data[15:0]
 px_valid        (9 window        (9 LUT mults, (9→1, 20s      (round-half-up,  out_valid
                  taps, 8u)        17s products)  exact)         saturate 16s,   out_last
                      ▲                ▲                          optional ReLU)
                      │                │ coef[0..8] (8s)
                 ctrl_fsm ◄──── kernel_regfile (4 banks × 9 × 8s)
                 (row/col counters, validity masking, bank swap)
```

## 2. Serpentine line-buffer / window chain (`line_window`)

There is no frame buffer and no BRAM. The window generator is a single
serpentine shift chain that updates only when both `shift_en` and `px_valid`
are high. In PRIME/RUN, `shift_en=px_valid`; during FLUSH, `shift_en` advances
the downstream pipeline while `px_valid=0`, so the window itself holds.

- Each of the **N = 3 window rows** contains three individually tapped window
  registers. The newest and middle rows are each followed by one
  **(W−N) = 29-deep SRL delay**; the oldest row terminates the chain. Thus the
  fixed 3×3 implementation has two delays, both mapping to SRL32 with zero BRAM.
- The three tapped register triplets form the 3×3 window. Every accepted-pixel
  cycle shifts the whole chain by one pixel.

```
            row 2 (newest)                    row 1                          row 0 (oldest)
 px ─►[w22]─[w21]─[w20]─►(SRL 29)─►[w12]─[w11]─[w10]─►(SRL 29)─►[w02]─[w01]─[w00]
        │     │     │                 │     │     │                 │     │     │
        └──── window taps win[2][2..0] ──── win[1][2..0] ────────── win[0][2..0]┘
```

Total storage: 9 FFs + 2×29 SRL bits per pixel bit — 8 × (9 + 58) = 536 bits of
shift register. Vivado maps the 29-deep delays to SRLC32E primitives; enforce
with `(* srl_style = "srl" *)` and verify DSP=0/BRAM=0 in the utilization report
(the `build.tcl` compliance check in [06_implementation_flow.md](06_implementation_flow.md)
fails the build otherwise).

For the registered window just formed by the current accepted pixel,
`win[r][c] = image[current_row−(N−1−r)][current_col−(N−1−c)]`.
Thus `win[0][0]` is the oldest pixel (top-left of the window), and `win[2][2]`
is the newest/current pixel. `ctrl_fsm` records whether the just-formed window
is fully in bounds (row ≥ 2 and col ≥ 2) as pending metadata for the next
enabled pipeline edge.

## 3. Kernel register file (`kernel_regfile`)

4 banks × N² = 9 × 8-bit signed coefficients, flip-flop based (36 bytes of bank
storage plus a 9-byte output register — no memory primitive). The load port
(`kl_valid/kl_bank/kl_addr/kl_coef`) is synchronous. The complete active bank,
selected by `bank_sel[1:0]` from the FSM, is captured into the output register
on every rising edge; coefficient `coef[r*N+c]` multiplies window tap
`win[r][c]`. This register breaks the `bank_sel`/four-bank mux from the LUT
multiplier path. It is a static side input rather than pixel data, so it adds
zero stages to `P_PIPE` and does not change `T_first`. At FLUSH→RUN it captures
the old bank once, then captures the new bank before any qualified window can
reach the MAC. Loading a bank while another bank is active is legal; loading
the **active** bank during RUN is a user error (results undefined for in-flight
pixels) — documented in [assumptions.md](assumptions.md).

## 4. MAC array (`mac_array`)

Nine multipliers in parallel, one register stage:

- Zero-extend each 8u window tap to **9-bit signed** (explicitly, in RTL — never
  rely on tool signed/unsigned inference).
- 9s × 8s → **17-bit signed** product, registered.
- Default build (`USE_DSP = 0`): multipliers forced to fabric with
  `(* use_dsp = "no" *)` — a 9×8 signed multiply is small in LUTs and avoids the
  50× DSP penalty in the FoM.
- `USE_DSP = 1` generate variant: `(* use_dsp = "yes" *)`, same netlist
  otherwise — built only for the tradeoff study
  ([06_implementation_flow.md](06_implementation_flow.md) §6).

`USE_DSP` is a `conv_top` build parameter whose default comes from
`pkg_params`; `conv_top` passes the selected value to `mac_array`. The package
constant itself is never overridden.

## 5. Adder tree (`adder_tree`) — with odd-product alignment registers

Nine 17s products reduce to one 20-bit signed sum in three registered stages.
Odd terms that have no partner in a stage pass through an **alignment register**
so every product experiences the same latency — this is what keeps the pipeline
a pure fixed-latency delay line:

```
 stage 1 (reg):  p0+p1  p2+p3  p4+p5  p6+p7   [p8 → align reg]     → 4 sums (18s) + 1
 stage 2 (reg):  s0+s1  s2+s3                 [p8' → align reg]    → 2 sums (19s) + 1
 stage 3 (reg):  (t0+t1) + p8''                                    → acc (20s)
```

Stage 3 performs two adds combinationally before its register; at 32×32-class
clock targets this closes timing easily (playbook in
[06_implementation_flow.md](06_implementation_flow.md) if it doesn't). The 20-bit
result is **exact** — no overflow is possible anywhere in the tree; proof in
[03_fixed_point.md](03_fixed_point.md) §3.

## 6. Normalize (`normalize`)

One stage, two registers: (1) round-half-up right-shift by `cfg_out_shift`
(add `1 << (shift−1)` then arithmetic shift; shift 0 = pass-through), then
(2) symmetric saturation to 16s and, when `cfg_relu_en=1`, ReLU
(`out = max(0, out)`). Saturation event pulses `sat_flag` for the TB/waveforms.
Full policy and rationale: [03_fixed_point.md](03_fixed_point.md) §4.

## 7. Control FSM (`ctrl_fsm`)

States: **IDLE → LOAD_KERNEL → PRIME → RUN → FLUSH**, plus row/col counters
(`row_cnt`, `col_cnt`, both `$clog2(W)` bits) that advance only on accepted
pixels in PRIME/RUN.

```
        cfg_start        one arming cycle          window established
 IDLE ───────────► LOAD_KERNEL ───────► PRIME ───────────────► RUN
                                                                │ frame done (px_last seen,
                                                                ▼  pipeline drain P_PIPE cycles)
                              more kernel banks pending       FLUSH
                RUN ◄──────────(bank_sel++, counters reset)────┤
                                                               ▼ no banks pending
                                                             IDLE (done pulse)
```

The `cfg_start` edge latches configuration and enters LOAD_KERNEL.
LOAD_KERNEL lasts exactly one cycle and performs no kernel transfer: all banks
were loaded before `cfg_start` under assumption A2. The source may present the
first frame pixel once PRIME is active.

`shift_en` is the shared pipeline-advance event. It is high for each accepted
pixel in PRIME/RUN and for exactly P_PIPE advances in FLUSH. On an accepted
edge, `line_window` registers the new pixel while the MAC and metadata stage 0
sample the pre-edge registered window and its pending valid/bank/last tuple.
The just-formed window therefore enters the MAC on the next enabled edge. MAC,
tree, normalize, and their in-flight metadata all advance on `shift_en` and
hold together when it is low. External event qualifiers (`out_valid`,
`out_last`, and `sat_flag`) are low on non-advance clocks so a held result is
never counted twice; `out_data` and `out_bank` may hold.

- **PRIME**: pixels stream in but no window is complete (first N−1 rows + N−1
  cols). Behaviorally identical to RUN except outputs are masked; kept as a
  distinct state for report clarity and coverage.
- **RUN**: a pending valid tuple is recorded exactly when `row_cnt ≥ N−1` and
  `col_cnt ≥ N−1` on an accepted pixel. It advances beside the corresponding
  registered window and produces `out_valid` after the same six enabled stages.
- **FLUSH**: `px_valid` remains low while `shift_en` pulses for exactly P_PIPE =
  6 pipeline advances. The first advance admits the final pending registered
  window to the MAC; subsequent advances inject invalid metadata while draining
  it through tree and normalize. The line window holds throughout FLUSH. The
  sixth advance emits the final `out_valid` with `out_last`. FLUSH may then
  remain resident without another advance long enough to expose that output
  event before completing the bank. If `cfg_num_kernels` banks remain, swap
  `bank_sel`, reset row/col/flush state, and enter RUN; the host re-streams the
  identical frame beginning in the cycle after the nonfinal `out_last`. The
  old bank identity is carried with the result, not derived from the new
  `bank_sel`. Otherwise pulse `done`, drop `busy`, and return to IDLE.

## 8. Latency and throughput — closed form (report these as formulas)

`T_first` is an **inclusive enabled-cycle count**: the first accepted pixel is
numbered cycle 1, and bubbles do not increment the count. First valid appears at:

```
T_first = (N−1)·W + N + P_PIPE          = 2·32 + 3 + 6 = 73 cycles
```

((N−1) full rows + N pixels of row N−1 form the first registered window;
P_PIPE = 6 = 1 MAC reg + 3 adder-tree stages + 2 normalize regs.) With no
bubbles, enabled cycles equal wall-clock cycles and the first `out_valid` is
cycle 73. Each PRIME/RUN input bubble adds one wall-clock cycle without changing
the enabled-cycle index.

```
Final valid = W² + P_PIPE = 1024 + 6 = 1030 inclusive cycles (no bubbles)
Outputs     = (W−N+1)² = 900 per kernel bank
Throughput  = 1.0 output px/cycle under continuous px_valid (FoM numerator)
Multi-kernel: K banks → K·W² accepted-pixel advances + K·P_PIPE FLUSH advances, 900·K outputs
```

Use the formula form in the report. Confirm `T_first = 73` with the dedicated
no-bubble inclusive wall-clock test; bubble tests confirm enabled-cycle 73 plus
correct data and order rather than a fixed wall-clock latency.
