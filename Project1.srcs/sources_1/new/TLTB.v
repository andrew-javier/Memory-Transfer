`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2017 12:59:38 AM
// Design Name: 
// Module Name: TLTB
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


module TLTB;

reg [7:0] din;
reg clk, reset;
integer i = 0;

TopLevel DUT (.din(din), .clk(clk), .reset(reset));

always
begin
clk = 0;
reset = 1;
#5
reset = 0;
#5
clk = 1;
#5
clk = 0;
din = 8'b1000_0111; //Address A0
#5
clk = 1;
#5
clk = 0;
din = 8'b0000_0001; //Address A1
#5
clk = 1;
#5
clk = 0;
din = 8'b1010_1010; //Addres A2
#5
clk = 1;
#5
clk = 0;
din = 8'b0101_0101; //Address A3
#5
clk = 1;
#5
clk = 0;
din = 8'b0110_1001; //Address A4
#5
clk = 1;
#5
clk = 0;
din = 8'b1001_0110; //Address A5
#5
clk = 1;
#5
clk = 0;
din = 8'b0010_1101; //Address A6
#5
clk = 1;
#5
clk = 0;
din = 8'b0000_0000; //Address A7

reset = 1;
for (i = 0; i < 15; i = i + 1)
    begin
    #5
    clk = 1;
    #5
    clk = 0;
    end
    
end
endmodule
