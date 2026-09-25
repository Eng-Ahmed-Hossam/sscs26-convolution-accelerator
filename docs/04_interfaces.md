# 04 — Interface Contracts

These signal names are **frozen**. RTL, testbenches, draw.io diagrams, and the
report all use exactly these names ([CONTRIBUTING.md](../CONTRIBUTING.md) rule 3).
`rtl/pkg_params.sv` defines fixed N=3, all fixed widths/constants, and the
defaults for W and `USE_DSP`. `conv_top` intentionally declares W and
`USE_DSP` module parameters whose defaults reference qualified package values;
it propagates the selected build values through same-named child parameters
where required. `conv_top` is the only supported external override point.
Pure local derivations from W and package constants are permitted; no interface
value is independently hard-coded ([CONTRIBUTING.md](../CONTRIBUTING.md) rule
2). Widths below show W=32.

Clock/reset everywhere: `clk` (single domain, rising edge), `rst_n`
(asynchronous assert, synchronous deassert; all state resets to IDLE/zeros).

## 1. `conv_top` — external interface

### Pixel input stream (valid-only, no ready — no backpressure)

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `px_data` | in | 8 | Unsigned pixel, raster order (row-major, left→right, top→bottom) |
| `px_valid` | in | 1 | Qualifies `px_data`. Gaps are legal; the core accepts a pixel on every PRIME/RUN cycle where this is high. **There is no `px_ready`.** |
| `px_last` | in | 1 | High with the final (W²-th) pixel of the frame. FSM uses it to enter FLUSH. |

Contract: source must send exactly W² = 1024 valid pixels per frame, with
`px_last` asserted on and only on the last valid pixel (`px_last` implies
`px_valid`). `px_valid` must be low in IDLE, LOAD_KERNEL, and FLUSH. After the
mandatory one-cycle LOAD_KERNEL arming state, the first pixel is legal when
PRIME is active. For multi-kernel runs, a nonfinal `out_last` is the restart
notification: the source re-streams the identical frame beginning in the
following cycle, when the controller is RUN with the next bank selected.

### Kernel load port (synchronous write, one coefficient/cycle)

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `kl_valid` | in | 1 | Write strobe |
| `kl_bank` | in | 2 | Target bank 0–3 |
| `kl_addr` | in | 4 | Coefficient index 0–8; index = r·N + c, matching window tap `win[r][c]` |
| `kl_coef` | in | 8 | Signed coefficient |

Contract: load all N² coefficients of every bank you intend to run **before**
`cfg_start` (assumption A2 in [assumptions.md](assumptions.md)). Writes to
non-active banks are legal at any time; writes to the active bank during
PRIME/RUN/FLUSH give undefined results for in-flight pixels.

### Configuration (sampled once, at `cfg_start` rising edge — static during a run)

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `cfg_start` | in | 1 | One-cycle pulse; latches the cfg_* group, enters LOAD_KERNEL for exactly one arming cycle, then enters PRIME. LOAD_KERNEL performs no coefficient transfer. |
| `cfg_relu_en` | in | 1 | 1 = apply ReLU after saturation |
| `cfg_out_shift` | in | 3 | Round-half-up right shift 0–7 (0 = off; 7 = Q1.7 kernels for CNN demo) |
| `cfg_num_kernels` | in | 3 | Number of banks to run, 1–4, starting at bank 0 ascending |

### Output stream + status

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `out_data` | out | 16 | Signed result, valid-qualified, raster order of the (W−N+1)² output frame |
| `out_valid` | out | 1 | Exactly (W−N+1)² = 900 assertions per kernel bank |
| `out_last` | out | 1 | High with the final valid output of each bank's frame |
| `out_bank` | out | 2 | Bank that produced this output (stable across a frame) |
| `sat_flag` | out | 1 | Pulses when saturation clamped this output (observability for TB/waves) |
| `busy` | out | 1 | High from `cfg_start` until final FLUSH completes |
| `done` | out | 1 | One-cycle pulse when the whole run (all banks) finishes |

## 2. `line_window`

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `px_data`, `px_valid` | in | 8, 1 | From top |
| `shift_en` | in | 1 | Shared pipeline advance from ctrl_fsm: high on every accepted pixel in PRIME/RUN and for exactly P_PIPE FLUSH advances. This module shifts only when both `shift_en` and `px_valid` are high, so it holds during FLUSH. |
| `win` | out | 9×8 | `logic [7:0] win [0:N-1][0:N-1]`; `win[0][0]` oldest (window top-left), `win[N-1][N-1]` newest. Unsigned taps; sign handling lives in mac_array. |

Purely structural: no validity logic inside — `ctrl_fsm` owns all masking.
On an accepted edge the registered window is updated, while the downstream MAC
samples the pre-edge registered window. The corresponding just-formed window
and its pending metadata therefore enter their first pipeline stages on the
next enabled edge. SRL delays carry `(* srl_style = "srl" *)`.

## 3. `kernel_regfile`

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `kl_valid`, `kl_bank`, `kl_addr`, `kl_coef` | in | — | Pass-through of top-level load port |
| `bank_sel` | in | 2 | Active bank, driven by ctrl_fsm; changes only in FLUSH |
| `coef` | out | 9×8 | `logic signed [7:0] coef [0:N*N-1]`; registered full-bank read; `coef[r*N+c]` pairs with `win[r][c]` |

`coef` captures `bank[bank_sel]` atomically on each rising edge. This is a
one-cycle register-file read but not a pixel-data pipeline stage: coefficients
are static for the frame under A2, so `P_PIPE` and the inclusive `T_first`
formula remain unchanged. On a FLUSH→RUN bank swap the old bank is captured at
the transition edge and the new bank on the following edge, before the first
qualified window of the re-streamed frame reaches `mac_array`.

## 4. `mac_array`

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `win` | in | 9×8 | Window taps (unsigned) |
| `coef` | in | 9×8 | Signed coefficients |
| `en` | in | 1 | Shared pipeline advance (= `shift_en`); product registers advance when high and hold when low. |
| `prod` | out | 9×17 | `logic signed [16:0] prod [0:N*N-1]`, registered (1 stage). Internally: `signed'({1'b0, win[..]}) * coef[..]` |

Contains the `USE_DSP` generate: `(* use_dsp = "no" *)` when 0 (default),
`"yes"` when 1. No other difference between variants.

## 5. `adder_tree`

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `prod` | in | 9×17 | From mac_array |
| `en` | in | 1 | Shared pipeline advance (= `shift_en`); all tree and odd-product alignment registers advance when high and hold when low. |
| `acc` | out | 20 | `logic signed [19:0]`, exact 9-term sum, 3 registered stages, alignment registers on unpaired terms (topology in [02_architecture.md](02_architecture.md) §5) |

## 6. `normalize`

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `acc` | in | 20 | From adder_tree |
| `en` | in | 1 | Shared pipeline advance (= `shift_en`); round/result registers advance when high and hold when low. `sat_flag` is an event qualifier and is low on non-advance clocks. |
| `relu_en`, `out_shift` | in | 1, 3 | Latched cfg values from ctrl_fsm |
| `res` | out | 16 | Registered output (2 stages: round reg, saturate/ReLU reg) |
| `sat_flag` | out | 1 | Registered, aligned with `res` |

## 7. `ctrl_fsm`

| Signal | Dir | Width | Semantics |
|---|---|---|---|
| `cfg_start`, `cfg_relu_en`, `cfg_out_shift`, `cfg_num_kernels` | in | — | From top |
| `px_valid`, `px_last` | in | 1 | Stream events |
| `shift_en` | out | 1 | Shared pipeline advance: `px_valid` in PRIME/RUN and one pulse on each of exactly P_PIPE FLUSH advances; low otherwise. `line_window` additionally requires `px_valid` before shifting. |
| `bank_sel` | out | 2 | To kernel_regfile; increments at each FLUSH→RUN transition |
| `relu_en`, `out_shift` | out | 1, 3 | Latched config to normalize |
| `out_valid`, `out_last`, `out_bank` | out | — | On an accepted pixel, pending window metadata records the in-bounds condition (`row_cnt ≥ N−1 && col_cnt ≥ N−1`), last marker, and current bank. On the next enabled edge it enters a P_PIPE-stage metadata pipeline beside the registered window. All metadata advances on exactly the MAC/tree/normalize enable. `out_valid` and `out_last` are event qualifiers and are low on non-advance clocks; `out_bank` may hold. |
| `busy`, `done` | out | 1 | Status |

Internal: `state` (IDLE, LOAD_KERNEL, PRIME, RUN, FLUSH — SystemVerilog enum,
these exact names appear in the FSM diagram and report), `row_cnt`, `col_cnt`
(`$clog2(W)` bits), `flush_cnt` (counts exactly P_PIPE pipeline-advance pulses),
`kernel_cnt`, and the pending valid/last/bank tuple. An input bubble holds the
window, pending tuple, datapath, and in-flight metadata coherently. Public
`out_valid`, `out_last`, and `sat_flag` clear on a non-advance clock so a held
result cannot be replayed as a second transaction.

**FLUSH sequencing:** `px_valid=0`. FLUSH advance 1 admits the pending final
window/metadata to MAC/stage 0, advances 2 through P_PIPE inject invalid
metadata while draining, and advance P_PIPE emits the final result with
`out_last`; there is no seventh advance. The FSM may remain in FLUSH without an
advance while that output event is visible. For a nonfinal bank, increment
`kernel_cnt` and `bank_sel`, clear row/col/flush state, enter RUN, and keep
`busy` high; the source may present the next frame's first pixel in the cycle
after observing `out_last`. For the final bank, pulse `done`, drop `busy`, and
enter IDLE on the following edge. `out_bank` comes from the aligned metadata,
never directly from the newly selected bank.

## 8. Parallel-coding rule

WP2 (datapath) and WP3 (control) code against this file, not against each
other's WIP. Any change to a name, width, or semantic here requires a PR that
updates this file, the RTL, the TBs, and the draw.io sources together
([CONTRIBUTING.md](../CONTRIBUTING.md)).
