module CSD_mult #(
    parameter FRACTIONAL_PART = 0,
    parameter INTEGER_PART = 8
)(
    input  logic [FRACTIONAL_PART+INTEGER_PART-1:0]        x_1,   // unsigned
    input  logic signed [FRACTIONAL_PART+INTEGER_PART-1:0] x_2,   // signed
    output logic signed [2*(FRACTIONAL_PART+INTEGER_PART)-1:0] y
);

    localparam WIDTH = INTEGER_PART + FRACTIONAL_PART;

    // Zero-extend x_1 by one guard bit so CSD_Encoder's implicit
    // "phantom bit above the MSB" is 0 (unsigned), not a sign bit.
    logic [WIDTH:0] x_1_ext;
    assign x_1_ext = {1'b0, x_1};

    logic [WIDTH:0] x_s;
    logic [WIDTH:0] x_m;

    CSD_Encoder #(.WIDTH(WIDTH+1)) csd_enc (
        .b   (x_1_ext),
        .p   (1'b0),
        .x_m (x_m),
        .x_s (x_s)
    );

    logic signed [2*WIDTH:0] data_ext;
    logic signed [2*WIDTH:0] term [WIDTH+1];
    logic signed [2*WIDTH:0] product;

    assign data_ext = {{(WIDTH+1){x_2[WIDTH-1]}}, x_2};

    genvar j;
    for (j = 0; j < WIDTH+1; j++) begin : gen_terms
    // non-zero CSD digit at bit j -> add or subtract a shifted copy of data_in[i]
        assign term[j] = x_m[j] ? (x_s[j] ? -(data_ext <<< j) : (data_ext <<< j))
                                 : '0;
    end

    always_comb begin
        product = '0;
        for (int t = 0; t < WIDTH+1; t++)
            product = product + term[t];
    end

    assign y = product[2*WIDTH-1:0];

endmodule