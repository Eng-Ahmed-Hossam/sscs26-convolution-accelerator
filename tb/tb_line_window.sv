// ---------------------------------------------------------------------------
// tb_line_window.sv --- unit testbench for the serpentine window generator.
//
// Owner : WP4.  Ref: docs/05_verification_plan.md s3 ("tap positions vs a
//         reference queue"), docs/02_architecture.md s2, docs/assumptions.md A10.
//
// Checks, against a reference copy of the image rather than against the DUT:
//   1. tap positions  --- win[r][c] == image[row-(N-1-r)][col-(N-1-c)] for
//                         every window that is fully in bounds;
//   2. bubble hold    --- px_valid low with shift_en high (the FLUSH case)
//                         leaves every tap unchanged;
//   3. stall hold     --- shift_en low with px_valid high leaves them unchanged;
//   4. random bubbles --- the same position check with a randomly gapped
//                         stream, proving the window depends on accepted
//                         pixels only, never on wall-clock cycles;
//   5. row wrap       --- exercised implicitly by running whole frames, which
//                         is where a wrong delay depth (W vs W-N) shows up.
//
// Run for one W:
//   vlog -sv rtl/pkg_params.sv rtl/line_window.sv tb/tb_line_window.sv
//   vsim -c -gTBW=8 -do "run -all; quit -f" tb_line_window
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_line_window
  import pkg_params::*;
#(
  parameter int TBW = 32       // image edge under test; override with -gTBW=
);

  localparam int PIXELS = TBW * TBW;

  logic clk = 1'b0;
  logic rst_n;
  logic [PIX_W-1:0] px_data;
  logic             px_valid;
  logic             shift_en;
  logic [PIX_W-1:0] win [0:N-1][0:N-1];

  int errors = 0;
  int windows_checked = 0;

  always #5 clk = ~clk;

  line_window #(.W(TBW)) dut (
    .clk(clk), .rst_n(rst_n),
    .px_data(px_data), .px_valid(px_valid), .shift_en(shift_en),
    .win(win)
  );

  // -------------------------------------------------------------------------
  // Reference image. Deliberately NOT a copy of anything the DUT computes:
  // a pure function of (row, col) that is distinct for every pixel of a frame,
  // so a transposed or misdelayed tap cannot coincidentally match.
  // -------------------------------------------------------------------------
  function automatic logic [PIX_W-1:0] ref_pixel(input int row, input int col);
    return logic'(((row * 37) + (col * 11) + 1) % (PIX_MAX + 1));
  endfunction

  // Index of the most recently accepted pixel, -1 before the first.
  int accepted = -1;

  // -------------------------------------------------------------------------
  // Check every tap of the window formed by the pixel just accepted.
  // -------------------------------------------------------------------------
  task automatic check_window();
    int row, col, sr, sc;
    logic [PIX_W-1:0] want;
    if (accepted < 0) return;
    row = accepted / TBW;
    col = accepted % TBW;
    // Only fully in-bounds windows are defined: the first N-1 rows and the
    // first N-1 columns of a row have no complete window (no padding, A3).
    if (row < N-1 || col < N-1) return;

    windows_checked++;
    for (int r = 0; r < N; r++) begin
      for (int c = 0; c < N; c++) begin
        sr = row - (N-1-r);
        sc = col - (N-1-c);
        want = ref_pixel(sr, sc);
        if (win[r][c] !== want) begin
          errors++;
          if (errors <= 10)
            $display("FAIL  pixel %0d (row %0d col %0d): win[%0d][%0d] = %0d, expected %0d (image[%0d][%0d])",
                     accepted, row, col, r, c, win[r][c], want, sr, sc);
        end
      end
    end
  endtask

  // Snapshot / compare, for the hold tests.
  logic [PIX_W-1:0] snap [0:N-1][0:N-1];

  task automatic take_snapshot();
    for (int r = 0; r < N; r++)
      for (int c = 0; c < N; c++)
        snap[r][c] = win[r][c];
  endtask

  task automatic check_held(input string what);
    for (int r = 0; r < N; r++)
      for (int c = 0; c < N; c++)
        if (win[r][c] !== snap[r][c]) begin
          errors++;
          $display("FAIL  %s: win[%0d][%0d] changed %0d -> %0d",
                   what, r, c, snap[r][c], win[r][c]);
        end
  endtask

  // -------------------------------------------------------------------------
  // Drive one cycle. `valid`/`sh` let the caller create bubbles and stalls.
  // -------------------------------------------------------------------------
  task automatic step(input int idx, input bit valid, input bit sh);
    @(negedge clk);
    px_data  <= (idx >= 0 && idx < PIXELS) ? ref_pixel(idx / TBW, idx % TBW) : '0;
    px_valid <= valid;
    shift_en <= sh;
    @(posedge clk);
    #1;
    if (valid && sh) begin
      accepted = idx;
      check_window();
    end
  endtask

  // -------------------------------------------------------------------------
  // Stimulus
  // -------------------------------------------------------------------------
  int seed = 1;
  int idx;

  initial begin
    $display("--- tb_line_window: W=%0d N=%0d DELAY_D=%0d ---", TBW, N, TBW-N);

    px_data = '0; px_valid = 1'b0; shift_en = 1'b0;
    rst_n = 1'b0;
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;

    // --- 1/5. clean frame: every tap position, every row wrap --------------
    for (idx = 0; idx < PIXELS; idx++)
      step(idx, 1'b1, 1'b1);
    $display("ok    clean frame: %0d in-bounds windows checked", windows_checked);

    // --- 2. FLUSH-style hold: shift_en high, px_valid low ------------------
    take_snapshot();
    repeat (P_PIPE) step(-1, 1'b0, 1'b1);
    check_held("flush hold (shift_en=1, px_valid=0)");
    $display("ok    window holds across %0d FLUSH advances", P_PIPE);

    // --- 3. stall hold: px_valid high, shift_en low ------------------------
    take_snapshot();
    repeat (4) step(PIXELS-1, 1'b1, 1'b0);
    check_held("stall hold (shift_en=0, px_valid=1)");
    $display("ok    window holds while shift_en is low");

    // --- 4. gapped stream: same position check, randomly bubbled -----------
    begin
      // Declared and assigned separately: a variable initialised in its
      // declaration inside a procedural block is STATIC, so the initialiser
      // would run once at time zero and record 0 rather than the count so far.
      // ModelSim warns about this (vlog-LRM-2244); it is a real bug, not noise.
      automatic int checked_before = 0;
      checked_before = windows_checked;
      // Re-prime from reset so the frame starts cleanly.
      @(negedge clk) rst_n = 1'b0;
      repeat (2) @(posedge clk);
      @(negedge clk) rst_n = 1'b1;
      accepted = -1;

      idx = 0;
      while (idx < PIXELS) begin
        if (($random(seed) % 3) == 0) begin
          // Bubble: no pixel accepted, so the window must not move. Both the
          // px_valid=0 and the shift_en=0 flavours appear.
          step(-1, 1'b0, ($random(seed) % 2) != 0);
        end else begin
          step(idx, 1'b1, 1'b1);
          idx++;
        end
      end
      $display("ok    gapped frame: %0d further in-bounds windows checked",
               windows_checked - checked_before);
    end

    $display("--- tb_line_window: %0d window(s) checked, %0d error(s) ---",
             windows_checked, errors);
    if (errors != 0)
      $fatal(1, "tb_line_window FAILED with %0d error(s)", errors);
    $display("tb_line_window PASSED");
    $finish;
  end

endmodule
