// ---------------------------------------------------------------------------
// mac_array.sv --- N*N parallel signed multipliers, one register stage.
//
// Owner : WP2.  Refs: docs/02_architecture.md s4, docs/04_interfaces.md s4,
//         docs/03_fixed_point.md s2 (widths), s7 (why PROD_W carries a bit).
//
// FUNCTION
//   Multiplies each window tap by its coefficient. The unsigned PIX_W pixel is
//   zero-extended to PIXS_W = PIX_W+1 signed EXPLICITLY, so the tool builds a
//   true signed PIXS_W x COEF_W multiplier; signed/unsigned inference is never
//   relied upon (docs/03 s2). coef[r*N+c] multiplies win[r][c].
//
// INTERFACE / LATENCY / THROUGHPUT
//   Latency 1 enabled cycle (MAC_STAGES). Throughput one product set per
//   enabled cycle. `en` is the shared pipeline advance (= shift_en): the
//   product registers advance when it is high and HOLD when it is low, which
//   is what keeps the datapath coherent across input bubbles and through FLUSH.
//
// RESOURCE FOOTPRINT
//   N*N = 9 multipliers of PIXS_W x COEF_W = 9x8, plus 9 x PROD_W = 153
//   product flip-flops. In the default build every multiplier is forced to
//   fabric with (* use_dsp = "no" *): a 9x8 signed multiply is small in LUTs
//   and avoids the 50x DSP penalty in the FoM (docs/00_charter.md). The
//   USE_DSP=1 variant flips the attribute and changes nothing else -- it
//   exists only for the tradeoff study in docs/06 s6.
//
// PIPELINE DEPTH CONTRIBUTED: MAC_STAGES = 1 of P_PIPE = 6.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module mac_array
  import pkg_params::*;
#(
  // Selected by conv_top; defaults to the package value, which is never
  // overridden itself (CONTRIBUTING s2).
  parameter int USE_DSP = USE_DSP_DEFAULT
) (
  input  logic                     clk,
  input  logic                     rst_n,
  input  logic                     en,        // shared pipeline advance
  input  logic [PIX_W-1:0]         win  [0:N-1][0:N-1],
  input  logic signed [COEF_W-1:0] coef [0:N*N-1],
  output logic signed [PROD_W-1:0] prod [0:N*N-1]
);

  genvar r, c;
  generate
    for (r = 0; r < N; r++) begin : g_row
      for (c = 0; c < N; c++) begin : g_col

        localparam int IDX = r * N + c;

        // Explicit zero-extension to PIXS_W signed. The pixel is unsigned, so
        // the added MSB is a constant 0 and the result is provably >= 0 -- the
        // reason PROD_W carries one unreachable bit (docs/03 s7).
        logic signed [PIXS_W-1:0] px_s;
        assign px_s = signed'({1'b0, win[r][c]});

        if (USE_DSP == 0) begin : g_lut
          // Default: keep the multiplier in fabric. DSPs cost 50x in the FoM.
          (* use_dsp = "no" *) logic signed [PROD_W-1:0] p_q;

          always_ff @(posedge clk or negedge rst_n) begin
            if (!rst_n)     p_q <= '0;
            else if (en)    p_q <= px_s * coef[IDX];
          end
          assign prod[IDX] = p_q;

        end else begin : g_dsp
          // Tradeoff-study variant. Identical netlist apart from the attribute.
          (* use_dsp = "yes" *) logic signed [PROD_W-1:0] p_q;

          always_ff @(posedge clk or negedge rst_n) begin
            if (!rst_n)     p_q <= '0;
            else if (en)    p_q <= px_s * coef[IDX];
          end
          assign prod[IDX] = p_q;
        end

      end
    end
  endgenerate

`ifndef SYNTHESIS
  initial begin
    if (PROD_W < PIXS_W + COEF_W)
      $fatal(1, "mac_array: PROD_W=%0d cannot hold a %0dx%0d signed product",
             PROD_W, PIXS_W, COEF_W);
  end
`endif

endmodule
