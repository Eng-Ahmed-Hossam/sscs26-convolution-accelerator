// ---------------------------------------------------------------------------
// normalize.sv --- round-half-up shift, symmetric saturation, optional ReLU.
//
// Owner : WP2.  Refs: docs/03_fixed_point.md s4 (policy, report-ready prose),
//         s7 (rounding-vs-truncation measurement), docs/02_architecture.md s6,
//         docs/04_interfaces.md s6, docs/assumptions.md A4.
//
// FUNCTION -- the only two lossy operations in the whole datapath:
//   1. ROUND HALF UP by out_shift (0..SHIFT_MAX): add 2^(s-1) then arithmetic
//      right shift by s; s = 0 passes through unchanged. Round-half-up was
//      chosen over truncation because truncation is a floor and so biases
//      every inexact result toward -infinity: measured over the vector suite,
//      truncation shows -0.495 LSB mean bias against +0.007 LSB for
//      round-half-up, at twice the worst-case deviation (docs/03 s7).
//   2. SYMMETRIC SATURATION to OUT_W signed, then ReLU when relu_en.
//      Order is fixed as saturate -> ReLU in both RTL and golden model so
//      bit-exactness is unambiguous, and so sat_flag still reports the clamp
//      even when ReLU subsequently hides it.
//
// CONFIG IS STATIC DURING A RUN (docs/04 s1)
//   relu_en and out_shift are deliberately NOT pipelined alongside the data:
//   out_shift is consumed in stage 1 and relu_en in stage 2, so changing either
//   mid-stream would apply the new value to a result already in flight. The
//   interface contract makes that impossible -- cfg_* is sampled once at the
//   cfg_start edge and held for the whole run, across bank swaps included --
//   and ctrl_fsm drives these two from latched copies. Pipelining them would
//   cost SHIFT_W+1 flip-flops per stage to defend against a case the protocol
//   forbids. tb_normalize therefore streams the dump in segments of constant
//   config rather than changing it every cycle.
//
// INTERFACE / LATENCY / THROUGHPUT
//   Two registers: (1) the rounded value, (2) the saturated/activated result.
//   Latency NORM_STAGES = 2 enabled cycles, one result per enabled cycle.
//   `en` is the shared pipeline advance. sat_flag is an EVENT qualifier: it is
//   forced low on a non-advance clock so a held result can never be counted
//   twice (docs/04 s6, SVA a_no_event_hold).
//
// RESOURCE FOOTPRINT
//   One ACC_W adder for the rounding constant, one barrel shifter over
//   SHIFT_MAX+1 positions, two comparators and a 16-bit mux. No multiplier,
//   no memory. PIPELINE DEPTH CONTRIBUTED: NORM_STAGES = 2 of P_PIPE = 6.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module normalize
  import pkg_params::*;
(
  input  logic                       clk,
  input  logic                       rst_n,
  input  logic                       en,          // shared pipeline advance
  input  logic signed [ACC_W-1:0]    acc,
  input  logic                       relu_en,
  input  logic [SHIFT_W-1:0]         out_shift,
  output logic signed [OUT_W-1:0]    res,
  output logic                       sat_flag
);

  // -------------------------------------------------------------------------
  // Stage 1: round half up.
  //
  // The offset is 2^(s-1) for s > 0 and 0 for s = 0, so shift 0 is an exact
  // pass-through. The arithmetic right shift of a signed value floors, which
  // is what makes (acc + 2^(s-1)) >> s round ties toward +infinity -- exactly
  // the golden model semantics (Python >> on a negative int also floors).
  //
  // Width note: the sum cannot overflow ACC_W. The offset is at most
  // 2^(SHIFT_MAX-1) = 64, and |acc| <= 293,760 while ACC_W holds +/-524,288
  // (docs/03 s3), so there is ample room. Kept at ACC_W deliberately: widening
  // here would buy nothing and would break the frozen width table.
  // -------------------------------------------------------------------------
  // Sized constant 1: a parameterised size cast (ACC_W'(1)) is not accepted by
  // ModelSim ASE 10.1d, and an unsized 1 would not shift correctly at ACC_W.
  localparam logic signed [ACC_W-1:0] ACC_ONE = 1;

  logic signed [ACC_W-1:0] offset;
  logic signed [ACC_W-1:0] rounded_d;

  always_comb begin
    offset = (out_shift == '0) ? '0 : (ACC_ONE <<< (out_shift - 1'b1));
    rounded_d = (acc + offset) >>> out_shift;
  end

  logic signed [ACC_W-1:0] rounded_q;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)     rounded_q <= '0;
    else if (en)    rounded_q <= rounded_d;
  end

  // -------------------------------------------------------------------------
  // Stage 2: symmetric saturation, then optional ReLU.
  // -------------------------------------------------------------------------
  logic signed [OUT_W-1:0] sat_d;
  logic                    sat_flag_d;
  logic signed [OUT_W-1:0] res_d;

  always_comb begin
    if (rounded_q > OUT_MAX) begin
      sat_d      = OUT_MAX;
      sat_flag_d = 1'b1;
    end else if (rounded_q < OUT_MIN) begin
      sat_d      = OUT_MIN;
      sat_flag_d = 1'b1;
    end else begin
      sat_d      = rounded_q[OUT_W-1:0];   // in range by the branch above
      sat_flag_d = 1'b0;
    end
    // ReLU AFTER saturation (docs/03 s4 step 3).
    res_d = (relu_en && sat_d < 0) ? '0 : sat_d;
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      res      <= '0;
      sat_flag <= 1'b0;
    end else if (en) begin
      res      <= res_d;
      sat_flag <= sat_flag_d;
    end else begin
      // Event qualifier: a held result must not be re-reported as a second
      // saturation event. res itself may hold (docs/04 s6).
      sat_flag <= 1'b0;
    end
  end

`ifndef SYNTHESIS
  initial begin
    if (OUT_MAX != (1 << (OUT_W-1)) - 1 || OUT_MIN != -(1 << (OUT_W-1)))
      $fatal(1, "normalize: OUT_MAX/OUT_MIN inconsistent with OUT_W=%0d", OUT_W);
  end
`endif

endmodule
