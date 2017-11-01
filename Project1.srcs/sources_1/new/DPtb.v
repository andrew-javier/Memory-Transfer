`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2017 02:06:57 PM
// Design Name: 
// Module Name: DPtb
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


module DPtb;

reg [7:0] din;
reg clk, inca, incb, wea, web, reset;
reg [3:0] ctrl;

DP DUT (.clk(clk), .din(din), .inca(inca), .incb(incb), .wea(wea), .web(web), .reset(reset));

always @ (ctrl)
    begin
    {inca, incb, wea, web} = ctrl; //set up so I can change all four at the same time
    end
    
always
begin
clk = 0;
reset = 1;
#5
clk = 1;
reset = 0;
#5
clk = 0;
ctrl = 4'b1010; //State 1
din = 8'b10001000;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 2
din = 8'b00000001;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 3
din = 8'b10101010;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 4
din = 8'b01010101;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 5
din = 8'b01101001;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 6
din = 8'b10010110;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 7
din = 8'b00101101;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1010; //State 8
din = 8'b00000000;
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1000; //State 9
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1000; //State 10
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1001; //State 11
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1100; //State 12
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1001; //State 13
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1100; //State 14
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1001; //State 15
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b1100; //State 16
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b0001; //State 17
#5
clk = 1;
#5
clk = 0;
ctrl = 4'b0001; //State 18
#5
clk = 1;

end    
endmodule
