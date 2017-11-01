`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2017 01:22:20 AM
// Design Name: 
// Module Name: cutb
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


module cutb;
reg reset, clk;
reg [3:0] ctrl;
wire incA, incB, weA, weB;
integer i = 0;

controlunit DUT (incA, incB, weA, weB, reset, clk);

always @ (incA, incB, weA, weB)
    begin
    ctrl = {incA, incB, weA, weB};
    end
always
begin
reset = 1;
clk = 0;
#5
reset = 0;
#5
clk = 1;
#5
clk = 0;
for (i = 0; i < 20; i = i + 1)
    begin
    #5
    clk = 1;
    #5
    clk = 0;
    end
end
endmodule
