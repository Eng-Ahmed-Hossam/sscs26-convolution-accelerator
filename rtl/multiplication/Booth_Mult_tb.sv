`timescale 1ns/1ps
// Testbench for booth_radix4_mult — Fixed-Point (equal-width operands)
// All comparisons done in integer domain (no rounding needed — exact).

module tb_booth_radix4;

    // ----------------------------------------------------------------
    // Format parameters — must match DUT
    // ----------------------------------------------------------------
    localparam int INTEGER_PART    = 8;   // integer bits (incl. sign), shared by M and Y
    localparam int FRACTIONAL_PART = 0;   // fractional bits, shared by M and Y

    localparam int WIDTH = INTEGER_PART + FRACTIONAL_PART; // M and Y width = 8
    localparam int NP    = 2 * WIDTH;                      // P total width = 16

    // ----------------------------------------------------------------
    // DUT ports
    // ----------------------------------------------------------------
    logic signed [WIDTH-1:0] M;
    logic signed [WIDTH-1:0] Y;
    logic signed [NP-1:0]    P;
    logic signed [NP-1:0]    expected;

    int pass_count = 0, fail_count = 0;

    booth_radix4_mult #(
        .INTEGER_PART(INTEGER_PART),
        .FRACTIONAL_PART(FRACTIONAL_PART)
    ) dut (
        .M(M), .Y(Y), .P(P)
    );

    // ----------------------------------------------------------------
    // Helper: display fixed-point value as decimal string
    //   val_int  : raw integer bits
    //   frac_bits: number of fractional bits
    // ----------------------------------------------------------------
    function automatic real to_real(logic signed [NP-1:0] val, int frac_bits);
        return real'(val) / real'(1 << frac_bits);
    endfunction

    // ----------------------------------------------------------------
    // Check task
    //   Compares integer-domain product P vs M*Y
    //   Also prints human-readable fixed-point values
    // ----------------------------------------------------------------
    task automatic check(
        string                label,
        logic signed [WIDTH-1:0] m_in,
        logic signed [WIDTH-1:0] y_in
    );
        M = m_in; Y = y_in; #1;

        // Golden reference: integer multiply (exact, no rounding)
        expected = NP'(signed'(m_in)) * NP'(signed'(y_in));

        if (P === expected) begin
            pass_count++;
            $display("PASS [%-16s]  M=%7.4f (%4d)  Y=%7.4f (%4d)  P=%12.8f (%6d)",
                label,
                to_real(NP'(signed'(m_in)), FRACTIONAL_PART), signed'(m_in),
                to_real(NP'(signed'(y_in)), FRACTIONAL_PART), signed'(y_in),
                to_real(P, 2*FRACTIONAL_PART),                signed'(P));
        end else begin
            fail_count++;
            $display("FAIL [%-16s]  M=%7.4f  Y=%7.4f  P=%12.8f (got %0d, exp %0d)  <<< MISMATCH",
                label,
                to_real(NP'(signed'(m_in)), FRACTIONAL_PART),
                to_real(NP'(signed'(y_in)), FRACTIONAL_PART),
                to_real(P, 2*FRACTIONAL_PART),
                signed'(P), signed'(expected));
        end
    endtask

    // ----------------------------------------------------------------
    // Stimulus
    // ----------------------------------------------------------------
    initial begin
        $display("=== Booth Radix-4 Multiplier — Fixed-Point (equal-width) ===");
        $display("    M format : Q%0d.%0d  (%0d-bit)", INTEGER_PART-1, FRACTIONAL_PART, WIDTH);
        $display("    Y format : Q%0d.%0d  (%0d-bit)", INTEGER_PART-1, FRACTIONAL_PART, WIDTH);
        $display("    P format : Q%0d.%0d  (%0d-bit)", 2*INTEGER_PART-1, 2*FRACTIONAL_PART, NP);
        $display("");

        // ---- Directed edge cases ----

        // Zero
        check("zero*zero",     {WIDTH{1'b0}},   {WIDTH{1'b0}});

        // Pure integer values (fractional bits = 0)
        // M=3.0 in Q3.4 → 3 << 4 = 48
        // Y=1.0 in Q3.4 → 1 << 4 = 16
        check("3.0 * 1.0",     WIDTH'(3  << FRACTIONAL_PART), WIDTH'(1  << FRACTIONAL_PART));
        check("3.0 * -1.0",    WIDTH'(3  << FRACTIONAL_PART), WIDTH'(-1 << FRACTIONAL_PART));
        check("-3.0 * 1.0",    WIDTH'(-3 << FRACTIONAL_PART), WIDTH'(1  << FRACTIONAL_PART));
        check("-3.0 * -1.0",   WIDTH'(-3 << FRACTIONAL_PART), WIDTH'(-1 << FRACTIONAL_PART));

        // Max/min values (Q3.4 range: 127 = 7.9375, -128 = -8.0)
        check("Mmax * Ymax",   WIDTH'(127),        WIDTH'(127));
        check("Mmin * Ymin",   WIDTH'(-128),       WIDTH'(-128));
        check("Mmin * Ymax",   WIDTH'(-128),       WIDTH'(127));
        check("Mmax * Ymin",   WIDTH'(127),        WIDTH'(-128));

        // Fractional-only values
        // M=0.5 in Q3.4 → 0000_1000 = 8
        // Y=0.5 in Q3.4 → 0000_1000 = 8
        check("0.5 * 0.5",     WIDTH'(1  << (FRACTIONAL_PART-1)), WIDTH'(1  << (FRACTIONAL_PART-1)));
        check("0.5 * -0.5",    WIDTH'(1  << (FRACTIONAL_PART-1)), WIDTH'(-(1 << (FRACTIONAL_PART-1))));

        // M=0.0625 (LSB of M) * Y=1.0
        check("LSB_M * 1.0",   WIDTH'(1),            WIDTH'(1  << FRACTIONAL_PART));

        // M=1.0 * Y LSB
        check("1.0 * LSB_Y",   WIDTH'(1  << FRACTIONAL_PART),     WIDTH'(1));

        // Both LSBs
        check("LSB_M * LSB_Y", WIDTH'(1),            WIDTH'(1));

        // Run-of-ones patterns (stress Booth encoding)
        check("run1s_M * 1.0", 8'sb0111_1110,  WIDTH'(1  << FRACTIONAL_PART));
        check("alt_bits",      8'sb0101_0101,  8'sb0101_0101);

        // ---- Random vectors ----
        $display("");
        $display("--- Random vectors ---");
        for (int t = 0; t < 200; t++) begin
            logic signed [WIDTH-1:0] rm;
            logic signed [WIDTH-1:0] ry;
            rm = $random;
            ry = $random;
            check($sformatf("rand_%0d", t), rm, ry);
        end

        $display("");
        $display("=== RESULTS: PASS=%0d  FAIL=%0d  TOTAL=%0d ===",
            pass_count, fail_count, pass_count + fail_count);
        $finish;
    end

endmodule