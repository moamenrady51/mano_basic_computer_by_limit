`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 012:50:01 AM
// Design Name: 
// Module Name: DECODER
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


module DECODER(INP_3_BIT, DEC_OUT);
	input [2:0] INP_3_BIT;
	output reg [7:0] DEC_OUT;
	
	
	always@(*)
		case (INP_3_BIT)
			3'b000 : DEC_OUT<=8'b00000001;
			3'b001 : DEC_OUT<=8'b00000010;
			3'b010 : DEC_OUT<=8'b00000100;
			3'b011 : DEC_OUT<=8'b00001000;
			3'b100 : DEC_OUT<=8'b00010000;
			3'b101 : DEC_OUT<=8'b00100000;
			3'b110 : DEC_OUT<=8'b01000000; 
			3'b111 : DEC_OUT<=8'b10000000;
		endcase

endmodule