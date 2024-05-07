`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2024 04:45:02 AM
// Design Name: 
// Module Name: PC
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


module PC(

    input CLR,
    input INC,
    input CLOCK,
    input [11:0] PC_IN,
    output reg [11:0] PC_OUT,
    input LD
    );
    
    initial PC_OUT = 0;
always @(posedge CLOCK)
        begin
    if(CLR)
    PC_OUT <=16'b0;
     else if(INC)
    PC_OUT <= PC_OUT +1;
     else if(LD)
    PC_OUT <= PC_IN;
    end
    
    

endmodule