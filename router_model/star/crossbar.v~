`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:35 08/25/2016 
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
module crossbar(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9, i10,
      sel0, sel1,sel2,sel3,sel4, sel5,sel6,sel7,sel8,sel9,sel10,
		o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,clk, rst
    );
input clk, rst;
input[7:0] i0,i1,i2,i3,i4,i5,i6,i7,i8,i9, i10;
output reg[7:0] o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10;
input[9:0] sel0, sel1,sel2,sel3,sel4, sel5,sel6,sel7,sel8,sel9,sel10;
always @(posedge clk)
begin
case(sel0)
10'b0000000001: o0<=i0;
10'b0000000010: o0<=i1;
10'b0000000100: o0<=i2;
10'b0000001000: o0<=i3;
10'b0000010000: o0<=i4;
10'b0000100000: o0<=i5;
10'b0001000000: o0<=i6;
10'b0010000000: o0<=i7;
10'b0100000000: o0<=i8;
10'b1000000000: o0<=i9;
default: o0<=8'bxxxxxxxx;
endcase
case(sel1)
10'b0000000001: o1<=i0;
10'b0000000010: o1<=i1;
10'b0000000100: o1<=i2;
10'b0000001000: o1<=i3;
10'b0000010000: o1<=i4;
10'b0000100000: o1<=i5;
10'b0001000000: o1<=i6;
10'b0010000000: o1<=i7;
10'b0100000000: o1<=i8;
10'b1000000000: o1<=i9;
default: o1<=8'bxxxxxxxx;
endcase
case(sel2)
10'b0000000001: o2<=i0;
10'b0000000010: o2<=i1;
10'b0000000100: o2<=i2;
10'b0000001000: o2<=i3;
10'b0000010000: o2<=i4;
10'b0000100000: o2<=i5;
10'b0001000000: o2<=i6;
10'b0010000000: o2<=i7;
10'b0100000000: o2<=i8;
10'b1000000000: o2<=i9;
default: o2<=8'bxxxxxxxx;
endcase
case(sel3)
10'b0000000001: o3<=i0;
10'b0000000010: o3<=i1;
10'b0000000100: o3<=i2;
10'b0000001000: o3<=i3;
10'b0000010000: o3<=i4;
10'b0000100000: o3<=i5;
10'b0001000000: o3<=i6;
10'b0010000000: o3<=i7;
10'b0100000000: o3<=i8;
10'b1000000000: o3<=i9;
default: o3<=8'bxxxxxxxx;
endcase
case(sel4)
10'b0000000001: o4<=i0;
10'b0000000010: o4<=i1;
10'b0000000100: o4<=i2;
10'b0000001000: o4<=i3;
10'b0000010000: o4<=i4;
10'b0000100000: o4<=i5;
10'b0001000000: o4<=i6;
10'b0010000000: o4<=i7;
10'b0100000000: o4<=i8;
10'b1000000000: o4<=i9;
default: o4<=8'bxxxxxxxx;
endcase
case(sel5)
10'b0000000001: o5<=i0;
10'b0000000010: o5<=i1;
10'b0000000100: o5<=i2;
10'b0000001000: o5<=i3;
10'b0000010000: o5<=i4;
10'b0000100000: o5<=i5;
10'b0001000000: o5<=i6;
10'b0010000000: o5<=i7;
10'b0100000000: o5<=i8;
10'b1000000000: o5<=i9;
default: o0<=8'bxxxxxxxx;
endcase
case(sel6)
10'b0000000001: o6<=i0;
10'b0000000010: o6<=i1;
10'b0000000100: o6<=i2;
10'b0000001000: o6<=i3;
10'b0000010000: o6<=i4;
10'b0000100000: o6<=i5;
10'b0001000000: o6<=i6;
10'b0010000000: o6<=i7;
10'b0100000000: o6<=i8;
10'b1000000000: o6<=i9;
default: o1<=8'bxxxxxxxx;
endcase
case(sel7)
10'b0000000001: o7<=i0;
10'b0000000010: o7<=i1;
10'b0000000100: o7<=i2;
10'b0000001000: o7<=i3;
10'b0000010000: o7<=i4;
10'b0000100000: o7<=i5;
10'b0001000000: o7<=i6;
10'b0010000000: o7<=i7;
10'b0100000000: o7<=i8;
10'b1000000000: o7<=i9;
default: o2<=8'bxxxxxxxx;
endcase
case(sel8)
10'b0000000001: o8<=i0;
10'b0000000010: o8<=i1;
10'b0000000100: o8<=i2;
10'b0000001000: o8<=i3;
10'b0000010000: o8<=i4;
10'b0000100000: o8<=i5;
10'b0001000000: o8<=i6;
10'b0010000000: o8<=i7;
10'b0100000000: o8<=i8;
10'b1000000000: o8<=i9;
default: o3<=8'bxxxxxxxx;
endcase
case(sel9)
10'b0000000001: o9<=i0;
10'b0000000010: o9<=i1;
10'b0000000100: o9<=i2;
10'b0000001000: o9<=i3;
10'b0000010000: o9<=i4;
10'b0000100000: o9<=i5;
10'b0001000000: o9<=i6;
10'b0010000000: o9<=i7;
10'b0100000000: o9<=i8;
10'b1000000000: o9<=i9;
default: o4<=8'bxxxxxxxx;
endcase
$display("output local i0 %d, %t", i0, $time);
$display("output local i1 %d, %t", i1, $time);
$display("output local i2 %d, %t", i2, $time);
$display("output local i3 %d, %t", i3, $time);
$display("output local i4 %d, %t", i4, $time);
$display("select0 signal %b, %t", sel0, $time);
$display("select1 signal %b, %t", sel1, $time);
$display("select2 signal %b, %t", sel2, $time);
$display("select3 signal %b, %t", sel3, $time);
$display("select4 signal %b, %t", sel4, $time);


end
//sel1,sel2,sel3,sel4;
//assign o0= (i0&sel0);
//assign o0=((i0&~i1&~i2&~i3&~i4&sel0)|(~i0&i1&~i2&~i3&~i4&sel0)|(~i0&~i1&i2&~i3&~i4&sel0)|(~i0&~i1&~i2&i3&~i4&sel0)|(~i0&~i1&~i2&~i3&i4&sel0));
//assign o1=((i0&~i1&~i2&~i3&~i4&sel1)|(~i0&i1&~i2&~i3&~i4&sel1)|(~i0&~i1&i2&~i3&~i4&sel1)|(~i0&~i1&~i2&i3&~i4&sel1)|(~i0&~i1&~i2&~i3&i4&sel1));
//assign o2=((i0&~i1&~i2&~i3&~i4&sel2)|(~i0&i1&~i2&~i3&~i4&sel2)|(~i0&~i1&i2&~i3&~i4&sel2)|(~i0&~i1&~i2&i3&~i4&sel2)|(~i0&~i1&~i2&~i3&i4&sel2));
//assign o3=((i0&~i1&~i2&~i3&~i4&sel3)|(~i0&i1&~i2&~i3&~i4&sel3)|(~i0&~i1&i2&~i3&~i4&sel3)|(~i0&~i1&~i2&i3&~i4&sel3)|(~i0&~i1&~i2&~i3&i4&sel3));
//assign o4=((i0&~i1&~i2&~i3&~i4&sel4)|(~i0&i1&~i2&~i3&~i4&sel4)|(~i0&~i1&i2&~i3&~i4&sel4)|(~i0&~i1&~i2&i3&~i4&sel4)|(~i0&~i1&~i2&~i3&i4&sel4));
endmodule



