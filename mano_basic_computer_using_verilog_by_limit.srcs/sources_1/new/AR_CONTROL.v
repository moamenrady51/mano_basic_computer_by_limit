`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 04:15:30 AM
// Design Name: 
// Module Name: AR_CONTROL
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

module AR_CONTROL(
    output LD, 
    output CLR, 
    output INC, 
    input [7:0] T, 
    input [7:0] D, 
    input I);



	
	wire D7n = ~D[7];
	wire a1, a2, a3;
	
	assign a1 = D7n & I & T[3];
	assign a2 = T[2] ;
	assign a3 =  T[0];
	assign INC = D[5] & T[4];
	assign LD = a1 | a2 | a3;
	assign CLR = 0;  //;w;
	
endmodule
