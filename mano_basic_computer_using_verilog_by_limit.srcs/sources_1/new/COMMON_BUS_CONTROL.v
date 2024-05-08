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


module COMMON_BUS_CONTROL(Xs, D, T, I);


	input  I;
	input [7:0] T, D;

	output [7:0] Xs;

	wire D7COM = ~D[7];
	wire D5T5,D4T4,D5T4,D2T5,D6T6,r,D012,D012T4 ,D6T4;
	assign D5T5= D[5] & T[5] ;
	assign D4T4= D[4] & T[4] ;
	assign D5T4= D[5] & T[4] ;
	assign D2T5= D[2]& T[5]  ;
	assign D6T6= D[6] & T[6];
	assign r=  D7COM & I & T[3];
	assign D012 = D[0] | D[1] | D[2];
	assign D012T4= D012 & T[4];
	assign D6T4 = D[6] & T[4];
	
	assign Xs[0] = 0;
	assign Xs[6] = 0 ;  
	assign Xs[1] = D5T5 | D4T4;                                                        
	assign Xs[2] = D5T4 | T[0];                                                      
	assign Xs[3] = D2T5 | D6T6  ;                                                       
	assign Xs[4] = D[3] & T[4];                                                     
	assign Xs[5] = T[2] ;                                                                                                                        
    assign Xs[7] = r | D012T4 | D6T4 | T[1];                                             

endmodule