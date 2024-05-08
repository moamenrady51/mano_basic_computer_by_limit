`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 02:13:29 AM
// Design Name: 
// Module Name: MULTIPLEXER
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


module MULTIPLEXER(

	input [15:0] MUX_IN_0,
	input [15:0] MUX_IN_1,
	input [15:0] MUX_IN_2,
	input [15:0] MUX_IN_3,
	input [15:0] MUX_IN_4,
	input [15:0] MUX_IN_5,
	input [15:0] MUX_IN_6,
	input [15:0] MUX_IN_7,
	input [2:0] S2S1S0,
	output reg [15:0] MUX_OUT
);

	always @* begin
		case(S2S1S0)
			3'b000:MUX_OUT=MUX_IN_0;
			3'b001:MUX_OUT=MUX_IN_1;
			3'b010:MUX_OUT=MUX_IN_2;
			3'b011:MUX_OUT=MUX_IN_3;
			3'b100:MUX_OUT=MUX_IN_4;
			3'b101:MUX_OUT=MUX_IN_5;
			3'b110:MUX_OUT=MUX_IN_6;
			3'b111:MUX_OUT=MUX_IN_7;
		endcase
	end

endmodule
