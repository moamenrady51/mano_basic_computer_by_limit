`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 03:41:50 AM
// Design Name: 
// Module Name: ENCODER
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


module ENCODER(S2S1S0, Xs);

   input [7:0] Xs;
   output [2:0] S2S1S0;

   assign S2S1S0 =
      (Xs[7] == 1'b1) ? 3'b111:
      (Xs[6] == 1'b1) ? 3'b110:
      (Xs[5] == 1'b1) ? 3'b101:
      (Xs[4] == 1'b1) ? 3'b100:
      (Xs[3] == 1'b1) ? 3'b011:
      (Xs[2] == 1'b1) ? 3'b010:
      (Xs[1] == 1'b1) ? 3'b001:
      (Xs[0] == 1'b1) ? 3'b000: 3'b000;

endmodule
