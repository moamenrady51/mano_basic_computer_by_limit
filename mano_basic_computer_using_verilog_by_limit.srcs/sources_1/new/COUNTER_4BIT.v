`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/03/2024 04:46:26 AM
// Design Name: 
// Module Name: COUNTER_4BIT
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


//module COUNTER_4BIT(clk, clr, count);
//  input clk, clr;     // Input signals include clock and asynchronous reset
//  output [3:0] count; // Output signal is a 4-bit counter value
//  reg [3:0] count;    // Register for storing the count

//  always @(posedge clk, negedge clr) begin // On positive clock edge or negative reset edge
//    if (!clr) begin                       // If reset signal is active low
//      count <= 4'b0000;                   // Reset the count to zero
//    end else begin                        // Otherwise
//      count <= count + 1;                 // Increment the count by one
//    end
//  end                                   // End of Always block
//endmodule                             // End of Module declaration