`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2017 08:35:57 PM
// Design Name: 
// Module Name: DP
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


module DP(clk, din, inca, incb, wea, web, reset);
input [7:0] din;
input clk, inca, incb, wea, web, reset;

wire [2:0] AddrA;
wire [1:0] AddrB;
wire [7:0] DOut1, DOut2, ADDOut, SUBOut, DataInB;
wire sign;

memA MemoryA (.dataOut(DOut1), .dataIn(din), .address(AddrA), .writeEn(wea), .clk(clk));
memB MemoryB (.dataIn(DataInB), .address(AddrB), .writeEn(web), .clk(clk));
CountA CA (.inc(inca), .reset(reset), .clk(clk), .out(AddrA));
CountB CB (.inc(incb), .reset(reset), .clk(clk), .out(AddrB));
FlipFlop DFF (.d(DOut1), .q(DOut2), .reset(reset), .clk(clk));
comp Compare (.in1(DOut2), .in2(DOut1), .sign(sign));
Mux Multiplex (.in0(SUBOut), .in1(ADDOut), .sel(sign), .out(DataInB));
Adder Add (.a(DOut2), .b(DOut1), .out(ADDOut));
Subtractor Sub (.a(DOut2), .b(DOut1), .out(SUBOut));
endmodule
