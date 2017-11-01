`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2017 03:07:40 PM
// Design Name: 
// Module Name: Mux
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


module Mux(in0, in1, sel, out);

input [7:0] in0, in1;
input sel;
output reg [7:0] out;

always @ (*)
begin
out = sel ? in1 : in0; //if sel = 1, choose in1, else, choose in0
end
endmodule
