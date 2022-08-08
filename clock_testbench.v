`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2022 11:17:16 AM
// Design Name: 
// Module Name: clock_testbench
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


module clock_testbench();
reg sg;
reg clck;
postiveedgedetector test (sg, clck, pe);
always #10 clck = ~clck;
initial begin
clck <= 0;
sg <= 0;
#15 sg <=1;
#20 sg <=0;
#15 sg <=1;
#10 sg <=0;
#20 $finish;
end
endmodule
