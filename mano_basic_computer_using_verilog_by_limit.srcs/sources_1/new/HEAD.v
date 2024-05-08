
`define	BLE	16'b0

 module HEAD(

     output wire [15:0]              DR,
     output wire [15:0]              AC,
     output wire [15:0]              IR,
     output wire [11:0]              PC,
     output wire [11:0]              AR,
     output wire [15:0]              MEMORY_OUTPUT,
     output wire [2:0]               SEQ_COUNTER_OUTPUT,
     output wire [15:0]              SELECTED_OUTPUT,
     output wire [2:0]               S2S1S0,
     output wire [7:0]               Xs ,
     output wire [7:0]               T ,
     output wire [7:0]               D,
     output wire                     I,
     output wire                     E ,
     output wire                     read ,
      output wire           [15:0] ALU_OUT,
      input CLK
     );
     
	
	       
	       
	       
	       
	wire INCAC;
	wire  LDAC;
	wire  CLRAC;
    AC_Design ac_reg (CLRAC ,INCAC, CLK ,ALU_OUT, AC,  LDAC );	       

	wire INCPC;
	wire  LDPC;
	wire  CLRPC;                    
    PC pc_reg(CLRPC , INCPC,CLK, SELECTED_OUTPUT[11:0], PC, LDPC); 
    
    wire WRITE;
    wire  READ;
	RAM_256_B ramat (CLK, READ, AR, WRITE, SELECTED_OUTPUT, MEMORY_OUTPUT ); 
	wire   INCAR;
	wire  LDAR;
	wire  CLRAR;
	wire clr;                                                                                     
	AR_Design AR_reg (LDAR, clr ,INCAR, CLK ,SELECTED_OUTPUT[11:0], AR );

	wire  INCDR;
	wire  LDDR;
	wire CLRDR;

	DR_Design dr_reg( LDDR,CLRDR, INCDR, CLK, SELECTED_OUTPUT,DR );                
		

    wire  cout; 
    assign E =cout ; 
    wire CLRSC, S ,  IFLG;
    assign IFLG = I;
	wire [15:0] ac_in;
	wire CIR, CIL, CMA, LDA, INPT, ADD, AND;
	ADDER_AND_LOGIC_UNIT ALU(AND, ADD, LDA, CMA,CIR, CIL,E ,AC,CLK, DR, cout , ALU_OUT); 
	assign ac_in =   ALU_OUT;  
	              
	wire INCSC;
    assign INCSC = ~CLRSC;             
                    
    SEQ_COUNTER sc (CLRSC, INCSC , CLK, SEQ_COUNTER_OUTPUT);    
    DECODER dec(SEQ_COUNTER_OUTPUT, T);
    
	wire INCIR, LDIR, CLRIR;
	IR_Design ir_reg( LDIR,CLRIR,INCIR,CLK,   SELECTED_OUTPUT,IR  ); 
	
	              
    ENCODER SEL_ENC(S2S1S0,Xs);	                                        
    MULTIPLEXER BUS_SELECTION (4'h0000, {4'b0000,AR}, {4'b0000, PC}, DR, AC, IR, 4'h0000, MEMORY_OUTPUT, S2S1S0, SELECTED_OUTPUT);  
    
    
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
      .Xs(Xs),
      .I(I),
      .D(D),
      .CIR(CIR),
      .CIL(CIL), 
      .INP(INPT),
      .DR(DR)); 
  


                                               
endmodule