`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 12:15:37 AM
// Design Name: 
// Module Name: SEQ_COUNTER
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
// 
// 
// 
// ////////////////////////////////////////////////////////////////////////////////




module SEQ_COUNTER(
CLR, INC, CLK, out);

	input CLR, INC, CLK;
	output reg [2:0] out;
	
	initial out = 0;

	always @ (posedge CLK)
		begin
			if(CLR)
				out = 3'b000;
			else if(INC)
				out = out + 3'b001;
		end
		
endmodule

