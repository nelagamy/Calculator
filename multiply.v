`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 01:16:10 PM
// Design Name: 
// Module Name: multiply
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


module multiply(input [3:0] a,input [3:0] b,input [3:0] c,input [3:0] d,output[13:0] result);
wire [7:0] num1,num2;
adjust adj (a,b,c,d,num1,num2);
assign result=num1*num2;
endmodule
