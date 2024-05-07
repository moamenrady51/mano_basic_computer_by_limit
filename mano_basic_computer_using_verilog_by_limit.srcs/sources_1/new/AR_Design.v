`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2024 03:18:37 AM
// Design Name: 
// Module Name: AR_Design
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


module AR_Design(

    input LD,
    input CLR,
    input INC,
    input CLOCK,
    input [11:0] AR_IN,
    output reg [11:0] AR_OUT
    );
    
    initial AR_OUT = 0;
always @(posedge CLOCK)
        begin
            if(CLR)
            AR_OUT <=16'b0;
             else if(INC)
            AR_OUT <= AR_OUT +1;
             else if(LD)
            AR_OUT <= AR_IN;
            end
            
endmodule