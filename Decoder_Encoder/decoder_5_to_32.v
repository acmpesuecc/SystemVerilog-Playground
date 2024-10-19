// decoder_5_to_32.v

module decoder_5_to_32 (
    input [4:0] in,      // 5-bit input
    output reg [31:0] out // 32-bit output
);

    always @(*) begin
        // Set all outputs to 0 initially
        out = 32'b0;
        // Set the corresponding bit high based on the input
        out[in] = 1'b1;
    end

endmodule
