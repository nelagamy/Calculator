`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 11:14:18 AM
// Design Name: 
// Module Name: bcd
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


module sdcc (operations,second,x, enable , y);
input [3:0] x;
input operations,second;
//input [1:0] select ;
input enable ;
output reg [7:0] y;
//output reg [3:0] enableOut ;
 always @(x, enable ) begin
 if( enable )begin
 if(second==1&&operations==0) begin
 case (x)
4'b0000 : y = 8'b00000_001 ;
4'b0001 : y = 8'b01001_111 ;
4'b0010 : y = 8'b00010_010 ;
4'b0011 : y = 8'b00000_110 ;
4'b0100 : y = 8'b01001_100 ;
4'b0101 : y = 8'b00100_100 ;
4'b0110 : y = 8'b00100_000 ;
4'b0111 : y = 8'b00001_111 ;
4'b1000 : y = 8'b00000_000 ;
4'b1001 : y = 8'b00000_100 ;
4'b1111 : y=  8'b01111_110 ;

endcase
end
else begin
 case (x)
4'b0000 : y = 8'b10000_001 ;
4'b0001 : y = 8'b11001_111 ;
4'b0010 : y = 8'b10010_010 ;
4'b0011 : y = 8'b10000_110 ;
4'b0100 : y = 8'b11001_100 ;
4'b0101 : y = 8'b10100_100 ;
4'b0110 : y = 8'b10100_000 ;
4'b0111 : y = 8'b10001_111 ;
4'b1000 : y = 8'b10000_000 ;
4'b1001 : y = 8'b10000_100 ;
4'b1111 : y=  8'b11111_110 ;

endcase


end
end
else
y = 8'b1111_1111 ;
end
//always @(enableOut) begin
//case (select)  
//2'b00 : enableOut = 4'b0111;
//2'b01 : enableOut = 4'b1011;
//2'b10 : enableOut = 4'b1101;
//2'b11 : enableOut = 4'b1110;
//default :  enableOut = 4'b1111;
//endcase
//end
endmodule
