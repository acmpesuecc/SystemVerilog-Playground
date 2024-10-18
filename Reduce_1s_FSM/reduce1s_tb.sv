`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 02:50:04
// Design Name: 
// Module Name: reduce1s_tb
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

module reduce_ones_fsm_tb;

    logic clk;
    logic reset;
    logic in;
    logic [2:0] out;

    reduce1s dut(clk, reset, in, out);


    always #5 clk = ~clk;


    initial begin

        clk = 0;
        reset = 1;
        in = 0;

        #10;
        reset = 0;


        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;


        #20 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 1;
        #10 in = 0;


        #20 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;
        #10 in = 1;
        #10 in = 0;

        #20 $finish;
    end


endmodule
