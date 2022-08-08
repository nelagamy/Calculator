`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2022 11:56:15 AM
// Design Name: 
// Module Name: counter_tb
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


module counter_tb;
reg clk;
reg rstn;

counter c1(clk, rstn, out);

always #5 clk =~clk;
initial begin
clk <=0;
rstn<=0;

#20 rstn <=1;
#60 rstn <=0;
#40 rstn <=1;

#20 $finish;
end 
endmodule
