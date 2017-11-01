`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2017 06:31:19 PM
// Design Name: 
// Module Name: comp
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


module comp(in1, in2, sign);
input [7:0] in1, in2;
output reg sign;

always @ (*)
begin
    sign = (in2>in1); //specification given by description of the comparator on Page 98
end              
endmodule
