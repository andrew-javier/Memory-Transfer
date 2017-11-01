`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2017 06:10:41 PM
// Design Name: 
// Module Name: controlunit
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


module controlunit(incA, incB, weA, weB, reset, clk);
input reset, clk;
output reg incA, incB, weA, weB;
reg [4:0] cs;
reg [4:0] ns;

//Handle Resets
always @ (posedge clk, posedge reset)
    begin
       if (reset == 1'b1)
            begin
                cs <= 5'b00000;
            end 
        else
            begin
                cs <= ns;
            end    
    end

//Output Stuff
always @ (cs)
    begin
        case (cs)
            5'b00000: begin //State 0
                weA = 0;
                weB = 0;
                incA = 0;
                incB = 0;
                ns = 1;
            end
            
            5'b00001: begin //State 1
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 2;
            end
            
            5'b00010: begin //State 2
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 3;
            end
            
            5'b00011: begin //State 3
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 4;
            end  
            
            5'b00100: begin //State 4
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 5;
            end  
            
            5'b00101: begin //State 5
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 6;
            end         
            
            5'b00110: begin //State 6
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 7;
            end   

            5'b00111: begin //State 7
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 8;
            end     
   
            5'b01000: begin //State 8
                weA = 1;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 9;
            end    
            
            5'b01001: begin //State 9
                weA = 0;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 10;
            end
            
            5'b01010: begin //State 10
                weA = 0;
                weB = 0;
                incA = 1;
                incB = 0;
                ns = 11;
            end
            
            5'b01011: begin //State 11
                weA = 0;
                weB = 1;
                incA = 1;
                incB = 0;
                ns = 12;
            end
            
            5'b01100: begin //State 12
                weA = 0;
                weB = 0;
                incA = 1;
                incB = 1; 
                ns = 13; 
            end
            
            5'b01101: begin //State 13
                weA = 0;
                weB = 1;
                incA = 1;
                incB = 0;
                ns = 14;
            end
            
            5'b01110: begin //State 14
                weA = 0;
                weB = 0;
                incA = 1;
                incB = 1;
                ns = 15;
            end
            
            5'b01111: begin //State 15
                weA = 0;
                weB = 1;
                incA = 1;
                incB = 0;
                ns = 16;
            end
            
            5'b10000: begin //State 16
                weA = 0;
                weB = 0;
                incA = 1;
                incB = 1;
                ns = 17;
            end
            
            5'b10001: begin //State 17
                weA = 0;
                weB = 1;
                incA = 0;
                incB = 0;
                ns = 18;
            end
            
            5'b10010: begin //State 18
                weA = 0;
                weB = 0;
                incA = 0;
                incB = 1;
                ns = 0;
            end
            
            default: begin
                weA = 0;
                weB = 0;
                incA = 0;
                incB = 0;
            end
                                                                                                            
            endcase
    end    
endmodule
