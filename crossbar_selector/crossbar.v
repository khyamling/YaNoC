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
module crossbar(i0,i1,i2,i3,i4,
      sel0, sel1,sel2,sel3,sel4,
		o0,o1,o2,o3,o4
    );
input i0,i1,i2,i3,i4;
output reg o0,o1,o2,o3,o4;
input[4:0] sel0, sel1, sel2, sel3, sel4;
always @(i0 or i1 or i2 or i3 or i4 or sel0 or sel1 or sel2 or sel3 or sel4)
begin
case(sel0)
5'b00001: o0<=i0;
5'b00010: o0<=i1;
5'b00100: o0<=i2;
5'b01000: o0<=i3;
5'b10000: o0<=i4;
default: o0<=5'bxxxxx;
endcase
case(sel1)
5'b00001: o1<=i0;
5'b00010: o1<=i1;
5'b00100: o1<=i2;
5'b01000: o1<=i3;
5'b10000: o1<=i4;
default: o1<=5'bxxxxx;
endcase
case(sel2)
5'b00001: o2<=i0;
5'b00010: o2<=i1;
5'b00100: o2<=i2;
5'b01000: o2<=i3;
5'b10000: o2<=i4;
default: o2<=5'bxxxxx;
endcase
case(sel3)
5'b00001: o3<=i0;
5'b00010: o3<=i1;
5'b00100: o3<=i2;
5'b01000: o3<=i3;
5'b10000: o3<=i4;
default: o3<=5'bxxxxx;
endcase
case(sel4)
5'b00001: o4<=i0;
5'b00010: o4<=i1;
5'b00100: o4<=i2;
5'b01000: o4<=i3;
5'b10000: o4<=i4;
default: o4<=5'bxxxxx;
endcase
end
//sel1,sel2,sel3,sel4;
//assign o0= (i0&sel0);
//assign o0=((i0&~i1&~i2&~i3&~i4&sel0)|(~i0&i1&~i2&~i3&~i4&sel0)|(~i0&~i1&i2&~i3&~i4&sel0)|(~i0&~i1&~i2&i3&~i4&sel0)|(~i0&~i1&~i2&~i3&i4&sel0));
//assign o1=((i0&~i1&~i2&~i3&~i4&sel1)|(~i0&i1&~i2&~i3&~i4&sel1)|(~i0&~i1&i2&~i3&~i4&sel1)|(~i0&~i1&~i2&i3&~i4&sel1)|(~i0&~i1&~i2&~i3&i4&sel1));
//assign o2=((i0&~i1&~i2&~i3&~i4&sel2)|(~i0&i1&~i2&~i3&~i4&sel2)|(~i0&~i1&i2&~i3&~i4&sel2)|(~i0&~i1&~i2&i3&~i4&sel2)|(~i0&~i1&~i2&~i3&i4&sel2));
//assign o3=((i0&~i1&~i2&~i3&~i4&sel3)|(~i0&i1&~i2&~i3&~i4&sel3)|(~i0&~i1&i2&~i3&~i4&sel3)|(~i0&~i1&~i2&i3&~i4&sel3)|(~i0&~i1&~i2&~i3&i4&sel3));
//assign o4=((i0&~i1&~i2&~i3&~i4&sel4)|(~i0&i1&~i2&~i3&~i4&sel4)|(~i0&~i1&i2&~i3&~i4&sel4)|(~i0&~i1&~i2&i3&~i4&sel4)|(~i0&~i1&~i2&~i3&i4&sel4));
endmodule



