`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2024 05:12:45 AM
// Design Name: 
// Module Name: COMMON_BUS_CONTROL
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


module COMMON_BUS_CONTROL(x, D, T, I);


	input  I;
	input [7:0] T, D;

	output [7:0] x;

	wire D7n = ~D[7];
	wire A1,A2,A3,A4,A5,A6,A7,A8;
	assign A1= D[5] & T[5] ;
	assign A2= D[4] & T[4] ;
	assign A3= D[5] & T[4] ;
	assign A4= D[2]& T[5]  ;
	assign A5= (D[6] & T[6]);
	assign A6=  D7n & I & T[3];
	assign A7= ((D[0] | D[1] | D[2]) & T[4]);
	assign A8 = (D[6] & T[4]);
	
	assign x[0] = 0;
	assign x[1] = A2 | A1;                                                        
	assign x[2] = A3 | T[0];                                                      
	assign x[3] = A4 | A5  ;                                                       
	assign x[4] = D[3] & T[4];                                                     
	assign x[5] = T[2] ;                                                           
    assign x[6] = 0 ;                                                              
    assign x[7] = A6 | A7 | T[1] | A8;                                             

endmodule