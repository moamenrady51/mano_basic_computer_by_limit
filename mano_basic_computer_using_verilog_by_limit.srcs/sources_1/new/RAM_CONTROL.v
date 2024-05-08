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

	wire D7COM;
	wire r, D3T4, D5T4, D012, D012T4, D6T4,D6T6;

	assign D7COM = ~D[7];

	assign r = D7COM & I & T[3];
	assign D3T4 = D[3] & T[4];
	assign D5T4 = D[5] & T[4];
	assign D012 = D[2] | D[1] | D[0];
	assign D012T4 = D012 & T[4];
	assign D6T4= D[6] & T[4] ;
	assign D6T6 = D[6] & T[6] ;
	
	assign Store = D3T4 | D5T4  | D6T6;
	assign READ = T[1] | D012T4 | r  |D6T4;

endmodule
