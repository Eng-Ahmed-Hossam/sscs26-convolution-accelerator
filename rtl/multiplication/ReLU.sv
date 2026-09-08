module ReLU #(
    parameter DATA_WIDTH = 8
)(
    input  logic signed [DATA_WIDTH-1:0] in_data,
    output logic signed [DATA_WIDTH-1:0] out_data
);

    always_comb begin
        if (in_data < 0) begin
            out_data = 0;
        end else begin
            out_data = in_data;
        end
    end

endmodule