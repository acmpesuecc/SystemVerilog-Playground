`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2024 02:17:58
// Design Name: 
// Module Name: reduce1s
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


module reduce1s(input logic clk,
    input logic reset,
    input logic in,
    output logic [2:0] out);
      typedef enum logic [2:0] {
          S0 = 3'b000,
          S1 = 3'b001,
          S2 = 3'b010,
          S3 = 3'b011,
          S4 = 3'b100,
          S5 = 3'b101,
          S6 = 3'b110,
          S7 = 3'b111
      } state_t;
  
      state_t current_state, next_state;
  
      always_ff @(posedge clk or posedge reset) begin
          if (reset)
              current_state <= S0;
          else
              current_state <= next_state;
      end
  
      always_comb begin
          next_state = current_state;
          case (current_state)
              S0: next_state = in ? S1 : S0;
              S1: next_state = in ? S2 : S1;
              S2: next_state = in ? S3 : S2;
              S3: next_state = in ? S4 : S3;
              S4: next_state = in ? S5 : S4;
              S5: next_state = in ? S6 : S5;
              S6: next_state = in ? S7 : S6;
              S7: next_state = S7;
          endcase
      end
  
      assign out = current_state;
endmodule
