`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2024 01:10:56 AM
// Design Name: 
// Module Name: HEAD_TB
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


module HEAD_TB;

wire   [15:0]   DR;
wire   [15:0]   AC; 
wire   [15:0]   IR; 
wire   [15:0]   MEMORY_OUTPUT;
wire   [11:0]   PC;
wire   [11:0]   AR;
wire [7:0] T;
wire [7:0] D;
wire [2:0] SEQ_COUNTER_OUTPUT;
wire [15:0] Data;
wire [2:0] S2S1S0;
wire [7:0] X;
wire I;
wire E;
wire read;
reg CLK;

HEAD head(.CLK(CLK),
     .DR(DR),
      .AC(AC),
      .IR(IR),
      .MEMORY_OUTPUT(MEMORY_OUTPUT),
     .PC(PC),
     .AR(AR),
     .T(T),
     .D(D),
     .SEQ_COUNTER_OUTPUT(SEQ_COUNTER_OUTPUT),
     .Data(Data),
     .S2S1S0(S2S1S0),
     .X(X),
     .I(I),
     .E(E),
     .read(read)
     ); 
     
     
     initial CLK = 0;
     always #5 CLK = ~CLK;


endmodule