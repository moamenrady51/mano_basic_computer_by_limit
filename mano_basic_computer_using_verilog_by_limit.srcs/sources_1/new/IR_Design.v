`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2024 09:29:40 PM
// Design Name: 
// Module Name: IR_Design
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


module IR_Design(



    input LD,
    input CLR,
    input INC,
    input CLOCK,
    input [15:0] IR_IN,
    output reg [15:0] IR_OUT
    );
             initial IR_OUT = 0;       

always @(posedge CLOCK)
        
            if(CLR)begin
            IR_OUT <=16'b0;
            end else if(INC)begin
            IR_OUT <= IR_OUT +1;
            end else if(LD)begin
            IR_OUT <=IR_IN;
            end
            
endmodule