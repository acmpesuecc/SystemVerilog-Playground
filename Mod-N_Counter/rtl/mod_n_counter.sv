// File: rtl/mod_n_counter.sv
module mod_n_counter #(
    parameter N = 10,
    parameter WIDTH = $clog2(N)
)(
    input wire clk,
    input wire rst_n,
    input wire enable,
    output logic [WIDTH-1:0] count
);

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= '0;
        end else if (enable) begin
            if (count == N - 1) begin
                count <= '0;
            end else begin
                count <= count + 1'b1;
            end
        end
    end

endmodule