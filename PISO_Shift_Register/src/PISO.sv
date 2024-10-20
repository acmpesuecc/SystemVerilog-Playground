module PISO (
    input logic clk,                // Clock input
    input logic reset,              // Asynchronous reset
    input logic load,               // Load signal to load data
    input logic [N-1:0] data_in,    // Parallel input data
    output logic serial_out         // Serial output data
);
    parameter int N = 8;            // Size of the shift register
    logic [N-1:0] shift_reg;        // Internal shift register

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= '0;        // Reset shift register to 0
            serial_out <= 0;       // Reset output
        end else if (load) begin
            shift_reg <= data_in;  // Load data in parallel
        end else begin
            serial_out <= shift_reg[0]; // Output the least significant bit
            shift_reg <= {1'b0, shift_reg[N-1:1]}; // Shift left
        end
    end
endmodule
