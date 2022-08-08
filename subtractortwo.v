`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 03:38:50 PM
// Design Name: 
// Module Name: subtractortwo
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


module subtractortwo(input[3:0] i1,i2,i3,i4, output reg [13:0]res);
wire [7:0] num1,num2;
adjust adj(i1,i2,i3,i4,num1,num2);
always@(*) begin 
	res =  num1 + ~num2[7:0] + 'b1;
	if (res[4]==1) begin
	  res = ~res[7:0] + 'b1;
	end

  end
  endmodule