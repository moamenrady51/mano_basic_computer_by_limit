`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2024 09:43:36 PM
// Design Name: 
// Module Name: DR_TB
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


module DR_TB;
reg inc_tb,ld_tb,clr_tb,clock_tb;
    reg [15:0] dr_in_tb;
    wire [15:0] dr_out_tb;
    
    DR_Design DR_INST(.INC(inc_tb),
                        .CLOCK(clock_tb),
                        .LD(ld_tb),
                        .CLR(clr_tb),
                        .DR_IN(dr_in_tb),
                        .DR_OUT(dr_out_tb));
                        
    always begin
    #5 clock_tb = ~clock_tb;
    end
    initial begin 
    
    #5 clock_tb = 0;
    #5 ld_tb = 0;
    #5 clr_tb = 0;
    #5 inc_tb = 0;
    #5 dr_in_tb = 16'h0000;
    
    #5 ld_tb = 1;
    #5 dr_in_tb = 16'hb7bc;
    #15 ld_tb = 0;
    #5 inc_tb = 1;
    #5 inc_tb = 0;
    end
endmodule


