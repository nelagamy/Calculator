`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 01:40:07 PM
// Design Name: 
// Module Name: divide
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


module divide(input[3:0] D1,D2,D3,D4, output reg [13:0]res);
wire[7:0] num1,num2;
reg r;
adjust adj (D1,D2,D3,D4,num1,num2);
 always @(*) begin
 r = num1%num2;
 res = num1/num2;
  if(r*2 >= num2)begin
     res = res+1;
  end
  end
endmodule