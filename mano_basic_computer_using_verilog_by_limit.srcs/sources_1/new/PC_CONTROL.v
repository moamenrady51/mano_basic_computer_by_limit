`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 04:45:20 AM
// Design Name: 
// Module Name: PC_CONTROL
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


module PC_CONTROL(

            output CLR,
            output INC,
            output LD,
            input I,
            input E,
            input [7:0] T,
            input [7:0] D,
            input [15:0] B,
            input [15:0] DR,
            input [15:0] AC);


    wire ICOM, T4D4, T5D5, r;
    
    assign ICOM= ~I;
    assign r= ICOM & D[7] & T[3];
    assign T4D4 = T[4] & D[4];
	assign T5D5 = D[5] & T[5]; 

	assign LD = T4D4 | T5D5;      
	assign INC = T[1] | r ; 
	assign CLR= r & B[0];  

endmodule
