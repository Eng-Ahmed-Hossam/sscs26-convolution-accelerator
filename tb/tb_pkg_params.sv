// ---------------------------------------------------------------------------
// tb_pkg_params.sv --- unit testbench for the parameter package.
//
// Owner : WP4.  Refs: docs/04_interfaces.md (frozen widths),
//         docs/03_fixed_point.md s2-s3 (derivations),
//         docs/05_verification_plan.md s3 ("compile pkg_params.sv first").
//
// A SystemVerilog package cannot hold procedural blocks, so the self-checks
// that guard the derived constants live here. This is the simulator-side half
// of the guard; model/test_golden_conv.py::test_widths_match_frozen_package is
// the Python-side half, reaching the same constants through the
// model/pkg_params.py bridge. Both must pass before a width change is accepted.
//
// Run:  vlog -sv rtl/pkg_params.sv tb/tb_pkg_params.sv && vsim -c -do "run -all" tb_pkg_params
// Exits nonzero (via $fatal) on the first disagreement.
// ---------------------------------------------------------------------------
`timescale 1ns / 1ps

module tb_pkg_params;

  import pkg_params::*;

  int errors = 0;

  // Report a failed expectation without aborting, so one run lists every
  // disagreement rather than only the first.
  task automatic expect_eq(input string name, input int got, input int want);
    if (got !== want) begin
      errors++;
      $display("FAIL  %-16s = %0d, expected %0d", name, got, want);
    end else begin
      $display("ok    %-16s = %0d", name, got);
    end
  endtask

  initial begin
    $display("--- tb_pkg_params: checking rtl/pkg_params.sv against docs/04 ---");

    // Geometry (docs/assumptions.md A6, A1; docs/02_architecture.md s1)
    expect_eq("N",          N,          3);
    expect_eq("W_DEFAULT",  W_DEFAULT,  32);
    expect_eq("NUM_BANKS",  NUM_BANKS,  4);
    expect_eq("USE_DSP_DEFAULT", USE_DSP_DEFAULT, 0);

    // Datapath widths frozen by docs/04_interfaces.md
    expect_eq("PIX_W",      PIX_W,      8);
    expect_eq("COEF_W",     COEF_W,     8);
    expect_eq("PIXS_W",     PIXS_W,     9);
    expect_eq("PROD_W",     PROD_W,     17);
    expect_eq("T1_W",       T1_W,       18);
    expect_eq("T2_W",       T2_W,       19);
    expect_eq("ACC_W",      ACC_W,      20);
    expect_eq("OUT_W",      OUT_W,      16);

    // Value bounds behind the exactness proof (docs/03_fixed_point.md s3)
    expect_eq("PIX_MAX",      PIX_MAX,      255);
    expect_eq("COEF_ABS_MAX", COEF_ABS_MAX, 128);
    expect_eq("COEF_MAX",     COEF_MAX,     127);
    expect_eq("COEF_MIN",     COEF_MIN,     -128);
    expect_eq("ACC_MAX_ABS",  ACC_MAX_ABS,  293760);
    expect_eq("OUT_MAX",      OUT_MAX,      32767);
    expect_eq("OUT_MIN",      OUT_MIN,      -32768);

    // Control / configuration widths (docs/04_interfaces.md s1)
    expect_eq("SHIFT_W",    SHIFT_W,    3);
    expect_eq("SHIFT_MAX",  SHIFT_MAX,  7);
    expect_eq("BANK_W",     BANK_W,     2);
    expect_eq("KADDR_W",    KADDR_W,    4);
    expect_eq("NUM_KERN_W", NUM_KERN_W, 3);

    // Pipeline depth (docs/02_architecture.md s8)
    expect_eq("TREE_STAGES", TREE_STAGES, 3);
    expect_eq("MAC_STAGES",  MAC_STAGES,  1);
    expect_eq("NORM_STAGES", NORM_STAGES, 2);
    expect_eq("P_PIPE",      P_PIPE,      6);

    // Structural invariants: these must hold for ANY legal parameter set, so
    // they are the checks that survive a future width change.
    if (ACC_W != PROD_W + TREE_STAGES) begin
      errors++;
      $display("FAIL  tree growth: ACC_W(%0d) != PROD_W(%0d) + TREE_STAGES(%0d)",
               ACC_W, PROD_W, TREE_STAGES);
    end
    if (P_PIPE != MAC_STAGES + TREE_STAGES + NORM_STAGES) begin
      errors++;
      $display("FAIL  P_PIPE(%0d) != MAC(%0d)+TREE(%0d)+NORM(%0d)",
               P_PIPE, MAC_STAGES, TREE_STAGES, NORM_STAGES);
    end
    // The accumulator must hold +/- ACC_MAX_ABS exactly (docs/03 s3).
    if (ACC_MAX_ABS > (1 << (ACC_W - 1))) begin
      errors++;
      $display("FAIL  ACC_W(%0d) cannot hold ACC_MAX_ABS(%0d)", ACC_W, ACC_MAX_ABS);
    end
    // ...and must not be wastefully wide by a whole bit.
    if (ACC_MAX_ABS <= (1 << (ACC_W - 2))) begin
      errors++;
      $display("FAIL  ACC_W(%0d) is one bit wider than necessary for %0d",
               ACC_W, ACC_MAX_ABS);
    end

    // Latency formula quoted throughout the docs and the report: with the
    // default W this must be 73 (docs/02_architecture.md s8).
    if (((N - 1) * W_DEFAULT + N + P_PIPE) != 73) begin
      errors++;
      $display("FAIL  T_first = (N-1)*W + N + P_PIPE = %0d, docs/02 s8 says 73",
               (N - 1) * W_DEFAULT + N + P_PIPE);
    end else begin
      $display("ok    T_first          = %0d  ((N-1)*W + N + P_PIPE)",
               (N - 1) * W_DEFAULT + N + P_PIPE);
    end

    // Outputs per frame per bank (docs/02_architecture.md s1).
    if (((W_DEFAULT - N + 1) * (W_DEFAULT - N + 1)) != 900) begin
      errors++;
      $display("FAIL  (W-N+1)^2 = %0d, docs/02 s1 says 900",
               (W_DEFAULT - N + 1) * (W_DEFAULT - N + 1));
    end else begin
      $display("ok    outputs/frame   = %0d  ((W-N+1)^2)",
               (W_DEFAULT - N + 1) * (W_DEFAULT - N + 1));
    end

    $display("--- tb_pkg_params: %0d error(s) ---", errors);
    if (errors != 0)
      $fatal(1, "tb_pkg_params FAILED with %0d error(s)", errors);
    $display("tb_pkg_params PASSED");
    $finish;
  end

endmodule
