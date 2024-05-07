
`define	BLE	16'b0

 module HEAD(input CLK,

     output wire [15:0] DR,
     output wire [15:0] AC,
     output wire [15:0]  IR,
     output wire [15:0]   MEMORY_OUTPUT,
     output wire [11:0] PC,
     output wire [11:0] AR,
     output wire [7:0] T ,
     output wire [7:0] D,
     output wire [2:0] SEQ_COUNTER_OUTPUT,
     output wire [15:0] Data,
     output wire [2:0] S2S1S0,
     output wire [7:0] X ,
     output wire I,
     output wire E ,
     output wire read ,
      output wire [15:0] ACDATA
     );
     
	
	       
	       
	       
	       
	wire INCAC, LDAC, CLRAC;
    AC_Design ac_reg (CLRAC ,INCAC, CLK ,ACDATA, AC,  LDAC );	       

	wire INCPC, LDPC, CLRPC;                    
    PC pc_reg(CLRPC , INCPC,CLK, Data[11:0], PC, LDPC); 
    
    wire WRITE, READ;
	RAM_256_B ramat (CLK, READ, AR, WRITE, Data, MEMORY_OUTPUT ); 
	wire   INCAR, LDAR, CLRAR;
	wire clr;                                                                                     
	AR_Design AR_reg (LDAR, clr ,INCAR, CLK ,Data[11:0], AR );

	wire  INCDR, LDDR, CLRDR;

	DR_Design dr_reg( LDDR,CLRDR, INCDR, CLK, Data,DR );                
		

    wire  cout; 
    assign E =cout ; 
    wire CLRSC, S ,  IFLG;
    assign IFLG = I;
	wire [15:0] ac_in;
	wire CIR, CIL, CMA, LDA, INPT, ADD, AND;
	ADDER_AND_LOGIC_UNIT ALU(AND, ADD, LDA, CMA,CIR, CIL,E ,AC,CLK, DR, cout , ACDATA); 
	assign ac_in =   ACDATA;  
	              
	wire INCSC;
    assign INCSC = ~CLRSC;             
                    
    SEQ_COUNTER sc (CLRSC, INCSC , CLK, SEQ_COUNTER_OUTPUT);    
    DECODER dec(SEQ_COUNTER_OUTPUT, T);
    
	wire INCIR, LDIR, CLRIR;
	IR_Design ir_reg( LDIR,CLRIR,INCIR,CLK,   Data,IR  ); 
	
	              
    ENCODER SEL_ENC(S2S1S0,X);	                                        
    MULTIPLEXER BUS_SELECTION (4'h0000, {4'b0000,AR}, {4'b0000, PC}, DR, AC, IR, 4'h0000, MEMORY_OUTPUT, S2S1S0, Data);  
    
    
      ASIGNMENTAT rabt( 
      .CLK(CLK),
      .T(T),
      .cout(cout),
      .AC(AC), 
      .IR(IR),
      .CLRAR(CLRAR),
      .INRAR(INCAR),
      .LoadAR(LDAR),
      .CLRPC(CLRPC), 
      .INRPC(INCPC),
      .LoadPC(LDPC),
      .CLRAC(CLRAC),
      .INRAC(INCAC),
      .LoadAC(LDAC),
      .CLRDR(CLRDR),
      .INRDR(INCDR),
      .LoadDR(LDDR),
      .CLRIR(CLRIR), 
      .INRIR(INCIR),
      .LoadIR(LDIR),
      .WRITE(WRITE),
      .READ(READ),
      .CMA(CMA), 
      .LDA(LDA),
      .ADD(ADD),
      .AND(AND),
      .CLRSC(CLRSC),
      .INRSC(INCSC),
      .E(E),
      .X(X),
      .I(I),
      .D(D),
      .CIR(CIR),
      .CIL(CIL), 
      .INP(INPT),
      .DR(DR)); 
  


                                               
endmodule