`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2022 11:51:28 AM
// Design Name: 
// Module Name: main_tb
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


module main_tb();
reg clk;
reg rstn;
reg[3:0] in;
reg original;
reg [3:0] operations;

integer i,j;
countertest sim ( clk,original, in,  rstn, operations,  y,  Anode_Activate);

always #5 clk =~clk;
initial begin
clk <=0;
rstn<=0;
  operations[0]=0;
  operations[1]=0;
   operations[2]=0;
    operations[3]=0;
 in[0]=0;
 in[1]=0;
 in[2]=0;
 in[3]=0;
 #100   
    
 for(i=0; i<4; i=i+1)begin
       for(j=0; j<9; j=j+1)begin
                 #5
                 in[i]=1;
                  #5 
                    in[i]=0;
                    
       end
 end
  #100
  operations[1]=1;
  #100
   operations[0]=1;
   operations[1]=0;
   #100
   operations[0]=0;
   operations[1]=0;
    operations[2]=0;
     operations[3]=1;
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=1;
     operations[3]=0;
#100
  operations[0]=0;
   operations[1]=0;
    operations[2]=0;
     operations[3]=0;
#100 
for(i=0; i<9; i=i+1)begin
    #5
    in[3]=1;
     #5 
       in[3]=0;
      
end
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=0;
     operations[3]=1;
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=1;
     operations[3]=0;
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=0;
     operations[3]=0;
#100
for(i=0; i<4; i=i+1)begin
     #5
    in[0]=1;
    #5 
    in[0]=0;
   
end
#100
for(i=0; i<3; i=i+1)begin
    #5
    in[1]=1;
    #5 
    in[1]=0;
   
end
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=0;
     operations[3]=1;
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=1;
     operations[3]=0;
#100
operations[0]=0;
   operations[1]=1;
    operations[2]=0;
     operations[3]=0;
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=0;
     operations[3]=0;
#100
for(i=0; i<2; i=i+1)begin
    #5
    in[2]=1;
    #5 
    in[2]=0;
   
end
#100
for(i=0; i<2; i=i+1)begin
    #5
    in[3]=1;
    #5 
    in[3]=0;
    
end
#100
operations[0]=0;
   operations[1]=0;
    operations[2]=1;
     operations[3]=0;

end 

endmodule
