`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:28 04/24/2017 
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
module crossbar(i0,i1, i2,i3,i4,
      sel0, sel1, sel2,sel3,sel4,
		o0,o1, o2,o3,o4,
		clk, reset,enable0,enable1, enable2,enable3,enable4
		//,flag6, flag7,flag8,flag9,flag10,
		//enable6,enable7,enable8,enable9, enable10
    );
input clk, reset;
input[31:0] i0,i1,i2,i3,i4;
(* KEEP = "TRUE" *) output reg[31:0] o0,o1,o2,o3,o4;
(* KEEP = "TRUE" *) input[4:0] sel0, sel1, sel2, sel3, sel4;
(* KEEP = "TRUE" *) output reg enable0,enable1,enable2,enable3,enable4;
//(* KEEP = "TRUE" *) input enable6,enable7,enable8,enable9, enable10;
//(* KEEP = "TRUE" *) input flag1, flag2, flag3, flag4, flag5;
//(* KEEP = "TRUE" *) output reg flag6, flag7,flag8,flag9,flag10;


always @(posedge clk)
if(reset)
begin
o0<=32'b0000;
o1<=32'b0000;
o2<=32'b0000;
o3<=32'b0000;
o4<=32'b0000;
end
else
begin
case(sel0)
5'b00001: o0<=i0;
5'b00010: o0<=i1;
5'b00100: o0<=i2;
5'b01000: o0<=i3;
5'b10000: o0<=i4;
default:  o0<=32'bxxxx;
endcase
case(sel1)
5'b00001: o1<=i0;
5'b00010: o1<=i1;
5'b00100: o1<=i2;
5'b01000: o1<=i3;
5'b10000: o1<=i4;
default: o1<=32'bxxxx;
endcase
case(sel2)
5'b00001: o2<=i0;
5'b00010: o2<=i1;
5'b00100: o2<=i2;
5'b01000: o2<=i3;
5'b10000: o2<=i4;
default: o2<=32'bxxxx;
endcase
case(sel3)
5'b00001: o3<=i0;
5'b00010: o3<=i1;
5'b00100: o3<=i2;
5'b01000: o3<=i3;
5'b10000: o3<=i4;
default: o3<=32'bxxxx;
endcase
case(sel4)
5'b00001: o4<=i0;
5'b00010: o4<=i1;
5'b00100: o4<=i2;
5'b01000: o4<=i3;
5'b10000: o4<=i4;
default: o4<=32'bxxxx;
endcase 
$display("output local i0 O0 %b, %b, %t", i0, o0, $time);
$display("output local i1 O1 %b, %b,%t", i1, o1,$time);
$display("output local i2 O2 %b,%b, %t", i2, o2, $time);
$display("output local i3 O3 %b,%b, %t", i3, o3,$time);
$display("output local i4 O4 %b,%b, %t", i4, o4,$time);
$display("select0 signal %b, %t", sel0, $time);
$display("select1 signal %b, %t", sel1, $time);
$display("select2 signal %b, %t", sel2, $time);
$display("select3 signal %b, %t", sel3, $time);
$display("select4 signal %b, %t", sel4, $time);
end 


always @(posedge clk)
if(reset)
begin
enable0=1'b0;
end
else if(sel0==5'b00001||sel1==5'b00001||sel2==5'b00001||sel3==5'b00001||sel4==5'b00001)
begin
enable0=1'b1;
$display("crossbar enable0 ouput signal %b, %t", enable0, $time);
end
else
begin
enable0=1'b0;
$display("crossbar enable0 ouput signal else %b, %t", enable0, $time);
end

always @(posedge clk)
if(reset)
begin
enable1=1'b0;
end
else if(sel0==5'b00010||sel1==5'b00010||sel2==5'b00010||sel3==5'b00010||sel4==5'b00010)
begin
enable1=1'b1;
$display("crossbar enable1 ouput signal %b, %t", enable1, $time);
end
else
begin
enable1=1'b0;
$display("crossbar enable1 ouput signal else %b, %t", enable1, $time);
end


always @(posedge clk)
if(reset)
begin
enable2=1'b0;
end
else if(sel0==5'b00100||sel1==5'b00100||sel2==5'b00100||sel3==5'b00100||sel4==5'b00100)
begin
enable2=1'b1;
$display("crossbar enable2 ouput signal %b, %t", enable2, $time);
end
else
begin
enable2=1'b0;
$display("crossbar enable2 ouput signal else %b, %t", enable2, $time);
end

always @(posedge clk)
if(reset)
begin
enable3=1'b0;
end
else if(sel0==5'b01000||sel1==5'b01000||sel2==5'b01000||sel3==5'b01000||sel4==5'b01000)
begin
enable3=1'b1;
$display("crossbar enable3 ouput signal %b, %t", enable3, $time);
end
else
begin
enable3=1'b0;
$display("crossbar enable3 ouput signal else %b, %t", enable3, $time);
end

always @(posedge clk)
if(reset)
begin
enable4=1'b0;
end
else if(sel0==5'b10000||sel1==5'b10000||sel2==5'b10000||sel3==5'b10000||sel4==5'b10000)
begin
enable4=1'b1;
$display("crossbar enable4 ouput signal %b, %t", enable4, $time);
end
else
begin
//enable0=1'b0;
//enable1=1'b0;
//enable2=1'b0;
//enable3=1'b0;
enable4=1'b0;
//$display("crossbar enable0 ouput signal else %b, %t", enable0, $time);
//$display("crossbar enable1 ouput signal else %b, %t", enable1, $time);
//$display("crossbar enable2 ouput signal else %b, %t", enable2, $time);
//$display("crossbar enable3 ouput signal else %b, %t", enable3, $time);
$display("crossbar enable4 ouput signal else %b, %t", enable4, $time);
end 
//sel1,sel2,sel3,sel4;
//assign o0= (i0&sel0);
//assign o0=((i0&~i1&~i2&~i3&~i4&sel0)|(~i0&i1&~i2&~i3&~i4&sel0)|(~i0&~i1&i2&~i3&~i4&sel0)|(~i0&~i1&~i2&i3&~i4&sel0)|(~i0&~i1&~i2&~i3&i4&sel0));
//assign o1=((i0&~i1&~i2&~i3&~i4&sel1)|(~i0&i1&~i2&~i3&~i4&sel1)|(~i0&~i1&i2&~i3&~i4&sel1)|(~i0&~i1&~i2&i3&~i4&sel1)|(~i0&~i1&~i2&~i3&i4&sel1));
//assign o2=((i0&~i1&~i2&~i3&~i4&sel2)|(~i0&i1&~i2&~i3&~i4&sel2)|(~i0&~i1&i2&~i3&~i4&sel2)|(~i0&~i1&~i2&i3&~i4&sel2)|(~i0&~i1&~i2&~i3&i4&sel2));
//assign o3=((i0&~i1&~i2&~i3&~i4&sel3)|(~i0&i1&~i2&~i3&~i4&sel3)|(~i0&~i1&i2&~i3&~i4&sel3)|(~i0&~i1&~i2&i3&~i4&sel3)|(~i0&~i1&~i2&~i3&i4&sel3));
//assign o4=((i0&~i1&~i2&~i3&~i4&sel4)|(~i0&i1&~i2&~i3&~i4&sel4)|(~i0&~i1&i2&~i3&~i4&sel4)|(~i0&~i1&~i2&i3&~i4&sel4)|(~i0&~i1&~i2&~i3&i4&sel4));
endmodule
