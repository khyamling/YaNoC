`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:01 08/25/2016 
// Design Name: 
// Module Name:    cross 
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
module cross(req00, req01, req02, req03, req04, req10, req11, req12, req13, req14, req20, req21, req22, req23, 
 req24, req30, req31, req32, req33, req34, req40, req41, req42, req43, req44, i0, i1, i2, i3, i4, o0, o1, o2, o3, o4
    );
input req00, req01, req02, req03, req04;
input req10, req11, req12, req13, req14;
input req20, req21, req22, req23, req24;
input req30, req31, req32, req33, req34;
input req40, req41, req42, req43, req44;
input i0, i1, i2, i3, i4;
output o0, o1, o2, o3, o4;
wire[4:0] select, select1, select2, select3, select4;
selector s(.g00(req00), .g01(req01), .g02(req02), .g03(req03), .g04(req04), .select(select));
selector1 s1(.g10(req10), .g11(req11), .g12(req12), .g13(req13), .g14(req14), .select1(select1));
selector2 s2(.g20(req20), .g21(req21), .g22(req22), .g23(req23), .g24(req24), .select2(select2));
selector3 s3(.g30(req30), .g31(req31), .g32(req32), .g33(req33), .g34(req34), .select3(select3));
selector4 s4(.g40(req40), .g41(req41), .g42(req42), .g43(req43), .g44(req44), .select4(select4));
crossbar c1(.i0(i0),. i1(i1), .i2(i2), .i3(i3), .i4(i4),.sel0(select), .sel1(select1), .sel2(select2),
   .sel3(select3),.sel4(select4),.o0(o0), .o1(o1), .o2(o2), .o3(o3), .o4(o4));
endmodule
