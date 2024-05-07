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


module DECODER(I, O);
	input [2:0] I;
	output [7:0] O;
	
	reg [7:0] O;
	
	always@(*)
		case (I)
			3'b000 : O<=8'b00000001;
			3'b001 : O<=8'b00000010;
			3'b010 : O<=8'b00000100;
			3'b011 : O<=8'b00001000;
			3'b100 : O<=8'b00010000;
			3'b101 : O<=8'b00100000;
			3'b110 : O<=8'b01000000; 
			3'b111 : O<=8'b10000000;
		endcase

endmodule