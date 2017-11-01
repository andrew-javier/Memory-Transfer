`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2017 03:41:39 PM
// Design Name: 
// Module Name: FlipFlop
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


module FlipFlop(d, q, reset, clk);
input [7:0] d;
input reset, clk;
output reg [7:0] q;
always @ (posedge clk, posedge reset)
    begin
    if (reset) //in my experiences with verliog, it's necessary that flip flops have a reset
        begin
            q = 8'b00000000;
        end
    else
        q = d;  //q becomes d on the positive clock edge          
    end
endmodule
