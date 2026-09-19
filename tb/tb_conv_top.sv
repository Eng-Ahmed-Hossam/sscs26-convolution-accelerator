// ---------------------------------------------------------------------------
// tb_conv_top.sv --- top-level self-checking testbench.
//
// Owner : WP4.  Refs: docs/05_verification_plan.md s3, docs/04_interfaces.md s1,
//         docs/02_architecture.md s8 (latency formula).
//
// Phase 4 scope: prove the integrated core is bit-exact against the golden
// model on a real vector, drives the frozen protocol correctly, and hits the
// closed-form latency. The full Phase 5 environment (whole vector suite,
// randomised bank-swap sequences, SVA, functional coverage) builds on this.
//
// Reads the committed vector files directly, so the comparison is against
// model/gen_vectors.py output rather than anything computed here:
//   +image=<path>      W*W pixels, one per line
//   +kernel0..3=<path> N*N coefficients each, one per line
//   +expected0..3=<path>  (W-N+1)^2 expected outputs per bank
//   +shift=<0..7> +relu=<0|1> +banks=<1..4>
//   +bubbles=<0|1>     randomly gap px_valid
//   +checklat=<0|1>    assert the no-bubble inclusive latency T_first
//
// Checks:
//   1. every output bit-exact against the expected file, in order;
//   2. exactly (W-N+1)^2 outputs per bank, out_last on the final one;
//   3. out_bank matches the bank that produced the data (aligned metadata,
//      not the freshly incremented bank_sel);
//   4. no X on qualified data;
//   5. out_valid never asserts outside RUN/FLUSH;
//   6. no-bubble inclusive latency T_first = (N-1)*W + N + P_PIPE;
//   7. busy/done protocol.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_conv_top
  import pkg_params::*;
#(
  parameter int TBW = 32
);

  localparam int PIXELS  = TBW * TBW;
  localparam int OUTS    = (TBW - N + 1) * (TBW - N + 1);
  localparam int T_FIRST = (N - 1) * TBW + N + P_PIPE;

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
  logic                     out_valid, out_last;
  logic [BANK_W-1:0]        out_bank;
  logic                     sat_flag, busy, done;

  int errors = 0;
  int n_out = 0;
  int first_valid_cyc = 0;
  int inclusive_cyc = 0;
  bit counting = 1'b0;

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

  // -------------------------------------------------------------------------
  // Stimulus / expectation storage
  // -------------------------------------------------------------------------
  // Sized from TBW, not a fixed constant: a W=256 frame is 65536 pixels,
  // four times the old hardcoded 16384 bound.
  int image   [0:PIXELS-1];
  int kern    [0:NUM_BANKS-1][0:N*N-1];
  int expect_ [0:NUM_BANKS-1][0:OUTS-1];
  int banks_used, shift_cfg, relu_cfg, use_bubbles, check_lat;

  function automatic int read_ints(input string path, input int max_n,
                                   output int values [0:PIXELS-1]);
    int fd, v, n;
    fd = $fopen(path, "r");
    if (fd == 0) $fatal(1, "tb_conv_top: cannot open %s", path);
    n = 0;
    while (n < max_n && $fscanf(fd, "%d", v) == 1) begin
      values[n] = v;
      n++;
    end
    $fclose(fd);
    return n;
  endfunction

  // -------------------------------------------------------------------------
  // Output monitor: collects and checks every qualified beat.
  // -------------------------------------------------------------------------
  // Captured outputs, dumped as the "HW outputs" deliverable of docs/05 s3.
  int hw_out [0:NUM_BANKS-1][0:OUTS-1];
  int exp_idx, exp_bank;
  logic signed [OUT_W-1:0] sat_hi = OUT_MAX;
  logic signed [OUT_W-1:0] sat_lo = OUT_MIN;
  // Typed comparands: no parameterised size casts (ModelSim ASE 10.1d).
  logic signed [OUT_W-1:0] exp_data_v;
  logic [BANK_W-1:0]       exp_bank_v;

  always @(posedge clk) begin
    #1;
    if (rst_n && out_valid) begin
      // 4. no X on qualified data
      if ($isunknown({out_data, out_bank, out_last})) begin
        errors++;
        $display("FAIL  output %0d: X on qualified data", n_out);
      end
      // 5. outputs only in RUN or FLUSH
      if (!(dut.u_ctrl_fsm.state == dut.u_ctrl_fsm.RUN ||
            dut.u_ctrl_fsm.state == dut.u_ctrl_fsm.FLUSH)) begin
        errors++;
        $display("FAIL  output %0d asserted in state %0d", n_out, dut.u_ctrl_fsm.state);
      end
      if (n_out == 0) first_valid_cyc = inclusive_cyc;

      exp_bank = n_out / OUTS;
      exp_idx  = n_out % OUTS;
      // 1. bit-exact against the golden-model expectation
      if (exp_bank < banks_used) begin
        exp_data_v = expect_[exp_bank][exp_idx];
        if (out_data !== exp_data_v) begin
          errors++;
          if (errors <= 10)
            $display("FAIL  bank %0d output %0d: got %0d, model says %0d",
                     exp_bank, exp_idx, out_data, expect_[exp_bank][exp_idx]);
        end
        // 3. out_bank comes from the aligned metadata
        exp_bank_v = exp_bank[BANK_W-1:0];
        if (out_bank !== exp_bank_v) begin
          errors++;
          if (errors <= 10)
            $display("FAIL  bank %0d output %0d: out_bank = %0d",
                     exp_bank, exp_idx, out_bank);
        end
        // 2. out_last exactly on the final output of each bank
        if (out_last !== ((exp_idx == OUTS-1) ? 1'b1 : 1'b0)) begin
          errors++;
          if (errors <= 10)
            $display("FAIL  bank %0d output %0d: out_last = %0b, expected %0b",
                     exp_bank, exp_idx, out_last, (exp_idx == OUTS-1));
        end
      end else begin
        errors++;
        if (errors <= 10)
          $display("FAIL  output %0d is beyond the %0d expected outputs",
                   n_out, banks_used * OUTS);
      end
      if (exp_bank < NUM_BANKS && exp_idx < OUTS)
        hw_out[exp_bank][exp_idx] = out_data;
      n_out++;
    end
  end

  // -------------------------------------------------------------------------
  // docs/05 s6 properties, as PROCEDURAL checkers.
  //
  // ModelSim ASE 10.1d supports neither concurrent assertions nor covergroups,
  // so the properties are coded as clocked procedural checks here. They test
  // the same behaviour, but this is weaker evidence than real SVA: it samples
  // one point per cycle rather than being a temporal property the tool proves
  // over every trace. The SVA text lives in docs/05 s6 and should be bound
  // verbatim once a capable simulator (Questa/xsim/Verilator) is available.
  // The regression reports these as procedural, never as SVA.
  // -------------------------------------------------------------------------
  localparam int NPROP = 10;
  int    prop_fail [0:NPROP-1];
  string prop_name [0:NPROP-1];

  int   valid_cnt_bank = 0;
  logic prev_out_last  = 1'b0;
  logic win_adv_q      = 1'b0;   // registered (shift_en && px_valid)

  logic [PIX_W-1:0]         prev_win  [0:N-1][0:N-1];
  logic signed [PROD_W-1:0] prev_prod [0:N*N-1];
  logic signed [ACC_W-1:0]  prev_acc;
  logic signed [OUT_W-1:0]  prev_res;
  logic signed [PROD_W-1:0] prev_p8a1;
  bit   prev_valid = 1'b0;

  always @(posedge clk) win_adv_q <= dut.shift_en && px_valid;

  always @(posedge clk) begin
    #1;
    if (rst_n) begin
      // A4: out_last implies out_valid, and is a single-cycle pulse.
      if (out_last && !out_valid)    prop_fail[0]++;
      if (prev_out_last && out_last) prop_fail[1]++;

      // A1: exactly OUTS qualified beats per bank, out_last on the last one.
      if (out_valid) begin
        if (out_last) begin
          if (valid_cnt_bank != OUTS-1) prop_fail[2]++;
          valid_cnt_bank = 0;
        end else begin
          valid_cnt_bank++;
        end
      end

      // A2: no X on qualified data.
      if (out_valid && $isunknown({out_data, out_bank, out_last})) prop_fail[3]++;

      // A3: outputs only in RUN or FLUSH.
      if (out_valid && !(dut.u_ctrl_fsm.state == dut.u_ctrl_fsm.RUN ||
                         dut.u_ctrl_fsm.state == dut.u_ctrl_fsm.FLUSH))
        prop_fail[4]++;

      // A5: ReLU invariant -- no negative output while ReLU is enabled.
      if (out_valid && dut.u_ctrl_fsm.relu_en && out_data[OUT_W-1]) prop_fail[5]++;

      // A6: event qualifiers never survive a non-advance clock. advanced_q is
      // the registered shift_en, so it says whether THIS edge advanced.
      if (!dut.u_ctrl_fsm.advanced_q && (out_valid || out_last || sat_flag))
        prop_fail[6]++;

      // Alignment 1: the registered window changes only on an accepted pixel,
      // so it holds through FLUSH and across every input bubble.
      if (prev_valid && !win_adv_q)
        for (int r = 0; r < N; r++)
          for (int c = 0; c < N; c++)
            if (dut.win[r][c] !== prev_win[r][c]) prop_fail[7]++;

      // Alignment 2: MAC, tree and normalize hold when the pipeline did not
      // advance.
      if (prev_valid && !dut.u_ctrl_fsm.advanced_q) begin
        for (int i = 0; i < N*N; i++)
          if (dut.prod[i] !== prev_prod[i]) prop_fail[8]++;
        if (dut.acc  !== prev_acc) prop_fail[8]++;
        if (out_data !== prev_res) prop_fail[8]++;
      end

      // Alignment 3: p8 advances through BOTH alignment registers, one stage
      // per enabled edge, so stage 3 adds a cycle-aligned term.
      if (prev_valid && dut.u_ctrl_fsm.advanced_q) begin
        if (dut.u_adder_tree.p8_a2 !== prev_p8a1) prop_fail[9]++;
      end

      // snapshots for the next cycle
      for (int r = 0; r < N; r++)
        for (int c = 0; c < N; c++) prev_win[r][c] = dut.win[r][c];
      for (int i = 0; i < N*N; i++) prev_prod[i] = dut.prod[i];
      prev_acc      = dut.acc;
      prev_res      = out_data;
      prev_p8a1     = dut.u_adder_tree.p8_a1;
      prev_out_last = out_last;
      prev_valid    = 1'b1;
    end else begin
      prev_valid = 1'b0;
    end
  end

  // -------------------------------------------------------------------------
  // Functional coverage, collected procedurally (no covergroups in ASE).
  // Emitted as COVER lines; run_regression.py aggregates them across all runs.
  // -------------------------------------------------------------------------
  bit cov_state  [0:4];      // IDLE, LOAD_KERNEL, PRIME, RUN, FLUSH
  bit cov_bank   [0:NUM_BANKS-1];
  bit cov_relu   [0:1];
  bit cov_shift  [0:7];
  bit cov_bubble [0:1];
  bit cov_nbanks [1:NUM_BANKS];
  bit cov_sat_pos, cov_sat_neg, cov_relu_clip;
  bit cov_kzero, cov_kmaxpos, cov_kmaxneg, cov_kmixed;

  always @(posedge clk) begin
    #1;
    if (rst_n) begin
      cov_state[dut.u_ctrl_fsm.state] = 1'b1;
      if (out_valid) begin
        cov_bank[out_bank] = 1'b1;
        cov_relu[dut.u_ctrl_fsm.relu_en] = 1'b1;
        if (sat_flag && out_data == sat_hi) cov_sat_pos = 1'b1;
        if (sat_flag && out_data == sat_lo) cov_sat_neg = 1'b1;
        if (dut.u_ctrl_fsm.relu_en && out_data == 0) cov_relu_clip = 1'b1;
      end
    end
  end

  task automatic report_coverage();
    int kz, kp, kn, km;
    cov_bubble[use_bubbles[0]] = 1'b1;
    cov_shift[shift_cfg[2:0]]  = 1'b1;
    cov_nbanks[banks_used]     = 1'b1;
    for (int b = 0; b < banks_used; b++) begin
      kz = 1; kp = 0; kn = 0; km = 0;
      for (int i = 0; i < N*N; i++) begin
        if (kern[b][i] != 0)        kz = 0;
        if (kern[b][i] == COEF_MAX) kp = 1;
        if (kern[b][i] == COEF_MIN) kn = 1;
        if (kern[b][i] >  0)        km = km | 1;
      end
      if (km) begin
        km = 0;
        for (int i = 0; i < N*N; i++) if (kern[b][i] < 0) km = 1;
      end
      if (kz) cov_kzero   = 1'b1;
      if (kp) cov_kmaxpos = 1'b1;
      if (kn) cov_kmaxneg = 1'b1;
      if (km) cov_kmixed  = 1'b1;
    end

    for (int i = 0; i < 5; i++) if (cov_state[i])  $display("COVER fsm_state_%0d", i);
    for (int b = 0; b < NUM_BANKS; b++) if (cov_bank[b]) $display("COVER bank_%0d", b);
    for (int r = 0; r < 2; r++) if (cov_relu[r])   $display("COVER relu_%0d", r);
    for (int i = 0; i < 8; i++) if (cov_shift[i])  $display("COVER shift_%0d", i);
    for (int b = 1; b <= NUM_BANKS; b++) if (cov_nbanks[b]) $display("COVER numbanks_%0d", b);
    for (int i = 0; i < 2; i++) if (cov_bubble[i]) $display("COVER bubbles_%0d", i);
    if (cov_sat_pos)   $display("COVER sat_rail_pos");
    if (cov_sat_neg)   $display("COVER sat_rail_neg");
    if (cov_relu_clip) $display("COVER relu_clip");
    if (cov_kzero)     $display("COVER kernel_zero");
    if (cov_kmaxpos)   $display("COVER kernel_maxpos");
    if (cov_kmaxneg)   $display("COVER kernel_maxneg");
    if (cov_kmixed)    $display("COVER kernel_mixed");
  endtask

  task automatic report_properties();
    int total;
    total = 0;
    for (int i = 0; i < NPROP; i++) begin
      total += prop_fail[i];
      if (prop_fail[i] != 0) begin
        errors += prop_fail[i];
        $display("FAIL  property %s: %0d violation(s)", prop_name[i], prop_fail[i]);
      end
    end
    if (total == 0)
      $display("ok    all %0d docs/05 s6 properties hold (procedural checkers)", NPROP);
  endtask

  // Inclusive wall-clock counter: starts at the first accepted pixel (docs/02 s8).
  always @(posedge clk) begin
    if (counting) inclusive_cyc <= inclusive_cyc + 1;
  end

  // -------------------------------------------------------------------------
  task automatic load_bank(input int b);
    for (int i = 0; i < N*N; i++) begin
      @(negedge clk);
      kl_valid <= 1'b1;
      kl_bank  <= b[BANK_W-1:0];
      kl_addr  <= i[KADDR_W-1:0];
      kl_coef  <= kern[b][i][COEF_W-1:0];
      @(posedge clk);
    end
    @(negedge clk) kl_valid <= 1'b0;
  endtask

  task automatic stream_frame(input int seed_in);
    int i, seed;
    seed = seed_in;
    i = 0;
    while (i < PIXELS) begin
      @(negedge clk);
      if (use_bubbles && (($random(seed) % 4) == 0)) begin
        // Input gap: legal, and must not change the results (docs/04 s1).
        px_valid <= 1'b0;
        px_data  <= '0;
        px_last  <= 1'b0;
        @(posedge clk);
      end else begin
        px_data  <= image[i][PIX_W-1:0];
        px_valid <= 1'b1;
        px_last  <= (i == PIXELS-1);
        if (i == 0) counting = 1'b1;
        @(posedge clk);
        i++;
      end
    end
    @(negedge clk);
    px_valid <= 1'b0;
    px_last  <= 1'b0;
  endtask

  // -------------------------------------------------------------------------
  string s_image, s_kern, s_exp, s_hwout;
  int n_read, guard;

  initial begin
    if (!$value$plusargs("banks=%d", banks_used))  banks_used = 1;
    if (!$value$plusargs("shift=%d", shift_cfg))   shift_cfg = 0;
    if (!$value$plusargs("relu=%d", relu_cfg))     relu_cfg = 0;
    if (!$value$plusargs("bubbles=%d", use_bubbles)) use_bubbles = 0;
    if (!$value$plusargs("checklat=%d", check_lat)) check_lat = 0;
    if (!$value$plusargs("image=%s", s_image))
      $fatal(1, "tb_conv_top: +image=<path> is required");

    prop_name[0] = "a_last_valid";        prop_name[1] = "a_last_pulse";
    prop_name[2] = "a_valid_count";       prop_name[3] = "a_no_x_out";
    prop_name[4] = "a_valid_state";       prop_name[5] = "a_relu";
    prop_name[6] = "a_no_event_hold";     prop_name[7] = "align_window_hold";
    prop_name[8] = "align_datapath_hold"; prop_name[9] = "align_p8_two_regs";
    for (int i = 0; i < NPROP; i++) prop_fail[i] = 0;

    $display("--- tb_conv_top: W=%0d banks=%0d shift=%0d relu=%0d bubbles=%0d ---",
             TBW, banks_used, shift_cfg, relu_cfg, use_bubbles);

    n_read = read_ints(s_image, PIXELS, image);
    if (n_read != PIXELS)
      $fatal(1, "tb_conv_top: %s holds %0d pixels, expected %0d", s_image, n_read, PIXELS);

    for (int b = 0; b < banks_used; b++) begin
      int tmp [0:PIXELS-1];
      if (!$value$plusargs($sformatf("kernel%0d=%%s", b), s_kern))
        $fatal(1, "tb_conv_top: +kernel%0d=<path> is required", b);
      n_read = read_ints(s_kern, N*N, tmp);
      if (n_read != N*N)
        $fatal(1, "tb_conv_top: %s holds %0d coefficients, expected %0d",
               s_kern, n_read, N*N);
      for (int i = 0; i < N*N; i++) kern[b][i] = tmp[i];

      if (!$value$plusargs($sformatf("expected%0d=%%s", b), s_exp))
        $fatal(1, "tb_conv_top: +expected%0d=<path> is required", b);
      n_read = read_ints(s_exp, OUTS, tmp);
      if (n_read != OUTS)
        $fatal(1, "tb_conv_top: %s holds %0d outputs, expected %0d", s_exp, n_read, OUTS);
      for (int i = 0; i < OUTS; i++) expect_[b][i] = tmp[i];
    end

    // --- reset -------------------------------------------------------------
    px_data = '0; px_valid = 1'b0; px_last = 1'b0;
    kl_valid = 1'b0; kl_bank = '0; kl_addr = '0; kl_coef = '0;
    cfg_start = 1'b0; cfg_relu_en = 1'b0; cfg_out_shift = '0; cfg_num_kernels = 3'd1;
    rst_n = 1'b0;
    repeat (4) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;
    repeat (2) @(posedge clk);

    if (busy !== 1'b0) begin errors++; $display("FAIL  busy high before cfg_start"); end

    // --- load every bank BEFORE cfg_start (A2) -----------------------------
    for (int b = 0; b < banks_used; b++) load_bank(b);
    $display("ok    loaded %0d bank(s) before cfg_start (A2)", banks_used);

    // --- configure and start ------------------------------------------------
    @(negedge clk);
    cfg_relu_en     <= relu_cfg[0];
    cfg_out_shift   <= shift_cfg[SHIFT_W-1:0];
    cfg_num_kernels <= banks_used[NUM_KERN_W-1:0];
    cfg_start       <= 1'b1;
    @(posedge clk);
    @(negedge clk) cfg_start <= 1'b0;
    // Exactly one LOAD_KERNEL arming cycle, then PRIME accepts pixels.
    @(posedge clk);

    // --- stream one frame per bank -----------------------------------------
    for (int b = 0; b < banks_used; b++) begin
      stream_frame(7 + b);
      if (b < banks_used - 1) begin
        // A5: the host re-streams the identical frame after each nonfinal
        // out_last. Wait for that event before restarting.
        guard = 0;
        while (n_out < (b+1) * OUTS && guard < 200) begin
          @(posedge clk); guard++;
        end
        if (guard >= 200) begin
          errors++;
          $display("FAIL  bank %0d did not finish before the restart timeout", b);
        end
      end
    end

    // --- drain --------------------------------------------------------------
    guard = 0;
    while (done !== 1'b1 && guard < 1000) begin
      @(posedge clk); guard++;
    end
    if (done !== 1'b1) begin
      errors++;
      $display("FAIL  done never pulsed");
    end
    @(posedge clk); #1;
    if (busy !== 1'b0) begin errors++; $display("FAIL  busy still high after done"); end

    // --- final checks -------------------------------------------------------
    if (n_out != banks_used * OUTS) begin
      errors++;
      $display("FAIL  got %0d outputs, expected %0d (%0d banks x %0d)",
               n_out, banks_used * OUTS, banks_used, OUTS);
    end else begin
      $display("ok    %0d outputs, all bit-exact against the golden model", n_out);
    end

    if (check_lat) begin
      if (first_valid_cyc != T_FIRST) begin
        errors++;
        $display("FAIL  T_first = %0d, formula (N-1)*W + N + P_PIPE says %0d",
                 first_valid_cyc, T_FIRST);
      end else begin
        $display("ok    T_first = %0d = (N-1)*%0d + %0d + %0d (no-bubble, inclusive)",
                 first_valid_cyc, TBW, N, P_PIPE);
      end
    end

    // --- write the HW outputs deliverable (docs/05 s3) ---------------------
    if ($value$plusargs("hwout=%s", s_hwout)) begin
      for (int b = 0; b < banks_used; b++) begin
        int fd;
        fd = $fopen($sformatf("%s/hw_out_b%0d_relu%0d.txt", s_hwout, b, relu_cfg), "w");
        if (fd == 0) begin
          errors++;
          $display("FAIL  cannot write HW outputs under %s", s_hwout);
        end else begin
          for (int i = 0; i < OUTS; i++) $fdisplay(fd, "%0d", hw_out[b][i]);
          $fclose(fd);
        end
      end
    end

    $display("--- tb_conv_top: %0d output(s), %0d error(s) ---", n_out, errors);
    if (errors != 0) $fatal(1, "tb_conv_top FAILED with %0d error(s)", errors);
    report_properties();
    report_coverage();

    $display("RESULT outputs=%0d errors=%0d first_valid=%0d",
             n_out, errors, first_valid_cyc);
    $display("tb_conv_top PASSED");
    $finish;
  end

endmodule
