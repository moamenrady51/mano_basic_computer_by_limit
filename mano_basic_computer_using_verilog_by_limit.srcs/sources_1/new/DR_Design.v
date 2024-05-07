`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2024 01:15:50 AM
// Design Name: 
// Module Name: DR_Design
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


module DR_Design(


    input LD,
    input CLR,
    input INC,
    input CLOCK,
    input [15:0] DR_IN,
    output reg [15:0] DR_OUT
    );
    
initial DR_OUT = 0;
        
        always @(posedge CLOCK)
        
        begin
            if(CLR)
            DR_OUT <= 16'b0;
             else if(INC)
            DR_OUT <= DR_OUT +1;
             else if(LD)
            DR_OUT <= DR_IN;
            end
            
endmodule
