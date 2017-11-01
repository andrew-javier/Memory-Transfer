`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2017 12:51:45 AM
// Design Name: 
// Module Name: TopLevel
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


module TopLevel(din, clk, reset);
input clk, reset;
input [7:0] din;

wire incA, incB, weA, weB;

controlunit CU (.incA(incA), .incB(incB), .weA(weA), .weB(weB), .reset(reset), .clk(clk));
DP path (.clk(clk), .din(din), .inca(incA), .incb(incB), .wea(weA), .web(weB), .reset(reset));

endmodule
