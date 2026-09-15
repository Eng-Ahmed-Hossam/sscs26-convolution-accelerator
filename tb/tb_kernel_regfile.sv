// ---------------------------------------------------------------------------
// tb_kernel_regfile.sv --- unit TB for the coefficient bank file.
//
// Owner : WP4.  Ref: docs/05_verification_plan.md s3 ("write/read all banks"),
//         docs/04_interfaces.md s3, docs/assumptions.md A2.
//
// Checks:
//   1. write/read every location of every bank, with values distinct per
//      (bank, address) so a bank-select or address-decode error cannot alias;
//   2. bank isolation --- writing one bank leaves the other three unchanged,
//      which is the property assumption A2 relies on for multi-kernel runs;
//   3. bank_sel selects the whole active bank combinationally, in one cycle;
//   4. kl_valid low is a no-op;
//   5. out-of-range kl_addr (N*N .. 2^KADDR_W-1) is ignored, not aliased onto
//      a real coefficient;
//   6. reset clears every bank.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_kernel_regfile
  import pkg_params::*;
;

  logic clk = 1'b0;
  logic rst_n;
  logic kl_valid;
  logic [BANK_W-1:0]  kl_bank;
  logic [KADDR_W-1:0] kl_addr;
  logic signed [COEF_W-1:0] kl_coef;
  logic [BANK_W-1:0]  bank_sel;
  logic signed [COEF_W-1:0] coef [0:N*N-1];

  int errors = 0, checked = 0;
  logic signed [COEF_W-1:0] cmax_v;   // typed: no parameterised size casts

  always #5 clk = ~clk;

  kernel_regfile dut (
    .clk(clk), .rst_n(rst_n),
    .kl_valid(kl_valid), .kl_bank(kl_bank), .kl_addr(kl_addr), .kl_coef(kl_coef),
    .bank_sel(bank_sel), .coef(coef)
  );

  // Distinct value per (bank, index), inside [COEF_MIN, COEF_MAX]. Signed and
  // spanning both rails so a sign-extension error shows up.
  function automatic logic signed [COEF_W-1:0] ref_coef(input int b, input int i);
    int v;
    logic signed [COEF_W-1:0] r;
    v = ((b * 29) + (i * 13)) % 256;      // 0..255
    r = v - 128;                          // -128..127, spans both rails
    return r;
  endfunction

  task automatic write_coef(input int b, input int i,
                            input logic signed [COEF_W-1:0] value);
    @(negedge clk);
    kl_valid <= 1'b1;
    kl_bank  <= b[BANK_W-1:0];
    kl_addr  <= i[KADDR_W-1:0];
    kl_coef  <= value;
    @(posedge clk);
    @(negedge clk);
    kl_valid <= 1'b0;
  endtask

  task automatic check_bank(input int b, input string what);
    logic signed [COEF_W-1:0] want;
    @(negedge clk);
    bank_sel = b[BANK_W-1:0];
    #1;                                   // combinational read settles
    checked++;
    for (int i = 0; i < N*N; i++) begin
      want = ref_coef(b, i);
      if (coef[i] !== want) begin
        errors++;
        if (errors <= 12)
          $display("FAIL  %s: bank %0d coef[%0d] = %0d, expected %0d",
                   what, b, i, coef[i], want);
      end
    end
  endtask

  task automatic check_bank_zero(input int b, input string what);
    @(negedge clk);
    bank_sel = b[BANK_W-1:0];
    #1;
    for (int i = 0; i < N*N; i++)
      if (coef[i] !== '0) begin
        errors++;
        if (errors <= 12)
          $display("FAIL  %s: bank %0d coef[%0d] = %0d, expected 0",
                   what, b, i, coef[i]);
      end
  endtask

  initial begin
    $display("--- tb_kernel_regfile: %0d banks x %0d coefficients ---", NUM_BANKS, N*N);

    kl_valid = 1'b0; kl_bank = '0; kl_addr = '0; kl_coef = '0; bank_sel = '0;
    rst_n = 1'b0;
    repeat (3) @(posedge clk);
    @(negedge clk) rst_n = 1'b1;

    // --- 6. reset clears every bank ---------------------------------------
    for (int b = 0; b < NUM_BANKS; b++) check_bank_zero(b, "after reset");
    $display("ok    reset clears all %0d banks", NUM_BANKS);

    // --- 1. write every location of every bank ----------------------------
    for (int b = 0; b < NUM_BANKS; b++)
      for (int i = 0; i < N*N; i++)
        write_coef(b, i, ref_coef(b, i));

    // --- 3. read every bank back through bank_sel -------------------------
    for (int b = 0; b < NUM_BANKS; b++) check_bank(b, "readback");
    $display("ok    wrote and read back %0d banks x %0d coefficients",
             NUM_BANKS, N*N);

    // --- 2. bank isolation: rewrite bank 1, others must not move ----------
    for (int i = 0; i < N*N; i++)
      write_coef(1, i, ref_coef(1, i));          // same values, but exercised
    for (int b = 0; b < NUM_BANKS; b++)
      if (b != 1) check_bank(b, "isolation (after writing bank 1)");
    // Now perturb bank 1 to a distinct pattern and confirm only it changed.
    for (int i = 0; i < N*N; i++)
      write_coef(1, i, COEF_MAX);
    for (int b = 0; b < NUM_BANKS; b++)
      if (b != 1) check_bank(b, "isolation (after perturbing bank 1)");
    @(negedge clk); bank_sel = 2'd1; #1;
    cmax_v = COEF_MAX;
    for (int i = 0; i < N*N; i++)
      if (coef[i] !== cmax_v) begin
        errors++;
        $display("FAIL  bank 1 coef[%0d] = %0d after perturbation, expected %0d",
                 i, coef[i], COEF_MAX);
      end
    // Restore bank 1 for the remaining checks.
    for (int i = 0; i < N*N; i++)
      write_coef(1, i, ref_coef(1, i));
    $display("ok    writing one bank leaves the others untouched (A2)");

    // --- 4. kl_valid low is a no-op ---------------------------------------
    @(negedge clk);
    kl_valid <= 1'b0; kl_bank <= 2'd0; kl_addr <= 4'd0; kl_coef <= -8'sd99;
    @(posedge clk);
    check_bank(0, "kl_valid low must not write");
    $display("ok    kl_valid low is a no-op");

    // --- 5. out-of-range address is ignored, not aliased ------------------
    for (int a = N*N; a < (1 << KADDR_W); a++) begin
      @(negedge clk);
      kl_valid <= 1'b1; kl_bank <= 2'd0; kl_addr <= a[KADDR_W-1:0];
      kl_coef  <= -8'sd77;
      @(posedge clk);
      @(negedge clk) kl_valid <= 1'b0;
    end
    check_bank(0, "out-of-range address must not alias");
    $display("ok    addresses %0d..%0d are ignored, not aliased",
             N*N, (1 << KADDR_W) - 1);

    $display("--- tb_kernel_regfile: %0d bank read(s) checked, %0d error(s) ---",
             checked, errors);
    if (errors != 0) $fatal(1, "tb_kernel_regfile FAILED with %0d error(s)", errors);
    $display("tb_kernel_regfile PASSED");
    $finish;
  end

endmodule
