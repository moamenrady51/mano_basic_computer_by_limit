`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2024 04:53:56 AM
// Design Name: 
// Module Name: RAM_CONTROL
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


module RAM_CONTROL(
Store, READ, T, D, I);



	input  I;
	input [7:0] T, D;
	output Store, READ;

	wire Dn7;
	wire A1, A2, A3, A4, A8, A9,A10,A11;

	assign Dn7 = ~D[7];

	assign A1 =  T[1];
	assign A2 = Dn7 & I & T[3];
	assign A3 = D[3] & T[4];
	assign A4 = D[5] & T[4];
	assign A9 = D[2] | D[1] | D[0];
	assign A8 = A9 & T[4];
	assign A10= D[6] & T[4] ;
	assign A11 = D[6] & T[6] ;
	
	assign Store = A3 | A4  | A11;
	assign READ = A1 | A8 | A2|A10;

endmodule
