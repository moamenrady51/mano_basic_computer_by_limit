`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2024 05:29:08 PM
// Design Name: 
// Module Name: CU_TB
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


module CU_TB();
  // Inputs
    reg CLK, cout;
	reg [15:0] IR,AC,DR;
	reg [7:0] T;
	wire  CLRAC, INRAC, LoadAC ,CMA,LDA, ADD, AND, 
	 CLRAR, INRAR, LoadAR, CLRPC, INRPC, LoadPC, WRITE, READ,
	 LoadDR, CLRSC, LoadTR, E, LoadIR;
	 wire [7:0] X;
  
  // Instantiate the Control Unit module
   ASIGNMENTAT CU(
    .CLK(CLK), .IR(IR), .T(T), .CLRAC(CLRAC), .INRAC(INRAC),
    .LoadAC(LoadAC), .CMA(CMA), .LDA(LDA), .ADD(ADD), .AND(AND),
    .CLRAR(CLRAR), .INRAR(INRAR), .LoadAR(LoadAR), .CLRPC(CLRPC),
    .INRPC(INRPC), .LoadPC(LoadPC), .WRITE(WRITE), .READ(READ),
    .LoadDR(LoadDR), .CLRSC(CLRSC),  .E(E), .X(X),
    .AC(AC), .DR(DR), .LoadIR(LoadIR), .cout(cout)
  );
   // Initialize inputs
    always #5 CLK = ~CLK;

  initial begin
        // Initialize inputs\
        #5 CLK = 0;
        #5 T = 8'b00000000;
       #5  IR = 16'b0;
       #5  AC = 16'b0;
       #5  DR = 16'b0;
       #5  cout = 1'b0;
        #10;
                // Test case 4 - CMA
        T = 8'b00000001;
        #10;
        T = 8'b00000010;
      #10;
        T = 8'b00000100;
        
        
       end 
endmodule