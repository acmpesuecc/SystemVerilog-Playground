module barrel_shifter (
    input  logic [7:0] data_in,      // 8-bit input data
    input  logic [2:0] shift_amount,  // 3-bit shift amount (0-7)
    input  logic shift_direction,     // 0 for left, 1 for right
    output logic [7:0] data_out       // 8-bit output data
);

    always_comb begin
        if (shift_direction) begin
            // Right shift
            data_out = data_in >> shift_amount;
        end else begin
            // Left shift
            data_out = data_in << shift_amount;
        end
    end

endmodule
