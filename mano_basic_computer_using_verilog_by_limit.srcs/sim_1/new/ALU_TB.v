`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2024 10:02:00 PM
// Design Name: 
// Module Name: ALU_TB
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


module ALU_TB;


    reg AND, ADD, LDA, CMA, E;
    reg [15:0] AC, DR;
    wire [15:0] ALU_OUT;
    wire cout;
    reg clock_tb;

    ADDER_AND_LOGIC_UNIT alu (
        .AND(AND),
        .ADD(ADD),
        .LDA(LDA),
        .CMA(CMA),
        .E(E),
        .AC(AC),
        .DR(DR),
        .cout(cout),
        .ALU_OUT(ALU_OUT),
        .CLOCK(clock_tb)
    );
    always begin
    #5 clock_tb = ~clock_tb;
    end
    initial begin
    #5 clock_tb = 0;
         #10 AND = 1; ADD = 0; LDA = 0; CMA = 0; E = 0; AC = 16'h0001; DR = 16'h0011;
        #10;
        // Test AND operation with AC=0x1234 and DR=0x5678
        #10 AND = 0;
        #10 ADD = 1; 
        #10 LDA = 0; 
        #10 AC = 16'b0111100001111100; 
        #10 DR = 16'b0111100001111100;
        #10;
        //ADD = 1;
        // Expected result: ACDATA = 16'h0230 (because 0x1234 & 0x5678 = 0x0230)


        
    end
endmodule