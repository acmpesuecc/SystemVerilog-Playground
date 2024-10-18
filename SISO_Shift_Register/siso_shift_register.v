module siso_shift_register (
    input clk,
    input si,
    output so
);

    reg [7:0] shift_register;

    always @(posedge clk) begin
        shift_register <= {si, shift_register[6:0]};
    end

    assign so = shift_register[7];

endmodule
