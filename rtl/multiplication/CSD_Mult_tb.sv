`timescale 1ns/1ps

module CSD_mult_tb;

    // ---------------------------------------------------------
    // Parameters
    // ---------------------------------------------------------
    localparam int FRACTIONAL_PART = 0;
    localparam int INTEGER_PART    = 8;
    localparam int WIDTH           = INTEGER_PART + FRACTIONAL_PART;

    // ---------------------------------------------------------
    // DUT signals
    // ---------------------------------------------------------
    logic [WIDTH-1:0]        x_1;
    logic signed [WIDTH-1:0] x_2;
    logic signed [2*WIDTH-1:0] y;

    int errors = 0;
    int checks = 0;

    // ---------------------------------------------------------
    // DUT instantiation
    // ---------------------------------------------------------
    CSD_mult #(
        .FRACTIONAL_PART (FRACTIONAL_PART),
        .INTEGER_PART    (INTEGER_PART)
    ) dut (
        .x_1 (x_1),
        .x_2 (x_2),
        .y   (y)
    );

    // ---------------------------------------------------------
    // Reference model + checker
    // ---------------------------------------------------------
    task automatic check_result(input string tag);
        longint unsigned x1_u;
        longint signed   x2_s;
        longint signed   expected;
        begin
            x1_u     = longint'(x_1);              // unsigned magnitude
            x2_s     = longint'(signed'(x_2));      // signed value
            expected = x1_u * x2_s;

            checks++;
            #1; // allow combinational settle

            if (y !== expected[2*WIDTH-1:0]) begin
                errors++;
                $error("[%s] MISMATCH: x_1=%0d x_2=%0d  DUT_y=%0d  expected=%0d",
                        tag, x_1, x_2, y, expected);
            end else begin
                $display("[%s] PASS: x_1=%0d x_2=%0d -> y=%0d",
                        tag, x_1, x_2, y);
            end
        end
    endtask

    // ---------------------------------------------------------
    // Directed test vectors (corner cases)
    // ---------------------------------------------------------
    task automatic run_directed();
        begin
            // zero cases
            x_1 = '0;                     x_2 = '0;                    check_result("ZERO_ZERO");
            x_1 = '0;                     x_2 = 1;                     check_result("ZERO_X_POS1");
            x_1 = 1;                      x_2 = '0;                    check_result("X1_ZERO");

            // identity-ish
            x_1 = 1;                      x_2 = 1;                     check_result("ONE_ONE");
            x_1 = 1;                      x_2 = -1;                    check_result("ONE_NEGONE");

            // max positive x_2
            x_1 = {WIDTH{1'b1}};          x_2 = (1 << (WIDTH-1)) - 1;  check_result("MAXX1_MAXPOS_X2");

            // most negative x_2
            x_1 = {WIDTH{1'b1}};          x_2 = -(1 << (WIDTH-1));     check_result("MAXX1_MINNEG_X2");

            // x_1 = 0, x_2 = most negative (edge of two's complement)
            x_1 = '0;                     x_2 = -(1 << (WIDTH-1));     check_result("ZERO_MINNEG_X2");

            // x_1 max, x_2 = -1
            x_1 = {WIDTH{1'b1}};          x_2 = -1;                    check_result("MAXX1_NEGONE");

            // alternating bit patterns (stress CSD encoding: many nonzero digits)
            x_1 = {WIDTH{1'b1}} ^ (1'b1); x_2 = 8'sb0101_0101; check_result("ALT_PATTERN");
        end
    endtask

    // ---------------------------------------------------------
    // Randomized tests
    // ---------------------------------------------------------
    task automatic run_random(int num_tests);
        begin
            for (int i = 0; i < num_tests; i++) begin
                x_1 = $urandom_range(0, (1 << WIDTH) - 1);
                x_2 = $urandom_range(0, (1 << WIDTH) - 1); // bit pattern; interpreted as signed
                check_result($sformatf("RAND_%0d", i));
            end
        end
    endtask

    // ---------------------------------------------------------
    // Main stimulus
    // ---------------------------------------------------------
    initial begin
        $display("=== CSD_mult self-checking testbench ===");
        run_directed();
        run_random(200);

        $display("=========================================");
        if (errors == 0)
            $display("ALL %0d CHECKS PASSED", checks);
        else
            $display("%0d/%0d CHECKS FAILED", errors, checks);
        $display("=========================================");

        if (errors != 0)
            $fatal(1, "Testbench failed with %0d errors", errors);

        $finish;
    end

endmodule