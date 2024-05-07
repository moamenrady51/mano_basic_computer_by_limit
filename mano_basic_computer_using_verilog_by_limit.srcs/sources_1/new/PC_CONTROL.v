`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 04:45:20 AM
// Design Name: 
// Module Name: PC_CONTROL
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


module PC_CONTROL(

            output CLR,
            output INC,
            output LD,
            input I,
            input E,
            input [7:0] T,
            input [7:0] D,
            input [15:0] B,
            input [15:0] DR,
            input [15:0] AC);


    wire In, AC15n, En, a1, a3, r, a6 ,a7 ,a8 ,a9 ,a10 ,o1 ,a11;
    wire a15, a16;
    
    assign In= ~I;
    assign r= In & D[7] & T[3];
    assign AC15n = ~AC[15];
    assign En=~E;
    
	assign a1=  T[1];
	assign a8 = B[3] & AC[15];      
	assign a9 = AC15n & B[4];       
	assign a10 = En & B[1];           
    assign a15 = T[4] & D[4];
	assign a16 = D[5] & T[5]; 
    assign o1 = a8 | a9 | a10;
	assign a11 = r & o1;            

	assign LD = a15 | a16;      
	assign INC = a1 | a11 ; 
	assign CLR= r & B[0];  

endmodule
