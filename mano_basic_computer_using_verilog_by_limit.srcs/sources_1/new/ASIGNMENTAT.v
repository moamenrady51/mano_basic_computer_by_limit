`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2024 02:54:51 AM
// Design Name: 
// Module Name: ASIGNMENTAT
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


module ASIGNMENTAT
 ( input CLK,
  input [7:0] T,
   input cout,
    input [15:0] AC,
     input [15:0] IR,
                     output CLRAR,
                     output INRAR,
                     output LoadAR,
                     output CLRPC,
                     output INRPC,
                     output LoadPC,
                     output CLRAC,
                     output INRAC,
                     output LoadAC,
                     output CLRDR,
                     output INRDR,
                     output LoadDR,
                     output CLRIR,
                     output INRIR,
                     output LoadIR,
                     output WRITE,
                     output READ,
                     output CMA, 
                     output LDA,
                     output ADD,
                     output AND,
                     output CLRSC,
                     output INRSC,
                     output E,
                     output [7:0] X,
                     output I,
                     input [7:0] D ,
                     output CIR,
                     output CIL, 
                     output INP,
                     input [15:0] DR );
                     


    
    wire [7:0] DECODER_OUTPUT;
	wire [11:0] B = IR [11:0];
	wire [2:0] OPCODE = IR [14:12];
	wire IFLAG = IR[15];
	wire r;
	wire ICOM;
	assign I = IFLAG;
	assign ICOM = ~I;
	assign 	r =	D[7] & T[3] &ICOM;
	
	DECODER	dec(OPCODE , DECODER_OUTPUT[7:0]); 
    assign D = DECODER_OUTPUT;
	AR_CONTROL ar(LoadAR, CLRAR, INRAR, T, D, I);
	PC_CONTROL pc(CLRPC, INRPC, LoadPC,I, E, T, D, B,DR , AC);  	
	DR_CONTROL dr(LoadDR, INRDR, T, D);  	
	AC_CONTROL ac(AND, CMA, LDA, ADD, LoadAC, INRAC, CLRAC,CIR,INP,CIL, T, D, B, I); 
	IR_CONTROL ir(D, T, CLRIR, INRIR, LoadIR); 
	RAM_CONTROL ram(WRITE, READ, T, D, I);	
	SEQ_COUNTER_CLR sc(CLRSC, INRSC, T, D, I);	
	COMMON_BUS_CONTROL bus(X, D, T, I);   
	
endmodule
