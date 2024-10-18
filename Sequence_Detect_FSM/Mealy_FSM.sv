`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2024 02:59:03 AM
// Design Name: Mealy FSM
// Module Name: Mealy_FSM
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


module Mealy_FSM (
    input logic clk, rst, in,
    output logic out
);

    typedef enum logic [1:0] {
        s0 = 2'b00,
        s1 = 2'b01,
        s2 = 2'b10
    } state_s;

    state_s c_state, n_state;

    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            c_state <= s0;
        end else begin
            c_state <= n_state;
        end
    end

    always_comb begin
        case (c_state)
            s0: begin
                if (in == 0) begin
                    n_state = s1;
                end else if (in == 1) begin
                    n_state = s2;
                    out = 1'b0;
                end
            end
            
            s1: begin
                if (in == 0) begin
                    n_state = s1;
                end else if (in == 1) begin
                    n_state = s2;
                    out = 1'b1;
                end
            end
            
            s2: begin
                if (in == 1) begin
                    n_state = s2;
                end else if (in == 0) begin
                    n_state = s1;
                    out = 1'b1;
                end
            end
            
            default: n_state = s0;
        endcase
    end

endmodule

