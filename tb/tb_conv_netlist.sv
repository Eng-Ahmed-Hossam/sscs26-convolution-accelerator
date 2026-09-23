// ---------------------------------------------------------------------------
// tb_conv_netlist.sv --- post-implementation netlist testbench.
//
// Owner : WP5.  Refs: docs/06_implementation_flow.md s4 (SAIF power
//         methodology), docs/05_verification_plan.md (bit-exactness bar).
//
// WHY A SEPARATE TESTBENCH FROM tb_conv_top
//   tb_conv_top reaches into the design hierarchy (dut.u_ctrl_fsm.state,
//   dut.u_adder_tree.p8_a1, dut.win, ...) for its property checkers and
//   coverage. None of those paths survive synthesis -- the netlist is a flat
//   sea of LUTs and FDREs -- so that testbench cannot elaborate against it.
//   This one drives ONLY the top-level ports of docs/04_interfaces.md s1,
//   which is exactly the right contract to check the implemented design
//   against: if the netlist is bit-exact through its public interface, the
//   implementation is correct regardless of how the tool restructured it.
//
// TWO JOBS
//   1. NETLIST VERIFICATION. Every output pixel bit-exact against the golden
//      model, from the placed-and-routed netlist rather than from RTL. Until
//      this runs, the thing that was actually implemented has never been
//      simulated -- only the RTL it came from.
//   2. SAIF WINDOW. Prints STREAM_START / STREAM_END markers so the power
//      flow can capture switching activity over exactly one frame, skipping
//      reset and kernel load, as docs/06 s4 requires. Vectorless activity
//      propagation is not a credible power number; this is what replaces it.
//
// GSR NOTE: a funcsim netlist carries Xilinx global set/reset, which holds
// every flop for the first 100 ns of simulation. Reset is therefore held well
// past that before any stimulus is driven.
//
//   +image= +kernel0= +expected0= [+relu=0|1] [+shift=S]
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_conv_netlist;

  // The netlist is elaborated at the build-time parameter values, so these are
  // fixed here rather than parameterised -- they must match the checkpoint.
  localparam int TBW    = 32;
  localparam int TBN    = 3;
  localparam int PIXELS = TBW * TBW;
  localparam int OUTS   = (TBW - TBN + 1) * (TBW - TBN + 1);

  localparam int PIX_W  = 8;
  localparam int COEF_W = 8;
  localparam int OUT_W  = 16;

  logic clk = 1'b0;
  logic rst_n;
  logic [PIX_W-1:0]  px_data;
  logic              px_valid, px_last;
  logic              kl_valid;
  logic [1:0]        kl_bank;
  logic [3:0]        kl_addr;
  logic signed [COEF_W-1:0] kl_coef;
  logic              cfg_start, cfg_relu_en;
  logic [2:0]        cfg_out_shift;
  logic [2:0]        cfg_num_kernels;

  logic signed [OUT_W-1:0] out_data;
  logic              out_valid, out_last;
  logic [1:0]        out_bank;
  logic              sat_flag, busy, done;

  int errors  = 0;
  int n_out   = 0;
  // done is a ONE-CYCLE pulse and it fires while the pipeline drains, which
  // is before the wait loop below is reached. Latch it when it happens rather
  // than polling for it afterwards -- polling looks for a pulse already gone.
  bit done_seen = 1'b0;

  always #5 clk = ~clk;

  always @(posedge clk) if (rst_n === 1'b1 && done === 1'b1) done_seen <= 1'b1;

  conv_top dut (
    .clk(clk), .rst_n(rst_n),
    .px_data(px_data), .px_valid(px_valid), .px_last(px_last),
    .kl_valid(kl_valid), .kl_bank(kl_bank), .kl_addr(kl_addr), .kl_coef(kl_coef),
    .cfg_start(cfg_start), .cfg_relu_en(cfg_relu_en),
    .cfg_out_shift(cfg_out_shift), .cfg_num_kernels(cfg_num_kernels),
    .out_data(out_data), .out_valid(out_valid), .out_last(out_last),
    .out_bank(out_bank), .sat_flag(sat_flag), .busy(busy), .done(done)
  );

  int image   [0:PIXELS-1];
  int kern    [0:8];
  int expect_ [0:OUTS-1];
  int relu_cfg, shift_cfg;
  string s_image, s_kern, s_exp;

  logic signed [OUT_W-1:0] exp_v;

  // --- scoreboard -----------------------------------------------------------
  always @(posedge clk) begin
    #1;
    if (rst_n === 1'b1 && out_valid === 1'b1) begin
      if (n_out < OUTS) begin
        exp_v = expect_[n_out];
        if (out_data !== exp_v) begin
          errors++;
          if (errors <= 10)
            $display("FAIL  netlist output %0d: got %0d, model says %0d",
                     n_out, out_data, expect_[n_out]);
        end
        if ($isunknown(out_data)) begin
          errors++;
          if (errors <= 10)
            $display("FAIL  netlist output %0d carries X", n_out);
        end
      end else begin
        errors++;
        if (errors <= 10)
          $display("FAIL  netlist produced output %0d beyond the expected %0d",
                   n_out, OUTS);
      end
      n_out++;
    end
  end

  function automatic int read_ints(input string path, input int max_n,
                                   output int values [0:PIXELS-1]);
    int fd, v, n;
    fd = $fopen(path, "r");
    if (fd == 0) $fatal(1, "tb_conv_netlist: cannot open %s", path);
    n = 0;
    while (n < max_n && $fscanf(fd, "%d", v) == 1) begin values[n] = v; n++; end
    $fclose(fd);
    return n;
  endfunction

  int n_read;
  int tmp [0:PIXELS-1];

  initial begin
    if (!$value$plusargs("image=%s", s_image))   $fatal(1, "+image= required");
    if (!$value$plusargs("kernel0=%s", s_kern))  $fatal(1, "+kernel0= required");
    if (!$value$plusargs("expected0=%s", s_exp)) $fatal(1, "+expected0= required");
    if (!$value$plusargs("relu=%d", relu_cfg))   relu_cfg = 0;
    if (!$value$plusargs("shift=%d", shift_cfg)) shift_cfg = 0;

    $display("--- tb_conv_netlist: post-implementation, W=%0d ---", TBW);

    n_read = read_ints(s_image, PIXELS, image);
    if (n_read != PIXELS) $fatal(1, "image has %0d pixels, expected %0d", n_read, PIXELS);
    n_read = read_ints(s_kern, 9, tmp);
    if (n_read != 9) $fatal(1, "kernel has %0d coefficients", n_read);
    for (int i = 0; i < 9; i++) kern[i] = tmp[i];
    n_read = read_ints(s_exp, OUTS, tmp);
    if (n_read != OUTS) $fatal(1, "expected has %0d outputs", n_read);
    for (int i = 0; i < OUTS; i++) expect_[i] = tmp[i];

    px_data = '0; px_valid = 1'b0; px_last = 1'b0;
    kl_valid = 1'b0; kl_bank = '0; kl_addr = '0; kl_coef = '0;
    cfg_start = 1'b0;
    cfg_relu_en     = relu_cfg[0];
    cfg_out_shift   = shift_cfg[2:0];
    cfg_num_kernels = 3'd1;
    rst_n = 1'b0;

    // Hold reset well past the 100 ns Xilinx GSR window.
    repeat (30) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;
    repeat (4) @(posedge clk);

    // --- load bank 0 before cfg_start (A2) --------------------------------
    for (int i = 0; i < 9; i++) begin
      @(negedge clk);
      kl_valid <= 1'b1;
      kl_bank  <= 2'd0;
      kl_addr  <= i[3:0];
      kl_coef  <= kern[i][COEF_W-1:0];
      @(posedge clk);
    end
    @(negedge clk) kl_valid <= 1'b0;

    // --- configure and start ----------------------------------------------
    @(negedge clk) cfg_start <= 1'b1;
    @(posedge clk);
    @(negedge clk) cfg_start <= 1'b0;
    @(posedge clk);                       // the one LOAD_KERNEL arming cycle

    // The SAIF window opens here: reset, GSR and kernel load are all behind us,
    // so the captured activity is one frame of real streaming (docs/06 s4).
    $display("SAIF_MARK STREAM_START %0t", $time);

    for (int i = 0; i < PIXELS; i++) begin
      @(negedge clk);
      px_data  <= image[i][PIX_W-1:0];
      px_valid <= 1'b1;
      px_last  <= (i == PIXELS-1);
      @(posedge clk);
    end
    @(negedge clk);
    px_valid <= 1'b0;
    px_last  <= 1'b0;

    // Drain the pipeline so the final outputs are produced inside the window.
    repeat (20) @(posedge clk);
    $display("SAIF_MARK STREAM_END %0t", $time);

    begin
      int guard;
      guard = 0;
      while (!done_seen && guard < 500) begin
        @(posedge clk);
        guard++;
      end
      if (!done_seen) begin
        errors++;
        $display("FAIL  netlist never pulsed done");
      end
    end

    if (n_out != OUTS) begin
      errors++;
      $display("FAIL  netlist produced %0d outputs, expected %0d", n_out, OUTS);
    end

    $display("RESULT outputs=%0d errors=%0d", n_out, errors);
    if (errors != 0)
      $fatal(1, "tb_conv_netlist FAILED with %0d error(s)", errors);
    $display("tb_conv_netlist PASSED: %0d outputs bit-exact from the routed netlist",
             n_out);
    $finish;
  end

endmodule
