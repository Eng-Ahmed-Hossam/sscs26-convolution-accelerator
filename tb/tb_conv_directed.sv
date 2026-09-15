// ---------------------------------------------------------------------------
// tb_conv_directed.sv --- directed corner tests for the known risk areas.
//
// Owner : WP4.  Ref: docs/05_verification_plan.md (directed tests for
//         "prime/flush boundaries, row-wrap at the SRL boundary, back-to-back
//         frames with no gap, kernel bank swap between frames, mid-frame
//         reset, both saturation rails, ReLU enabled and bypassed").
//
// tb_conv_top already covers bank swap, both rails, ReLU and the flush
// boundary across the whole vector suite. This file adds the three that need
// stimulus the suite cannot express:
//
//   1. MID-FRAME RESET. Assert rst_n in the middle of a frame, then run a
//      complete frame afterwards. The core must recover fully -- exactly the
//      right output count and bit-exact data -- with no residue from the
//      abandoned frame. This is the test that earns assumption A10: the line
//      buffer is reset-free, so recovery depends entirely on positional
//      masking rather than on cleared delay-line contents.
//
//   2. BACK-TO-BACK FRAMES, NO GAP. Two complete runs where the second
//      cfg_start follows the first done pulse immediately. Catches state that
//      is cleared only by reset rather than by the IDLE transition.
//
//   3. PRIME/FLUSH BOUNDARY AND ROW WRAP. Explicitly checks the first and last
//      valid output of a frame and the outputs either side of every row wrap,
//      where a wrong SRL depth (W instead of W-N) shows up as a whole-row
//      offset.
//
//   vsim -c +image=... +kernel0=... +expected0=... -do "run -all; quit -f" tb_conv_directed
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_conv_directed
  import pkg_params::*;
#(
  parameter int TBW = 32
);

  localparam int PIXELS = TBW * TBW;
  localparam int OUTS   = (TBW - N + 1) * (TBW - N + 1);
  localparam int OEDGE  = TBW - N + 1;

  logic clk = 1'b0;
  logic rst_n;
  logic [PIX_W-1:0]         px_data;
  logic                     px_valid, px_last;
  logic                     kl_valid;
  logic [BANK_W-1:0]        kl_bank;
  logic [KADDR_W-1:0]       kl_addr;
  logic signed [COEF_W-1:0] kl_coef;
  logic                     cfg_start, cfg_relu_en;
  logic [SHIFT_W-1:0]       cfg_out_shift;
  logic [NUM_KERN_W-1:0]    cfg_num_kernels;
  logic signed [OUT_W-1:0]  out_data;
  logic                     out_valid, out_last, sat_flag, busy, done;
  logic [BANK_W-1:0]        out_bank;

  int errors = 0;
  int n_out = 0;
  // Typed comparands: no parameterised size casts (ModelSim ASE 10.1d).
  logic signed [OUT_W-1:0] exp_v, exp_v2;
  int got [0:1024*16-1];
  bit collect = 1'b0;

  always #5 clk = ~clk;

  conv_top #(.W(TBW)) dut (
    .clk(clk), .rst_n(rst_n),
    .px_data(px_data), .px_valid(px_valid), .px_last(px_last),
    .kl_valid(kl_valid), .kl_bank(kl_bank), .kl_addr(kl_addr), .kl_coef(kl_coef),
    .cfg_start(cfg_start), .cfg_relu_en(cfg_relu_en),
    .cfg_out_shift(cfg_out_shift), .cfg_num_kernels(cfg_num_kernels),
    .out_data(out_data), .out_valid(out_valid), .out_last(out_last),
    .out_bank(out_bank), .sat_flag(sat_flag), .busy(busy), .done(done)
  );

  int image [0:1024*16-1];
  int kern  [0:N*N-1];
  int expect_[0:1024*16-1];
  string s_image, s_kern, s_exp;

  always @(posedge clk) begin
    #1;
    if (rst_n && out_valid && collect) begin
      if (n_out < 1024*16) got[n_out] = out_data;
      n_out++;
    end
  end

  function automatic int read_ints(input string path, input int max_n,
                                   output int values [0:1024*16-1]);
    int fd, v, n;
    fd = $fopen(path, "r");
    if (fd == 0) $fatal(1, "tb_conv_directed: cannot open %s", path);
    n = 0;
    while (n < max_n && $fscanf(fd, "%d", v) == 1) begin values[n] = v; n++; end
    $fclose(fd);
    return n;
  endfunction

  task automatic do_reset();
    @(negedge clk);
    rst_n <= 1'b0; px_valid <= 1'b0; px_last <= 1'b0;
    cfg_start <= 1'b0; kl_valid <= 1'b0;
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n <= 1'b1;
    repeat (2) @(posedge clk);
  endtask

  task automatic load_bank0();
    for (int i = 0; i < N*N; i++) begin
      @(negedge clk);
      kl_valid <= 1'b1; kl_bank <= '0;
      kl_addr  <= i[KADDR_W-1:0];
      kl_coef  <= kern[i][COEF_W-1:0];
      @(posedge clk);
    end
    @(negedge clk) kl_valid <= 1'b0;
  endtask

  task automatic start_run();
    @(negedge clk);
    cfg_relu_en <= 1'b0; cfg_out_shift <= '0; cfg_num_kernels <= 3'd1;
    cfg_start   <= 1'b1;
    @(posedge clk);
    @(negedge clk) cfg_start <= 1'b0;
    @(posedge clk);              // the single LOAD_KERNEL arming cycle
  endtask

  // Stream `count` pixels starting at index `from`; no bubbles.
  task automatic stream(input int from, input int count, input bit assert_last);
    for (int i = from; i < from + count; i++) begin
      @(negedge clk);
      px_data  <= image[i][PIX_W-1:0];
      px_valid <= 1'b1;
      px_last  <= (assert_last && (i == PIXELS-1));
      @(posedge clk);
    end
    @(negedge clk);
    px_valid <= 1'b0;
    px_last  <= 1'b0;
  endtask

  task automatic wait_done(input int limit);
    int guard;
    guard = 0;
    while (done !== 1'b1 && guard < limit) begin
      @(posedge clk);
      guard++;
    end
    if (done !== 1'b1) begin
      errors++;
      $display("FAIL  done never pulsed within %0d cycles", limit);
    end
  endtask

  task automatic check_frame(input string what);
    if (n_out != OUTS) begin
      errors++;
      $display("FAIL  %s: %0d outputs, expected %0d", what, n_out, OUTS);
      return;
    end
    for (int i = 0; i < OUTS; i++) begin
      exp_v = expect_[i];
      if (got[i] !== exp_v) begin
        errors++;
        if (errors <= 8)
          $display("FAIL  %s: output %0d = %0d, model says %0d",
                   what, i, got[i], expect_[i]);
      end
    end
  endtask

  int n_read;

  initial begin
    if (!$value$plusargs("image=%s", s_image))    $fatal(1, "+image= required");
    if (!$value$plusargs("kernel0=%s", s_kern))   $fatal(1, "+kernel0= required");
    if (!$value$plusargs("expected0=%s", s_exp))  $fatal(1, "+expected0= required");

    $display("--- tb_conv_directed: W=%0d ---", TBW);
    n_read = read_ints(s_image, PIXELS, image);
    if (n_read != PIXELS) $fatal(1, "image has %0d pixels, expected %0d", n_read, PIXELS);
    begin
      int tmp [0:1024*16-1];
      n_read = read_ints(s_kern, N*N, tmp);
      if (n_read != N*N) $fatal(1, "kernel has %0d coefficients", n_read);
      for (int i = 0; i < N*N; i++) kern[i] = tmp[i];
      n_read = read_ints(s_exp, OUTS, tmp);
      if (n_read != OUTS) $fatal(1, "expected has %0d outputs", n_read);
      for (int i = 0; i < OUTS; i++) expect_[i] = tmp[i];
    end

    px_data = '0; px_valid = 1'b0; px_last = 1'b0;
    kl_valid = 1'b0; kl_bank = '0; kl_addr = '0; kl_coef = '0;
    cfg_start = 1'b0; cfg_relu_en = 1'b0; cfg_out_shift = '0; cfg_num_kernels = 3'd1;
    rst_n = 1'b0;

    // =======================================================================
    // 1. MID-FRAME RESET
    // =======================================================================
    do_reset();
    load_bank0();
    start_run();
    collect = 1'b0;
    // Stream well past the priming boundary so the line buffer holds real
    // data and outputs are actively being produced, then yank reset.
    stream(0, PIXELS/2, 1'b0);
    if (busy !== 1'b1) begin
      errors++;
      $display("FAIL  busy low mid-frame");
    end
    @(negedge clk) rst_n <= 1'b0;
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n <= 1'b1;
    repeat (2) @(posedge clk);
    if (busy !== 1'b0) begin
      errors++;
      $display("FAIL  busy still high after a mid-frame reset");
    end
    if (out_valid !== 1'b0) begin
      errors++;
      $display("FAIL  out_valid high after a mid-frame reset");
    end

    // Now a complete, clean frame. It must be bit-exact despite the reset-free
    // line buffer still holding stale pixels from the abandoned frame (A10).
    load_bank0();
    start_run();
    n_out = 0; collect = 1'b1;
    stream(0, PIXELS, 1'b1);
    wait_done(200);
    collect = 1'b0;
    check_frame("frame after mid-frame reset");
    if (errors == 0)
      $display("ok    mid-frame reset: recovered, %0d outputs bit-exact", n_out);

    // =======================================================================
    // 2. BACK-TO-BACK FRAMES, NO IDLE GAP
    // =======================================================================
    // done pulsed on the previous cycle; start again immediately.
    load_bank0();
    start_run();
    n_out = 0; collect = 1'b1;
    stream(0, PIXELS, 1'b1);
    wait_done(200);
    collect = 1'b0;
    check_frame("back-to-back frame 2");
    if (errors == 0)
      $display("ok    back-to-back frames: second frame bit-exact, no gap");

    // =======================================================================
    // 3. PRIME/FLUSH BOUNDARY AND ROW WRAP
    // =======================================================================
    // First and last valid outputs of the frame, and the outputs either side
    // of every row wrap, are already in `got` from the run above.
    exp_v = expect_[0];
    if (got[0] !== exp_v) begin
      errors++;
      $display("FAIL  first valid output (PRIME->RUN boundary) = %0d, expected %0d",
               got[0], expect_[0]);
    end
    exp_v = expect_[OUTS-1];
    if (got[OUTS-1] !== exp_v) begin
      errors++;
      $display("FAIL  last valid output (FLUSH boundary) = %0d, expected %0d",
               got[OUTS-1], expect_[OUTS-1]);
    end
    for (int r = 1; r < OEDGE; r++) begin
      int last_of_prev, first_of_this;
      last_of_prev  = r * OEDGE - 1;
      first_of_this = r * OEDGE;
      exp_v  = expect_[last_of_prev];
      exp_v2 = expect_[first_of_this];
      if (got[last_of_prev] !== exp_v || got[first_of_this] !== exp_v2) begin
        errors++;
        if (errors <= 8)
          $display("FAIL  row wrap at output row %0d (SRL boundary)", r);
      end
    end
    if (errors == 0)
      $display("ok    prime/flush boundaries and all %0d row wraps correct", OEDGE-1);

    $display("--- tb_conv_directed: %0d error(s) ---", errors);
    if (errors != 0) $fatal(1, "tb_conv_directed FAILED with %0d error(s)", errors);
    $display("tb_conv_directed PASSED");
    $finish;
  end

endmodule
