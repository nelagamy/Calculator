`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2022 11:45:04 AM
// Design Name: 
// Module Name: counter
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


module counter(input clk, reset,in, output reg [3:0]count);
reg pushing, pushing_sync, pushing_fn;
wire pushing_edge;

always @(posedge clk) begin
pushing<=in;
pushing_sync<=pushing;
end

always @(posedge clk) begin
    if(reset) begin
    pushing_fn<=1'b0;
    end 
    else begin
    pushing_fn<=pushing_sync;
    end
end

assign pushing_edge=pushing_sync&~pushing_fn;

always @(posedge clk, posedge reset) begin
 if (reset)
 count <= 4'b0000; // non blocking assignment
 else begin
 if(pushing_edge) begin
 if(in) begin
 count <= count + 1; // non blocking assignment
 end
 if(count>=4'b1001) begin
 count<=4'b0000;
 end
 end
end
end
endmodule
