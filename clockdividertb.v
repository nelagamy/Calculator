`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2022 10:54:55 AM
// Design Name: 
// Module Name: clockdividertb
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


module clockdividertb();
reg in,rst;
wire out;
clockdivider dev(rst,in,out);
initial begin
  // Initialize Inputs
  in = 0;
  
  // create input clock 50MHz
        forever #10 in = ~in;
 end
endmodule
