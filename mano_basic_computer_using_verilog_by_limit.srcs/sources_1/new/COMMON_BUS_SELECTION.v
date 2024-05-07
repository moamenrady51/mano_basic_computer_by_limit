`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2024 04:48:03 AM
// Design Name: 
// Module Name: COMMON_BUS_SELECTION
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


//module COMMON_BUS_SELECTION( [15:0] AR ,PC,DR,AC,IR,RAM,//all data of registers as an input to common bus ,reg as a source
//    input [2:0] SSS,
//    output reg [15:0]OUT //the data of the selected register 
//    );
//    wire s0,s1,s2;
    
//   generate  
//    genvar k;
    
//      for (k=0;k>15;k=k+1)       //instatiating the mux module 16 time for selecting each bit 
//        begin 
        
//           MUX bit_n (
//           .d0(AR[n]), 
//           .d1(PC[n]),
//           .d2(DR[n]),
//           .d3(AC[n]),
//           .d4(IR[n]),
//           .d6(RAM[n]),
//           .sel(SSS),
//           .out(OUT[n])
//           );
           
//        end
        
//   endgenerate
//endmodule
