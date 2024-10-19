module sipo(
    input clk,
    input clear,
    input d,
    output reg [3:0] q
);

    reg [3:0] temp;

    always @(posedge clk) begin
        if (clear) begin
            q <= 4'b0000;
        end else begin
            temp <= q >> 1;
            q <= {d, temp[2:0]};
        end
    end

endmodule
