`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/26/2024 04:10:41 AM
// Design Name: 
// Module Name: AC_Design
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
module AC_Design(
    input CLR,
    input INC,
    input CLOCK,
    input [15:0] AC_IN,
    output reg [15:0] AC_OUT,
    input LD
    );
    

         initial AC_OUT = 0;       
            always @(posedge CLOCK)
            
            begin
    if(CLR)
    AC_OUT <=16'b0;
     else if(INC)
    AC_OUT <= AC_OUT +1;
     else if(LD)
    AC_OUT <= AC_IN;
    end
    
    

endmodule
