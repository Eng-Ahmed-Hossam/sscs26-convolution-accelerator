// ---------------------------------------------------------------------------
// tb_adder_tree.sv --- unit TB for the exact 9-term reduction tree.
//
// Owner : WP4.  Refs: docs/05_verification_plan.md s3 and s6,
//         docs/02_architecture.md s5, docs/03_fixed_point.md s3.
//
// Checks against golden-model stage dumps (tb/stage_dumps/datapath.txt):
//   1. acc matches the model after TREE_STAGES enabled cycles;
//   2. EVERY internal stage matches at its own latency -- s1 after 1 cycle,
//      s2 after 2, acc after 3 -- so a mismatch localises to a stage instead
//      of to "the tree";
//   3. PIPELINE ALIGNMENT: the odd product p8 is observed in its first
//      alignment register at latency 1 and its second at latency 2, i.e. it
//      has passed through exactly TREE_STAGES-1 registers when stage 3 adds
//      it. docs/05 s6 requires this be asserted, not trusted;
//   4. every stage and every alignment register HOLDS when en is low, so
//      alignment cannot drift across a bubble;
//   5. exactness: acc == the plain sum of the nine products, every record.
//
//   vsim -c +dump=<abs path> -do "run -all; quit -f" tb_adder_tree
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_adder_tree
  import pkg_params::*;
;

  localparam int MAXREC = 1024;
  localparam int FIELDS = 40;
  localparam int LAT    = TREE_STAGES;          // 3 enabled cycles
  localparam string DUMP_DEFAULT = "tb/stage_dumps/datapath.txt";
  string DUMP;

  logic clk = 1'b0;
  logic rst_n;
  logic en;
  logic signed [PROD_W-1:0] prod [0:N*N-1];
  logic signed [ACC_W-1:0]  acc;

  int errors = 0, checked = 0, nrec = 0;

  always #5 clk = ~clk;

  adder_tree dut (.clk(clk), .rst_n(rst_n), .en(en), .prod(prod), .acc(acc));

  // --- dump storage --------------------------------------------------------
  int rec_prod [0:MAXREC-1][0:N*N-1];
  int rec_s1   [0:MAXREC-1][0:3];
  int rec_p8   [0:MAXREC-1];
  int rec_s2   [0:MAXREC-1][0:1];
  int rec_acc  [0:MAXREC-1];

  task automatic load_dump();
    int fd, v, f, r, count, fields;
    if (!$value$plusargs("dump=%s", DUMP)) DUMP = DUMP_DEFAULT;
    fd = $fopen(DUMP, "r");
    if (fd == 0)
      $fatal(1, "tb_adder_tree: cannot open %s -- run `python model/export_stage_dumps.py`", DUMP);
    if ($fscanf(fd, "%d", count)  != 1) $fatal(1, "tb_adder_tree: bad dump header");
    if ($fscanf(fd, "%d", fields) != 1) $fatal(1, "tb_adder_tree: bad dump header");
    if (fields != FIELDS)
      $fatal(1, "tb_adder_tree: dump has %0d fields, TB expects %0d", fields, FIELDS);
    if (count > MAXREC)
      $fatal(1, "tb_adder_tree: dump has %0d records, MAXREC is %0d", count, MAXREC);
    for (r = 0; r < count; r++)
      for (f = 0; f < FIELDS; f++) begin
        if ($fscanf(fd, "%d", v) != 1)
          $fatal(1, "tb_adder_tree: dump truncated at record %0d field %0d", r, f);
        if      (f >= 18 && f < 27) rec_prod[r][f-18] = v;
        else if (f >= 27 && f < 31) rec_s1  [r][f-27] = v;
        else if (f == 31)           rec_p8  [r]       = v;
        else if (f >= 32 && f < 34) rec_s2  [r][f-32] = v;
        else if (f == 34)           rec_acc [r]       = v;
      end
    $fclose(fd);
    nrec = count;
    $display("ok    loaded %0d records from %s", nrec, DUMP);
  endtask

  task automatic drive(input int r);
    for (int i = 0; i < N*N; i++) prod[i] = rec_prod[r][i];
  endtask

  task automatic fail(input string what, input int r,
                      input longint got, input longint want);
    errors++;
    if (errors <= 12)
      $display("FAIL  record %0d %s: got %0d, model says %0d", r, what, got, want);
  endtask

  // Check one stage against the record at that stage's own latency.
  task automatic check_stage1(input int r);
    logic signed [T1_W-1:0] want;
    for (int i = 0; i < 4; i++) begin
      want = rec_s1[r][i];
      if (dut.s1[i] !== want) fail($sformatf("s1[%0d]", i), r, dut.s1[i], rec_s1[r][i]);
    end
    // p8 in its FIRST alignment register.
    begin
      logic signed [PROD_W-1:0] w8;
      w8 = rec_p8[r];
      if (dut.p8_a1 !== w8) fail("p8_a1 (alignment reg 1)", r, dut.p8_a1, rec_p8[r]);
    end
  endtask

  task automatic check_stage2(input int r);
    logic signed [T2_W-1:0] want;
    for (int i = 0; i < 2; i++) begin
      want = rec_s2[r][i];
      if (dut.s2[i] !== want) fail($sformatf("s2[%0d]", i), r, dut.s2[i], rec_s2[r][i]);
    end
    // p8 in its SECOND alignment register: it must still be the value that
    // travelled with this record, which is what keeps stage 3 cycle-aligned.
    begin
      logic signed [PROD_W-1:0] w8;
      w8 = rec_p8[r];
      if (dut.p8_a2 !== w8) fail("p8_a2 (alignment reg 2)", r, dut.p8_a2, rec_p8[r]);
    end
  endtask

  task automatic check_acc(input int r);
    logic signed [ACC_W-1:0] want;
    int sum;
    checked++;
    want = rec_acc[r];
    if (acc !== want) fail("acc", r, acc, rec_acc[r]);
    // Exactness: the tree grouping must not change the sum.
    sum = 0;
    for (int i = 0; i < N*N; i++) sum += rec_prod[r][i];
    if (sum != rec_acc[r]) fail("acc != plain sum of products", r, rec_acc[r], sum);
  endtask

  // --- hold snapshot -------------------------------------------------------
  // Typed rather than int: ModelSim ASE 10.1d rejects parameterised size
  // casts, so the comparison operands must already carry the right width.
  logic signed [ACC_W-1:0]  snap_acc;
  logic signed [PROD_W-1:0] snap_p8a1, snap_p8a2;

  int drive_idx, k;

  initial begin
    $display("--- tb_adder_tree ---");
    load_dump();

    en = 1'b0; rst_n = 1'b0;
    for (int i = 0; i < N*N; i++) prod[i] = '0;
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;

    drive_idx = 0;
    while (drive_idx < nrec + LAT - 1) begin
      @(negedge clk);
      if (drive_idx < nrec) drive(drive_idx);
      en <= 1'b1;
      @(posedge clk); #1;
      // Each stage is checked against the record at its own latency.
      k = drive_idx;                 if (k >= 0 && k < nrec) check_stage1(k);
      k = drive_idx - 1;             if (k >= 0 && k < nrec) check_stage2(k);
      k = drive_idx - (LAT - 1);     if (k >= 0 && k < nrec) check_acc(k);
      drive_idx++;
    end
    if (errors == 0)
      $display("ok    %0d records: every stage and both alignment registers match", checked);

    // --- hold with en low --------------------------------------------------
    snap_acc   = acc;
    snap_p8a1  = dut.p8_a1;
    snap_p8a2  = dut.p8_a2;
    @(negedge clk);
    drive(0);                        // completely different operands
    en <= 1'b0;
    repeat (5) begin
      @(posedge clk); #1;
      if (acc !== snap_acc)
        fail("acc changed while en low", -1, acc, snap_acc);
      if (dut.p8_a1 !== snap_p8a1)
        fail("p8_a1 changed while en low", -1, dut.p8_a1, snap_p8a1);
      if (dut.p8_a2 !== snap_p8a2)
        fail("p8_a2 changed while en low", -1, dut.p8_a2, snap_p8a2);
    end
    $display("ok    tree and alignment registers hold while en is low");

    $display("--- tb_adder_tree: %0d checked, %0d error(s) ---", checked, errors);
    if (errors != 0) $fatal(1, "tb_adder_tree FAILED with %0d error(s)", errors);
    $display("tb_adder_tree PASSED");
    $finish;
  end

endmodule
