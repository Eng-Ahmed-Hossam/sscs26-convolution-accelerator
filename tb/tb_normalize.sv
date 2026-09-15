// ---------------------------------------------------------------------------
// tb_normalize.sv --- unit TB for round-half-up / saturate / ReLU.
//
// Owner : WP4.  Refs: docs/05_verification_plan.md s3 ("directed round/sat/ReLU
//         corners: +/-32768 boundary, half-LSB rounding cases"),
//         docs/03_fixed_point.md s4 and s7.
//
// Checks against golden-model stage dumps (tb/stage_dumps/datapath.txt), whose
// stimulus already contains the required corners: both saturation rails at
// shift 0, and exact half-LSB ties at every shift with both signs.
//   1. the rounded value matches the model after NORM_STAGES-1 cycles;
//   2. res and sat_flag match after NORM_STAGES cycles, at every shift and
//      both ReLU modes;
//   3. sat_flag is an EVENT qualifier: it must go low on a non-advance clock
//      so a held result is never counted as a second saturation (docs/04 s6,
//      SVA a_no_event_hold), while res itself may hold;
//   4. directed boundary sweep around +/-OUT_MAX and +/-OUT_MIN at shift 0.
//
//   vsim -c +dump=<abs path> -do "run -all; quit -f" tb_normalize
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_normalize
  import pkg_params::*;
;

  localparam int MAXREC = 1024;
  localparam int FIELDS = 40;
  localparam int LAT    = NORM_STAGES;          // 2 enabled cycles
  localparam string DUMP_DEFAULT = "tb/stage_dumps/datapath.txt";
  string DUMP;

  logic clk = 1'b0;
  logic rst_n;
  logic en;
  logic signed [ACC_W-1:0] acc;
  logic                    relu_en;
  logic [SHIFT_W-1:0]      out_shift;
  logic signed [OUT_W-1:0] res;
  logic                    sat_flag;

  int errors = 0, checked = 0, nrec = 0;

  always #5 clk = ~clk;

  normalize dut (
    .clk(clk), .rst_n(rst_n), .en(en),
    .acc(acc), .relu_en(relu_en), .out_shift(out_shift),
    .res(res), .sat_flag(sat_flag)
  );

  // --- dump storage --------------------------------------------------------
  int rec_acc [0:MAXREC-1];
  int rec_sh  [0:MAXREC-1];
  int rec_relu[0:MAXREC-1];
  int rec_rnd [0:MAXREC-1];
  int rec_res [0:MAXREC-1];
  int rec_sat [0:MAXREC-1];

  task automatic load_dump();
    int fd, v, f, r, count, fields;
    if (!$value$plusargs("dump=%s", DUMP)) DUMP = DUMP_DEFAULT;
    fd = $fopen(DUMP, "r");
    if (fd == 0)
      $fatal(1, "tb_normalize: cannot open %s -- run `python model/export_stage_dumps.py`", DUMP);
    if ($fscanf(fd, "%d", count)  != 1) $fatal(1, "tb_normalize: bad dump header");
    if ($fscanf(fd, "%d", fields) != 1) $fatal(1, "tb_normalize: bad dump header");
    if (fields != FIELDS)
      $fatal(1, "tb_normalize: dump has %0d fields, TB expects %0d", fields, FIELDS);
    if (count > MAXREC)
      $fatal(1, "tb_normalize: dump has %0d records, MAXREC is %0d", count, MAXREC);
    for (r = 0; r < count; r++)
      for (f = 0; f < FIELDS; f++) begin
        if ($fscanf(fd, "%d", v) != 1)
          $fatal(1, "tb_normalize: dump truncated at record %0d field %0d", r, f);
        case (f)
          34: rec_acc [r] = v;
          35: rec_sh  [r] = v;
          36: rec_relu[r] = v;
          37: rec_rnd [r] = v;
          38: rec_res [r] = v;
          39: rec_sat [r] = v;
          default: ;
        endcase
      end
    $fclose(fd);
    nrec = count;
    $display("ok    loaded %0d records from %s", nrec, DUMP);
  endtask

  task automatic fail(input string what, input int r,
                      input longint got, input longint want);
    errors++;
    if (errors <= 12)
      $display("FAIL  record %0d %s: got %0d, model says %0d", r, what, got, want);
  endtask

  task automatic drive(input int r);
    acc       = rec_acc[r];
    out_shift = rec_sh[r][SHIFT_W-1:0];
    relu_en   = rec_relu[r][0];
  endtask

  task automatic check_rounded(input int r);
    logic signed [ACC_W-1:0] want;
    want = rec_rnd[r];
    if (dut.rounded_q !== want) fail("rounded", r, dut.rounded_q, rec_rnd[r]);
  endtask

  task automatic check_result(input int r);
    logic signed [OUT_W-1:0] want;
    checked++;
    want = rec_res[r];
    if (res !== want) fail("res", r, res, rec_res[r]);
    if (sat_flag !== rec_sat[r][0]) fail("sat_flag", r, sat_flag, rec_sat[r]);
  endtask

  int drive_idx, k;
  logic signed [OUT_W-1:0] snap_res;   // typed: no parameterised size casts

  initial begin
    $display("--- tb_normalize ---");
    load_dump();

    en = 1'b0; rst_n = 1'b0; acc = '0; relu_en = 1'b0; out_shift = '0;
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;

    // --- 1/2. dump sweep, in segments of CONSTANT CONFIG -------------------
    // out_shift is consumed in stage 1 and relu_en in stage 2, so a config
    // change mid-stream would apply to a result already in flight. That is not
    // a defect: docs/04 s1 makes cfg_* static for a whole run. The sweep
    // therefore streams maximal runs of identical (shift, relu) back to back
    // -- still proving full-rate throughput -- and drains between them.
    drive_idx = 0;
    while (drive_idx < nrec) begin
      automatic int seg_end = drive_idx;
      while (seg_end < nrec
             && rec_sh[seg_end]   == rec_sh[drive_idx]
             && rec_relu[seg_end] == rec_relu[drive_idx])
        seg_end++;

      for (int i = drive_idx; i < seg_end + LAT - 1; i++) begin
        @(negedge clk);
        if (i < seg_end) drive(i);      // acc changes; config is constant here
        en <= 1'b1;
        @(posedge clk); #1;
        k = i;             if (k >= drive_idx && k < seg_end) check_rounded(k);
        k = i - (LAT - 1); if (k >= drive_idx && k < seg_end) check_result(k);
      end
      drive_idx = seg_end;
    end
    if (errors == 0)
      $display("ok    %0d records match: rounding, saturation, ReLU and sat_flag", checked);

    // --- 3. sat_flag must not survive a non-advance clock ------------------
    // Drive a saturating value through, then stop advancing.
    // Above the positive rail, so the clamp must fire.
    @(negedge clk); acc = OUT_MAX + 1000; out_shift = '0; relu_en = 1'b0; en <= 1'b1;
    @(posedge clk); #1;
    @(negedge clk); en <= 1'b1;
    @(posedge clk); #1;
    if (sat_flag !== 1'b1) begin
      errors++;
      $display("FAIL  sat_flag did not assert on a saturating value");
    end
    snap_res = res;
    @(negedge clk); en <= 1'b0;
    repeat (4) begin
      @(posedge clk); #1;
      if (sat_flag !== 1'b0) begin
        errors++;
        $display("FAIL  sat_flag stayed high on a non-advance clock (a held result would be counted twice)");
      end
      if (res !== snap_res) begin
        errors++;
        $display("FAIL  res changed while en was low: %0d -> %0d", snap_res, res);
      end
    end
    $display("ok    sat_flag clears on non-advance clocks; res holds");

    // --- 4. directed boundary sweep at shift 0 -----------------------------
    begin
      int probes [0:7];
      int want_res, want_sat;
      logic signed [OUT_W-1:0] want_res_v;
      probes[0] = OUT_MAX - 1; probes[1] = OUT_MAX; probes[2] = OUT_MAX + 1;
      probes[3] = OUT_MAX + 2; probes[4] = OUT_MIN + 1; probes[5] = OUT_MIN;
      probes[6] = OUT_MIN - 1; probes[7] = OUT_MIN - 2;
      foreach (probes[i]) begin
        for (int rl = 0; rl < 2; rl++) begin
          // Expected values computed from the POLICY in docs/03 s4, not from
          // the DUT: saturate first, then ReLU.
          want_sat = (probes[i] > OUT_MAX || probes[i] < OUT_MIN) ? 1 : 0;
          want_res = (probes[i] > OUT_MAX) ? OUT_MAX :
                     (probes[i] < OUT_MIN) ? OUT_MIN : probes[i];
          if (rl == 1 && want_res < 0) want_res = 0;

          @(negedge clk); acc = probes[i]; out_shift = '0; relu_en = rl[0]; en <= 1'b1;
          @(posedge clk); #1;
          @(negedge clk); en <= 1'b1;
          @(posedge clk); #1;
          want_res_v = want_res;
          if (res !== want_res_v)
            fail($sformatf("boundary acc=%0d relu=%0d res", probes[i], rl), -1, res, want_res);
          if (sat_flag !== want_sat[0])
            fail($sformatf("boundary acc=%0d relu=%0d sat_flag", probes[i], rl), -1, sat_flag, want_sat);
        end
      end
      $display("ok    directed boundary sweep around both rails");
    end

    $display("--- tb_normalize: %0d checked, %0d error(s) ---", checked, errors);
    if (errors != 0) $fatal(1, "tb_normalize FAILED with %0d error(s)", errors);
    $display("tb_normalize PASSED");
    $finish;
  end

endmodule
