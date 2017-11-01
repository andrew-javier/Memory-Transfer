`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2017 03:21:59 PM
// Design Name: 
// Module Name: CountA
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


module CountA(inc, reset, clk, out);
input inc, reset, clk;
output reg [2:0] out;
always @ (posedge clk, posedge reset)
begin
    if (reset == 1)
        begin
            out = 3'b000; //put out back to 0 if reset is enabled
        end
    else
        begin
        out = (inc) ? out + 1 : out; //if true out is increased, else out stays the same   
        end
     end   
endmodule
