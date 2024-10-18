`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 05:05:54
// Design Name: 
// Module Name: vending_moore
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vend_moore(
    input logic rs10, rs5, clk, reset,
    output logic rs5out, item1
);

    typedef enum logic [2:0] {
        S0 = 3'b000,
        S5 = 3'b001,
        S10 = 3'b010,
        S15 = 3'b011,
        S20 = 3'b100
    } state_t;

    state_t state, next_state;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    always_comb begin
        next_state = state;
        case (state)
            S0: 
                if (rs5)       next_state = S5;
                else if (rs10) next_state = S10;
            S5: 
                if (rs5)       next_state = S10;
                else if (rs10) next_state = S15;
            S10:
                if (rs5)       next_state = S15;
                else if (rs10) next_state = S20;
            S15:
                next_state = S0;
            S20:
                next_state = S0;
        endcase
    end

    always_comb begin
        case (state)
            S0, S5, S10: begin
                item1 = 1'b0;
                rs5out = 1'b0;
            end
            S15: begin
                item1 = 1'b1;
                rs5out = 1'b0;
            end
            S20: begin
                item1 = 1'b1;
                rs5out = 1'b1;
            end
            default: begin
                item1 = 1'b0;
                rs5out = 1'b0;
            end
        endcase
    end

endmodule