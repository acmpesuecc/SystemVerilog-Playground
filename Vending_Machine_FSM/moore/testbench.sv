`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 05:06:50
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


module vend_moore_tb();

    logic rs10, rs5, clk, reset, rs5out, item1;

    vend_moore dut(rs10, rs5, clk, reset, rs5out, item1);
    always #5 clk = ~clk;

    initial begin
        rs10 = 0;
        rs5 = 0;
        clk = 0;
        reset = 1;

        #10 reset = 0;

        #10 rs10 = 1;
        #10 rs10 = 0;

        #20 rs5 = 1;
        #10 rs5 = 0;
        #10 rs10 = 1;
        #10 rs10 = 0;

        #20 rs10 = 1;
        #10 rs10 = 0;
        #10 rs10 = 1;
        #10 rs10 = 0;

        #20 rs5 = 1;
        #10 rs5 = 0;
        #10 rs5 = 1;
        #10 rs5 = 0;
        #10 rs5 = 1;
        #10 rs5 = 0;
        #20 $finish;
    end
endmodule