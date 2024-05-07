`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 05:18:08 AM
// Design Name: 
// Module Name: DR_CONTROL
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


module DR_CONTROL(
            output LD,
            output INC,
            
            input [7:0] T,
            input [7:0] D);



	wire o;
	assign o= D[0] | D[1] | D[2] ;
	
	assign LD = T[4] & o;
	assign INC = 0;

endmodule