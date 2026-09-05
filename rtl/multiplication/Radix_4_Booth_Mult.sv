// Radix-4 Booth Multiplier — Fixed-Point (equal-width operands)
module booth_radix4_mult #(
    parameter int INTEGER_PART    = 8,   // integer bits  (incl. sign)
    parameter int FRACTIONAL_PART = 0    // fractional bits
)(
    input  logic signed [INTEGER_PART+FRACTIONAL_PART-1:0]     M,   // Q(INTEGER_PART-1).FRACTIONAL_PART
    input  logic signed [INTEGER_PART+FRACTIONAL_PART-1:0]     Y,   // Q(INTEGER_PART-1).FRACTIONAL_PART
    output logic signed [2*(INTEGER_PART+FRACTIONAL_PART)-1:0] P    // Q(2*INTEGER_PART-1).(2*FRACTIONAL_PART)
);

    localparam int WIDTH  = INTEGER_PART + FRACTIONAL_PART; // width of M and Y
    localparam int GROUPS = (WIDTH + 1) / 2;                // ceil(WIDTH/2) Booth groups

    // Sign-extend M to full product width (NP bits)
    logic signed [2*(WIDTH)-1:0] m_ext;
    assign m_ext = {{WIDTH{M[WIDTH-1]}}, M};

    // Build extended Y: prepend y(-1)=0 at LSB, sign-extend MSB
    logic [2*GROUPS:0] y_ext;
    integer k;
    always_comb begin
        y_ext[0] = 1'b0;
        for (k = 0; k < 2*GROUPS; k++) begin
            if (k < WIDTH)
                y_ext[k+1] = Y[k];
            else
                y_ext[k+1] = Y[WIDTH-1];        // sign extension
        end
    end

    // Partial products array
    logic signed [(2*WIDTH)-1:0] pp [GROUPS];

    genvar i;
    generate
        for (i = 0; i < GROUPS; i++) begin : booth_groups
            logic [2:0] grp;
            assign grp = {y_ext[2*i+2], y_ext[2*i+1], y_ext[2*i]};

            always @(*) begin
                unique case (grp)
                    3'b000, 3'b111: pp[i] = '0;
                    3'b001, 3'b010: pp[i] =  m_ext;
                    3'b011:         pp[i] =  (m_ext <<< 1);
                    3'b100:         pp[i] = -(m_ext <<< 1);
                    3'b101, 3'b110: pp[i] = -m_ext;
                    default:        pp[i] = '0;
                endcase
            end
        end
    endgenerate

    // Sum all shifted partial products
    integer j;
    always_comb begin
        P = '0;
        for (j = 0; j < GROUPS; j++)
            P = P + (pp[j] <<< (2*j));
    end

endmodule