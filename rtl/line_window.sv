// ---------------------------------------------------------------------------
// line_window.sv --- serpentine line-buffer / NxN window generator.
//
// Owner : WP2.  Refs: docs/02_architecture.md s2 (topology, storage budget),
//         docs/04_interfaces.md s2 (frozen port list),
//         docs/assumptions.md A1 (compile-time W), A10 (delay-line reset).
//
// FUNCTION
//   Turns the raster pixel stream into the N x N window of the pixel just
//   accepted. One serpentine shift chain, no frame buffer, no BRAM:
//
//     px -->[w22]-[w21]-[w20]-->(SRL W-N)-->[w12]-[w11]-[w10]-->(SRL W-N)-->[w02]-[w01]-[w00]
//
//   Reading delays back from the newest pixel: w22 is the pixel accepted this
//   edge (delay 0), w21/w20 are 1 and 2 pixels older, the (W-N)-deep delay plus
//   the next tap register make w12 exactly W pixels older -- one full raster
//   row -- and w02 is 2W older. That is what forms a vertically aligned window
//   without ever storing a frame.
//
//     win[r][c] = image[current_row-(N-1-r)][current_col-(N-1-c)]
//   so win[0][0] is the window top-left (oldest) and win[N-1][N-1] the newest.
//
// INTERFACE / LATENCY / THROUGHPUT
//   Purely structural: NO validity logic lives here -- ctrl_fsm owns all
//   masking (docs/04 s2). Shifts only when shift_en && px_valid, so the window
//   holds during FLUSH (shift_en high, px_valid low) and across input bubbles.
//   Latency: the window for a pixel is registered on the edge that accepts it.
//   Throughput: one window per accepted pixel, no stalls.
//
// RESOURCE FOOTPRINT / PIPELINE DEPTH
//   N*N = 9 tap flip-flops per pixel bit plus (N-1) delay lines of (W-N)
//   stages: 8 * (9 + 2*29) = 536 shift-register bits at the defaults, mapping
//   to 2 x SRLC32E per bit-slice and zero BRAM. Contributes 0 stages to P_PIPE
//   (the window register is the pipeline input, not a pipeline stage).
//
// RESET (A10)
//   The delay lines are deliberately reset-free so they infer SRLC32E, which
//   has no reset port; the nine taps keep rst_n. Undefined post-reset contents
//   cannot reach a qualified output because ctrl_fsm masks on position
//   (row_cnt >= N-1 && col_cnt >= N-1), not on data.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module line_window
  import pkg_params::*;
#(
  // Only W is overridable, and only from conv_top (docs/04 s0, CONTRIBUTING s2).
  parameter int W = W_DEFAULT
) (
  input  logic             clk,
  input  logic             rst_n,
  input  logic [PIX_W-1:0] px_data,
  input  logic             px_valid,
  input  logic             shift_en,
  output logic [PIX_W-1:0] win [0:N-1][0:N-1]
);

  // Depth of each inter-row delay. Pure local derivation from W and package
  // constants, which CONTRIBUTING s2 permits.
  localparam int DELAY_D = W - N;

  // The chain advances only on an accepted pixel. During FLUSH ctrl_fsm raises
  // shift_en with px_valid low to drain the downstream pipeline; the window
  // must hold then, which is why px_valid is required here as well (docs/04 s2).
  logic advance;
  assign advance = shift_en && px_valid;

  // -------------------------------------------------------------------------
  // Tap registers: taps[r][c] is the window register named w<r><c> above.
  // Row N-1 is the newest row and receives px_data.
  // -------------------------------------------------------------------------
  logic [PIX_W-1:0] taps [0:N-1][0:N-1];

  // Output of the delay line that feeds row r (rows 0 .. N-2 are fed by a
  // delay line; row N-1 is fed by px_data).
  logic [PIX_W-1:0] delay_out [0:N-2];

  genvar r, c, d;
  generate
    for (r = 0; r < N; r++) begin : g_row
      // --- first tap of the row (column N-1, the newest column) ------------
      always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
          taps[r][N-1] <= '0;
        else if (advance)
          // The newest row takes the incoming pixel; every older row takes the
          // output of the delay line fed by the row below it.
          taps[r][N-1] <= (r == N-1) ? px_data : delay_out[r];
      end

      // --- remaining taps shift toward column 0 (older pixels) -------------
      for (c = 0; c < N-1; c++) begin : g_tap
        always_ff @(posedge clk or negedge rst_n) begin
          if (!rst_n)
            taps[r][c] <= '0;
          else if (advance)
            taps[r][c] <= taps[r][c+1];
        end
      end
    end

    // -----------------------------------------------------------------------
    // Inter-row delay lines: DELAY_D stages between the oldest tap of row r+1
    // and the newest tap of row r. Together with that tap register this is a
    // total delay of DELAY_D + N = W pixels, i.e. exactly one raster row.
    //
    // NO RESET HERE (A10): SRLC32E has no reset port, so any reset on these
    // registers forces the tool to build flip-flops instead and destroys the
    // zero-BRAM / minimal-LUT mapping the FoM depends on.
    // -----------------------------------------------------------------------
    for (r = 0; r < N-1; r++) begin : g_delay
      (* srl_style = "srl" *) logic [PIX_W-1:0] srl [0:DELAY_D-1];

      always_ff @(posedge clk) begin
        if (advance) begin
          srl[0] <= taps[r+1][0];          // oldest tap of the row below
          for (int i = 1; i < DELAY_D; i++)
            srl[i] <= srl[i-1];
        end
      end

      assign delay_out[r] = srl[DELAY_D-1];
    end
  endgenerate

  // -------------------------------------------------------------------------
  // Window output. Combinational rename of the tap registers -- the window is
  // already registered, so this adds no logic and no latency.
  // -------------------------------------------------------------------------
  generate
    for (r = 0; r < N; r++) begin : g_win_r
      for (c = 0; c < N; c++) begin : g_win_c
        assign win[r][c] = taps[r][c];
      end
    end
  endgenerate

  // -------------------------------------------------------------------------
  // Elaboration check: a (W-N)-deep delay only spans a row when W >= N.
  // -------------------------------------------------------------------------
`ifndef SYNTHESIS
  initial begin
    if (W < N)
      $fatal(1, "line_window: W=%0d must be >= N=%0d", W, N);
    if (DELAY_D < 1)
      $fatal(1, "line_window: DELAY_D=%0d requires W > N", DELAY_D);
  end
`endif

endmodule
