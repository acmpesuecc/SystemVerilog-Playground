`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2024 04:10:05 AM
// Design Name: 
// Module Name: Mealy_FSM_tb
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


module Mealy_FSM_tb;
    reg clk, rst, in;  
    wire out;

Mealy_FSM dut1(.clk(clk), .rst(rst), .in(in), .out(out));

initial begin
clk = 0; 
forever #5 clk = ~clk; 
end

initial begin
    rst = 0;
    in = 0; 
#10 rst = 1; 
        
    in = 0; #10 //sequence 010 
    in = 1; #10 
    in = 0; #10 
        
    in = 0; #10 // Delay before sequence 101
        
    in = 1; #10 //sequence  101
    in = 0; #10 
    in = 1; #10 

    #10 $finish; 
    end
endmodule

