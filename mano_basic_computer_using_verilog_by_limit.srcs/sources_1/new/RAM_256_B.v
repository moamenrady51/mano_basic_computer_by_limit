`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 04:44:44 AM
// Design Name: 
// Module Name: RAM_256_B
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


module RAM_256_B (    input CLK,
    input RD,
    input [11:0] AR,
    input WR,
    input [15:0]RAM_IN,
    output reg [15:0] RAM_OUT );

    
    reg [15:0] RAM_256 [4096:0];
        
    initial begin
        $readmemh("C:/RAM_256b.txt", RAM_256);
    end
    
    always@* begin
        if (WR)
            RAM_256[AR] <= RAM_IN;
        else if(RD)
            RAM_OUT = RAM_256[AR];
        end

endmodule
