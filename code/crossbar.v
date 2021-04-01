`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:16:50 08/24/2016 
// Design Name: 
// Module Name:    crossbar 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module crossbar(gnt1,gnt2,gnt3,gnt4,gnt5, in1, in2, in3,in4, in5, dat1, dat2, dat3,dat4, dat5
    );
input gnt1, gnt2,gnt3,gnt4, gnt5;
input [0:7] in1, in2, in3, in4, in5;
output [0:7] dat1, dat2, dat3, dat4, dat5;
reg[0:7] dat1= 8'b00000000;
reg[0:7] dat2= 8'b00000000;
reg[0:7] dat3= 8'b00000000;
reg[0:7] dat4= 8'b00000000;
reg[0:7] dat5= 8'b00000000;
always @(gnt1 or gnt2 or gnt3 or gnt4 or gnt5 or in1 or in2 or in3 or in4 or in5)
begin
case({gnt1,gnt2,gnt3,gnt4, gnt5})
5'b10000:
begin
dat1<=in1;
dat2<=in1;
dat3<=in1;
dat4<=in1;
dat5<=in1;
end
5'b01000:
begin
dat1<=in2;
dat2<=in2;
dat3<=in2;
dat4<=in2;
dat5<=in2;
end
5'b00100:
begin
dat1<=in3;
dat2<=in3;
dat3<=in3;
dat4<=in3;
dat5<=in3;
end
5'b00010 :
begin
dat1<=in4;
dat2<=in4;
dat3<=in4;
dat4<=in4;
dat5<=in4;
end
5'b00001 :
begin
dat1<=in5;
dat2<=in5;
dat3<=in5;
dat4<=in5;
dat5<=in5;
end
default:
begin
dat1<=8'b00000000;
dat2<=8'b00000000;
dat3<=8'b00000000;
dat4<=8'b00000000;
dat5<=8'b00000000;
end
endcase
end

endmodule
