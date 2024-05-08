`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2024 04:52:55 AM
// Design Name: 
// Module Name: SEQ_COUNTER_CLR
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


module SEQ_COUNTER_CLR(CLR, INC, T, D, I);

	input [7:0] T, D;
	input I;
	
	output CLR, INC;
	
	wire D43, D43T4, D7T3, D0125, D0125T5;
	wire ICOM = ~I;
	wire r = D[7] & ICOM & T[3];
	
	assign D43 = D[4] | D[3];
	assign D43T4 = D43 & T[4];
	assign D7T3 = D[7] & T[3];
	assign D0125 = D[2] | D[1] | D[0] | D[5];
	assign D0125T5 = D0125 & T[5];
	
//	assign CLR = D43 | D43T4 | D7T3 | D0125 | D0125T5 ;
	assign CLR = 0 ;

	assign INC = (~CLR);
	
endmodule
