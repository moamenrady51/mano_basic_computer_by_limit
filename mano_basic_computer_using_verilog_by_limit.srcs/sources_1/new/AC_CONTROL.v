`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 05:56:59 AM
// Design Name: 
// Module Name: AC_CONTROL
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

module AC_CONTROL(
        output AND,
        output CMA,
        output LDA,
        output ADD,
        output LD,
        output INC,
        output CLR,
        output CIR,
        output INP,
        
        

        output CIL,   

        input [7:0] T,
        input [7:0] D,
        input [15:0] B,

        input IFLAG
);


wire IFCOM;
wire r, p;

assign IFCOM = ~IFLAG ;

assign r = D[7] & IFCOM & T[3];

assign AND = D[0] & T[5];  
assign ADD = T[5] & D[1];
assign LDA = T[5] & D[2];
assign CMA = B[9] & r;
assign CIL = B[6] & r;
assign CIR   = B[7] & r;
assign INC = B[5] & r;
assign INP = B[11] & p;

assign LD =( AND | ADD | LDA | CIL | CIR | CMA | INP );  
assign CLR = r & B[11]; 
endmodule