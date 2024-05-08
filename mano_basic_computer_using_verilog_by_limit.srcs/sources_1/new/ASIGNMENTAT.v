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
 (                   
                     
                     output CLRAC,
                     output INCAC,
                     output LDAC,
                     output CLRDR,
                     output INCDR,
                     output LDDR,
                     output CLRAR,
                     output INCAR,
                     output LDAR,
                     output CLRPC,
                     output INCPC,
                     output LDPC,
                     output CLRIR,
                     output INCIR,
                     output LDIR,
                     output WRITE,
                     output READ,
                     output CMA, 
                     output LDA,
                     output ADD,
                     output AND,
                     output CLRSC,
                     output INCSC,
                     output E,
                     output [7:0] Xs,
                     output I,
                     input [7:0] D ,
                     output CIR,
                     output CIL, 
                     output INP,
                     input [15:0] DR,
                     input CLK,
                     input [7:0] T,
                     input cout,
                     input [15:0] AC,
                     input [15:0] IR );
                     


    
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
	AR_CONTROL ar(LDAR, CLRAR, INCAR, T, D, I);
	PC_CONTROL pc(CLRPC, INCPC, LDPC,I, E, T, D, B,DR , AC);  	
	DR_CONTROL dr(LDDR, INCDR, T, D);  	
	AC_CONTROL ac(AND, CMA, LDA, ADD, LDAC, INCAC, CLRAC,CIR,INP,CIL, T, D, B, I); 
	IR_CONTROL ir(D, T, CLRIR, INCIR, LDIR); 
	RAM_CONTROL ram(WRITE, READ, T, D, I);	
	SEQ_COUNTER_CLR sc(CLRSC, INRSC, T, D, I);	
	COMMON_BUS_CONTROL bus(Xs, D, T, I);   
	
endmodule
