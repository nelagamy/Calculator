`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The American University in Cairo 
// Engineer: 
//////////////////////////////////////////////////////////////////////////////////
module countertest(input clk,original, input [3:0] in, input rstn, input[3:0] operations, output [7:0] y, output [3:0] Anode_Activate);
wire [3:0] out[3:0];
wire [3:0] out2[3:0];
wire [3:0] out3[3:0];
wire [3:0] out4[3:0];
wire [3:0] out5[3:0];
reg [3:0] temp[3:0];
wire clkout;
reg counter=0;
wire isNegative;
wire second_number;
wire [13:0]result, result2,result3,result4;
reg [6:0] y1,y2;
reg tempdeb;
reg detect;
clockdivider #(5000) div(rstn,clk,clkout);
reg operation;
wire [1:0] refreshcounter;
wire [3:0] digit, digit1;
wire debout,debout2;

wire [3:0] temp1;
genvar j;
genvar i;
count_refresh dev(clkout, refreshcounter);

generate for (i = 0; i < 4; i = i + 1) begin: block1
        counter c(clkout, rstn, in[i], out[i]);
    end endgenerate



anode_control inst(refreshcounter, Anode_Activate);

addition inst2 (out[0],out[1],out[2],out[3],result);
multiply inst3 (out[0],out[1],out[2],out[3],result2);
divide inst4 (out[0],out[1],out[2],out[3],result3);
subtractor inst5(out[0],out[1],out[2],out[3],out5[0],out5[1],out5[2],out5[3], isNegative);
// subtractortwo inst6 (out[0],out[1],out[2],out[3],result4);
converter conv1 (result, out2[0], out2[1], out2[2], out2[3]);
 converter conv2 (result2, out3[0], out3[1], out3[2], out3[3]);
 converter conv3 (result3, out4[0], out4[1], out4[2], out4[3]);
//converter (result4, out5[0], out5[1], out5[2], out5[3]);
debouncer deb(clkout, original,debout);
stabilizer st (debout,debout2);
 always @(posedge clkout) begin
 
temp[0]=out[0];
temp[1]=out[1];
temp[2]=out[2];
temp[3]=out[3];
if(operations==4'b0000)begin

operation=0;
end
    if (original ==1) begin 
    
    temp[0]=out[0];
    temp[1]=out[1];
    temp[2]=out[2];
    temp[3]=out[3];
   operation=0;
    end
    else begin
  if(operations[0]==1) begin
    temp[0]=out2[0];
    temp[1]=out2[1];
    temp[2]=out2[2];
    temp[3]=out2[3];
    operation=1;

end
else if(operations[1]==1) begin
    temp[0]=out3[0];
    temp[1]=out3[1];
    temp[2]=out3[2];
    temp[3]=out3[3];
    operation=1;

end
else
if(operations[2]==1) begin
    temp[0]=out4[0];
    temp[1]=out4[1];
    temp[2]=out4[2];
    temp[3]=out4[3];
    operation=1;

end
else
if(operations[3]==1) begin
    temp[0]=out5[0];
    temp[1]=out5[1];
    temp[2]=out5[2];
    temp[3]=out5[3];
    operation=1;

end
end
end
 bcd_control bcd (refreshcounter, (isNegative && operations[3])? 4'b1111 : temp[0], temp[1], temp[2], temp[3], digit,second_number);
 sdcc sd (operation,second_number,digit, 1'b1, y);
 
endmodule