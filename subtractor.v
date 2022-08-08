`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/25/2022 12:56:34 PM
// Design Name: 
// Module Name: subtractor
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


module subtractor(input[3:0] i1,i2,i3,i4, output reg[3:0]D1,D2,D3,D4, output reg isNegative);
wire [7:0] num1,num2;
reg signed [13:0] res;
	adjust adj (i1,i2,i3,i4,num1,num2);
	
	always@(*) begin 
	   if(num2 > num1)begin
	       res = num2 - num1;
	       isNegative = 1;
	   end
	   else begin
	       res =  num1 - num2;
	        isNegative = 0;
       end
        if (res<0) begin
          D1 = 4'b1111;
            res = -1*res;
            D4 = res%10;
            res = res/10;
            D3 = res%10;
            res = res/10;
            D2 = res%10;
            //dot = 0;
        end
      else begin
        D4 = res%10;
        res = res/10;
        D3 = res%10;
        res = res/10;
        D2 = res%10;
        res = res/10;
        D1 = res%10;
        //dot = 0;
      end
     
    end 
	
	
endmodule