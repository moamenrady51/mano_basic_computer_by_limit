`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2024 07:34:14 PM
// Design Name: 
// Module Name: RAM_TB
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


module RAM_TB;

    reg clk_tb,read_tb,write_tb;
    reg [15:0] datain;
    reg [11:0] ar_tb; 
    wire [15:0] dataout;


    
    
RAM_256_B  ramh(.CLK(clk_tb),
.read(read_tb),
.AR(ar_tb),
.write(write_tb),
.INDATA(datain),
.OUTDATA(dataout));

                   
    always begin
    #5 clk_tb = ~clk_tb;
    end
    initial begin 
    
    #5 clk_tb = 0;
    #5 ar_tb=4'h0004;
    #5 read_tb = 1;
    #5 write_tb = 0;
    


    end
    
    endmodule
