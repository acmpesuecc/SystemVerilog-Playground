module Shifter32 (
    input [31:0] data_in,      
    input [4:0] shift_amount, 
    input shift_direction,     
    input shift_type,         
    output reg [31:0] data_out 
);

always @(*) begin
    if (shift_direction == 0) begin
        // Left Shift (Logical)
        data_out = data_in << shift_amount;
    end else begin
        // Right Shift
        if (shift_type == 0) begin
            // Logical Right Shift
            data_out = data_in >> shift_amount;
        end else begin
            // Arithmetic Right Shift
            data_out = (data_in[31] == 1) ? (data_in >> shift_amount) | (32'hFFFFFFFF << (32 - shift_amount)) : (data_in >> shift_amount);
        end
    end
end

endmodule
