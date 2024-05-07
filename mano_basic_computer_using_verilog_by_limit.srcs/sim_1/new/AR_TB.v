`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2024 09:52:20 PM
// Design Name: 
// Module Name: AR_TB
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


module AR_TB;

reg inc_tb,ld_tb,clr_tb,clock_tb;
    reg [15:0] ar_in_tb;
    wire [15:0] ar_out_tb;
    
    AR_Design AR_INST(.INC(inc_tb),
                        .CLOCK(clock_tb),
                        .LD(ld_tb),
                        .CLR(clr_tb),
                        .AR_IN(ar_in_tb),
                        .AR_OUT(ar_out_tb));
                        
    always begin
    #5 clock_tb = ~clock_tb;
    end
    initial begin 
    
    #5 clock_tb = 0;
    #5 ld_tb = 0;
    #5 clr_tb = 0;
    #5 inc_tb = 0;
    #5 ar_in_tb = 16'h0000;
    
    #5 ld_tb = 1;
    #5 ar_in_tb = 16'hb7bc;
    #15 ld_tb = 0;
    #5 inc_tb = 1;
    #5 inc_tb = 0;
    end
endmodule

