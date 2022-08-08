`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 11:38:17 AM
// Design Name: 
// Module Name: digit_switcher
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


module digit_switcher(clk, rstn, digit1, digit2, digit3, digit4, out, enable);
input clk, rstn;
input [7:0] digit1, digit2, digit3, digit4;
wire [7:0] digits[3:0];
output reg[7:0] out;
output reg[3:0] enable;
assign digits[0]=digit1, digits[1]=digit2, digits[2]=digit3, digits[3]=digit4;
reg[1:0] count;
wire clk_out;
clockdivider clkdivide(rstn, clk, clk_out);

always @(posedge clk_out, posedge rstn) begin 
if(rstn)
count<=0;
else 
count<=count+1;


out<=digits[count];
enable=4'b1111-(1<<count);
end
endmodule
