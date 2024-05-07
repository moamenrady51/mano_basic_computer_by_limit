`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2024 11:47:35 PM
// Design Name: 
// Module Name: seq_tb
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



module SequenceCounter_TB;

	wire INC;           
	reg CLK;           
	wire CLR;

	wire [2:0] out;    
	
    wire [7:0] T;
    reg [7:0] D;
    reg I;
    
	SEQ_COUNTER UUT(.INC(INC), .CLR(CLR), .CLK(CLK), .out(out));   
	SEQ_COUNTER_CLR control(CLR, INC, T, D, I);
	DECODER DEC(out, T);


    always #10 CLK = ~CLK;
    
    initial begin
		CLK = 0;
		I = 0;
		D = 0;

	end

endmodule
