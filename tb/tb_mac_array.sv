// ---------------------------------------------------------------------------
// tb_mac_array.sv --- unit TB for the N*N multiplier array.
//
// Owner : WP4.  Refs: docs/05_verification_plan.md s3, docs/04_interfaces.md s4.
//
// Checks against GOLDEN-MODEL STAGE DUMPS (tb/stage_dumps/datapath.txt,
// written by model/export_stage_dumps.py) rather than against a testbench-local
// multiply -- a TB that recomputes the arithmetic itself only proves it agrees
// with itself.
//
//   1. every product matches the model, back to back at one record per cycle;
//   2. products HOLD when en is low (the bubble / FLUSH case);
//   3. the USE_DSP=1 variant is bit-identical to the default LUT variant,
//      which is what licenses quoting one functional result for both builds
//      in the docs/06 s6 tradeoff table.
//
//   vlog -sv rtl/pkg_params.sv rtl/mac_array.sv tb/tb_mac_array.sv
//   vsim -c -do "run -all; quit -f" tb_mac_array
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_mac_array
  import pkg_params::*;
;

  localparam int MAXREC     = 1024;
  localparam int FIELDS     = 40;
  localparam int LAT        = MAC_STAGES;      // 1 enabled cycle
  // Overridable so the TB can run from any working directory:
  //   vsim ... +dump=/abs/path/datapath.txt
  localparam string DUMP_DEFAULT = "tb/stage_dumps/datapath.txt";
  string DUMP;

  logic clk = 1'b0;
  logic rst_n;
  logic en;
  logic [PIX_W-1:0]         win  [0:N-1][0:N-1];
  logic signed [COEF_W-1:0] coef [0:N*N-1];
  logic signed [PROD_W-1:0] prod_lut [0:N*N-1];
  logic signed [PROD_W-1:0] prod_dsp [0:N*N-1];

  int errors = 0;
  int checked = 0;
  int nrec = 0;

  always #5 clk = ~clk;

  mac_array #(.USE_DSP(0)) dut_lut (
    .clk(clk), .rst_n(rst_n), .en(en), .win(win), .coef(coef), .prod(prod_lut)
  );
  mac_array #(.USE_DSP(1)) dut_dsp (
    .clk(clk), .rst_n(rst_n), .en(en), .win(win), .coef(coef), .prod(prod_dsp)
  );

  // -------------------------------------------------------------------------
  // Stage dump storage
  // -------------------------------------------------------------------------
  int rec_win  [0:MAXREC-1][0:N*N-1];
  int rec_coef [0:MAXREC-1][0:N*N-1];
  int rec_prod [0:MAXREC-1][0:N*N-1];

  task automatic load_dump();
    int fd, code, v, f, r, count, fields;
    if (!$value$plusargs("dump=%s", DUMP)) DUMP = DUMP_DEFAULT;
    fd = $fopen(DUMP, "r");
    if (fd == 0)
      $fatal(1, "tb_mac_array: cannot open %s -- run `python model/export_stage_dumps.py`", DUMP);
    // Header: record count then field count, both plain integers.
    if ($fscanf(fd, "%d", count)  != 1) $fatal(1, "tb_mac_array: bad dump header");
    if ($fscanf(fd, "%d", fields) != 1) $fatal(1, "tb_mac_array: bad dump header");
    if (fields != FIELDS)
      $fatal(1, "tb_mac_array: dump has %0d fields per record, TB expects %0d",
             fields, FIELDS);
    if (count > MAXREC)
      $fatal(1, "tb_mac_array: dump has %0d records, MAXREC is %0d", count, MAXREC);

    for (r = 0; r < count; r++) begin
      for (f = 0; f < FIELDS; f++) begin
        if ($fscanf(fd, "%d", v) != 1)
          $fatal(1, "tb_mac_array: dump truncated at record %0d field %0d", r, f);
        if      (f < 9)   rec_win [r][f]    = v;
        else if (f < 18)  rec_coef[r][f-9]  = v;
        else if (f < 27)  rec_prod[r][f-18] = v;
      end
    end
    $fclose(fd);
    nrec = count;
    $display("ok    loaded %0d records from %s", nrec, DUMP);
  endtask

  task automatic drive(input int r);
    for (int i = 0; i < N*N; i++) begin
      win[i / N][i % N] = rec_win[r][i];    // 0..PIX_MAX, exact
      coef[i]           = rec_coef[r][i];   // COEF_MIN..COEF_MAX, exact
    end
  endtask

  task automatic check(input int r);
    checked++;
    for (int i = 0; i < N*N; i++) begin
      logic signed [PROD_W-1:0] want;
      want = rec_prod[r][i];
      if (prod_lut[i] !== want) begin
        errors++;
        if (errors <= 10)
          $display("FAIL  record %0d prod[%0d]: got %0d, model says %0d",
                   r, i, prod_lut[i], rec_prod[r][i]);
      end
      if (prod_dsp[i] !== prod_lut[i]) begin
        errors++;
        if (errors <= 10)
          $display("FAIL  record %0d prod[%0d]: USE_DSP variant %0d != LUT variant %0d",
                   r, i, prod_dsp[i], prod_lut[i]);
      end
    end
  endtask

  // -------------------------------------------------------------------------
  int drive_idx, check_idx, seed = 7;
  logic signed [PROD_W-1:0] snap [0:N*N-1];

  initial begin
    $display("--- tb_mac_array ---");
    load_dump();

    en = 1'b0; rst_n = 1'b0;
    for (int i = 0; i < N*N; i++) begin
      win[i / N][i % N] = '0;
      coef[i] = '0;
    end
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;

    // --- 1. back-to-back stream, one record per enabled cycle -------------
    // Operands are driven at the negedge BEFORE the capturing edge, so that
    // edge already accounts for one stage: after the posedge of iteration k the
    // DUT output corresponds to record k-(LAT-1), not k-LAT.
    drive_idx = 0;
    while (drive_idx < nrec + LAT - 1) begin
      @(negedge clk);
      if (drive_idx < nrec) drive(drive_idx);
      en <= 1'b1;
      @(posedge clk); #1;
      check_idx = drive_idx - (LAT - 1);
      if (check_idx >= 0 && check_idx < nrec) check(check_idx);
      drive_idx++;
    end
    if (errors == 0)
      $display("ok    %0d records match the golden model (LUT and DSP variants)", checked);

    // --- 2. hold when en is low -------------------------------------------
    for (int i = 0; i < N*N; i++) snap[i] = prod_lut[i];
    @(negedge clk);
    drive(0);                       // present completely different operands
    en <= 1'b0;
    repeat (5) begin
      @(posedge clk); #1;
      for (int i = 0; i < N*N; i++)
        if (prod_lut[i] !== snap[i]) begin
          errors++;
          $display("FAIL  prod[%0d] changed while en was low: %0d -> %0d",
                   i, snap[i], prod_lut[i]);
        end
    end
    $display("ok    products hold while en is low");

    $display("--- tb_mac_array: %0d checked, %0d error(s) ---", checked, errors);
    if (errors != 0) $fatal(1, "tb_mac_array FAILED with %0d error(s)", errors);
    $display("tb_mac_array PASSED");
    $finish;
  end

endmodule
