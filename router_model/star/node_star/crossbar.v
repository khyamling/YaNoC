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
      i11,i12,i13,i14,i15,i16,i17,i18,i19, i20,
		i21,i22,i23,i24,i25,i26,i27,i28,i29, i30,
		i31,i32,i33,i34,i35,i36,i37,i38,i39, i40,
		i41,i42,i43,i44,i45,i46,i47,i48,i49, i50,
		i51,i52,i53,i54,i55,i56,i57,i58,i59, i60,
		i61,i62, o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,
		o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,
		o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,
		o31,o32,o33,o34,o35,o36,o37,o38,o39,o40,
		o41,o42,o43,o44,o45,o46,o47,o48,o49,o50,
		o51,o52,o53,o54,o55,o56,o57,o58,o59,o60,
		o61,o62,clk, rst
    );
input clk, rst;
input[15:0] i0,i1,i2,i3,i4,i5,i6,i7,i8,i9, i10, i11,i12,i13,i14,i15,i16,i17,i18,i19, i20, i21,i22,i23,i24,i25,i26,i27,i28,i29, i30;
input[15:0] i31,i32,i33,i34,i35,i36,i37,i38,i39, i40, i41,i42,i43,i44,i45,i46,i47,i48,i49, i50, i51,i52,i53,i54,i55,i56,i57,i58,i59, i60;
input[15:0] i61,i62;
output reg[15:0] o0,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30;
output reg[15:0] o31,o32,o33,o34,o35,o36,o37,o38,o39,o40,o41,o42,o43,o44,o45,o46,o47,o48,o49,o50,o51,o52,o53,o54,o55,o56,o57,o58,o59,o60;
output reg[15:0] o61,o62;
//input[9:0] sel0, sel1,sel2,sel3,sel4, sel5,sel6,sel7,sel8,sel9,sel10;
always @(posedge clk)
begin
 o0<=i62;
 o1<=i61;
 o2<=i60;
 o3<=i59;
 o4<=i58;
 o5<=i57;
 o6<=i56;
 o7<=i55;
 o8<=i54;
 o9<=i53;
 o10<=i52;
 o11<=i51;
 o12<=i50;
 o13<=i49;
 o14<=i48;
 o15<=i47;
 o16<=i46;
 o17<=i45;
 o18<=i44;
 o19<=i43;
 o20<=i42;
 o21<=i41;
 o22<=i40;
 o23<=i39;
 o24<=i38;
 o25<=i37;
 o26<=i36;
 o27<=i35;
 o28<=i34;
 o29<=i33;
 o30<=i32;
 o31<=i31;
 o32<=i30;
 o33<=i29;
 o34<=i28;
 o35<=i27;
 o36<=i26;
 o37<=i25;
 o38<=i24;
 o39<=i23;
 o40<=i22;
 o41<=i21;
 o42<=i20;
 o43<=i19;
 o44<=i18;
 o45<=i17;
 o46<=i16;
 o47<=i15;
 o48<=i14;
 o49<=i13;
 o50<=i12;
 o51<=i11;
 o52<=i10;
 o53<=i9;
 o54<=i8;
 o55<=i7;
 o56<=i6;
 o57<=i5;
 o58<=i4;
 o59<=i3;
 o60<=i2;
 o61<=i1;
 o62<=i0;
 

/* case(sel0)
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

*/
end
//sel1,sel2,sel3,sel4;
//assign o0= (i0&sel0);
//assign o0=((i0&~i1&~i2&~i3&~i4&sel0)|(~i0&i1&~i2&~i3&~i4&sel0)|(~i0&~i1&i2&~i3&~i4&sel0)|(~i0&~i1&~i2&i3&~i4&sel0)|(~i0&~i1&~i2&~i3&i4&sel0));
//assign o1=((i0&~i1&~i2&~i3&~i4&sel1)|(~i0&i1&~i2&~i3&~i4&sel1)|(~i0&~i1&i2&~i3&~i4&sel1)|(~i0&~i1&~i2&i3&~i4&sel1)|(~i0&~i1&~i2&~i3&i4&sel1));
//assign o2=((i0&~i1&~i2&~i3&~i4&sel2)|(~i0&i1&~i2&~i3&~i4&sel2)|(~i0&~i1&i2&~i3&~i4&sel2)|(~i0&~i1&~i2&i3&~i4&sel2)|(~i0&~i1&~i2&~i3&i4&sel2));
//assign o3=((i0&~i1&~i2&~i3&~i4&sel3)|(~i0&i1&~i2&~i3&~i4&sel3)|(~i0&~i1&i2&~i3&~i4&sel3)|(~i0&~i1&~i2&i3&~i4&sel3)|(~i0&~i1&~i2&~i3&i4&sel3));
//assign o4=((i0&~i1&~i2&~i3&~i4&sel4)|(~i0&i1&~i2&~i3&~i4&sel4)|(~i0&~i1&i2&~i3&~i4&sel4)|(~i0&~i1&~i2&i3&~i4&sel4)|(~i0&~i1&~i2&~i3&i4&sel4));
endmodule



