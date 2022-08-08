`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2022 12:39:46 PM
// Design Name: 
// Module Name: converter
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


module converter(input[13:0] result_temp, output  [3:0]out0, out1, out2, out3);
    assign out0=result_temp / 1000;
    assign out1=((result_temp % 1000)/100);
   assign out2=(result_temp % 100)/10;
   assign out3=result_temp % 10;
   //9325
   // out0=     out1=3   out2=2  out3=5
endmodule
