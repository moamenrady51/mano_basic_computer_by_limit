`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 12:36:56 AM
// Design Name: 
// Module Name: IR_CONTROL
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


module IR_CONTROL(D, T, CLR, INR, LD);

    input [7:0] D, T;
    output INR, CLR, LD;
    
    assign INR = 0;
    assign CLR = 0;
    assign LD = T[1];
endmodule
