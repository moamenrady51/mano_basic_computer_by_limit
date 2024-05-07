//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 05/01/2024 01:32:19 AM
//// Design Name: 
//// Module Name: ADDER_AND_LOGIC_UNIT
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


module ADDER_AND_LOGIC_UNIT(
    input AND,
    input ADD,
    input  LDA,
    input   CMA,
    input   CIR,
    input   CIL,
    input   E,     
    input [15:0] AC,
    input CLOCK,
    input [15:0] DR,
    
    output cout ,
    output  reg [15:0]  ALU_OUT);
    
    wire [15:0] _AND,_ADD,_LDA,_CMA,_CIR,_CIL;     
   
    wire [15:0] OUT1,OUT2,OUT3,OUT4,OUT5,OUT6 ;         
    wire CARRY ;
    wire SUM;
    
 always @(CLOCK)   
    if(AND)begin
 	ALU_OUT = DR & AC;
 	end else if(ADD)begin
 	ALU_OUT = DR + AC;
 	end else if(LDA)begin
 	ALU_OUT = DR;
 	end else if(CMA)begin
 	ALU_OUT = ~AC;
 	end else if(CIR)begin
 	ALU_OUT = (AC >> 1);
 	end else if(CIL)begin
 	ALU_OUT = (AC << 1);
 	end
 	
 	endmodule