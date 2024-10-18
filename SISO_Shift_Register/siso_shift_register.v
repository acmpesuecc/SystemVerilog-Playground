module sisomod(
    clk,
    clear,
    si,
    so
);

input clk, si, clear;
output so;

reg so;
reg [3:0] tmp;

always @(posedge clk) begin
    if (clear) begin
        tmp <= 4'b0000;
    end else begin
        tmp <= tmp << 1;
        tmp[0] <= si;
    end

    so = tmp[3];
end

endmodule
