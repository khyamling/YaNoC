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
 req24, req30, req31, req32, req33, req34, req40, req41, req42, req43, req44, i0, i1, i2, i3, i4, o0, o1, o2, o3, o4, clk, rst
    );
input req00, req01, req02, req03, req04;
input req10, req11, req12, req13, req14;
input req20, req21, req22, req23, req24;
input req30, req31, req32, req33, req34;
input req40, req41, req42, req43, req44;
input i0, i1, i2, i3, i4;
input clk, rst;
output o0, o1, o2, o3, o4;
wire[4:0] select, select1, select2, select3, select4;
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gn8, gnt9, gnt10, gnt11, gnt12;
wire gnt13, gnt14, gnt15, gnt16, gnt17, gnt18, gnt19, gnt20, gnt21,gnt22, gnt23, gnt24, gnt25;
arbiter0 a0(.gnt04(gnt5), .gnt03(gnt4), .gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1), .req04(req04), 
            .req03(req03), .req02(req02), .req01(req01), .req00(req00), .clk(clk), .rst(rst));
arbiter1 a1(.gnt14(gnt10), .gnt13(gnt9), .gnt12(gnt8), .gnt11(gnt7), .gnt10(gnt6), .req14(req14), 
            .req13(req13), .req12(req12), .req11(req11), .req10(req10), .clk(clk), .rst(rst));
arbiter2 a2(.gnt24(gnt15), .gnt23(gnt14), .gnt22(gnt13), .gnt21(gnt12), .gnt20(gnt11), .req24(req24), 
            .req23(req23), .req22(req22), .req21(req21), .req20(req20), .clk(clk), .rst(rst));
arbiter3 a3(.gnt34(gnt20), .gnt33(gnt19), .gnt32(gnt18), .gnt31(gnt17), .gnt30(gnt16), .req34(req34), 
            .req33(req33), .req32(req32), .req31(req31), .req30(req30), .clk(clk), .rst(rst));
arbiter4 a4(.gnt44(gnt25), .gnt43(gnt24), .gnt42(gnt23), .gnt41(gnt22), .gnt40(gnt21), .req44(req44), 
            .req43(req43), .req42(req42), .req41(req41), .req40(req40), .clk(clk), .rst(rst));
selector s(.g00(gnt1), .g01(gnt2), .g02(gnt3), .g03(gnt4), .g04(gnt5), .select(select));
selector1 s1(.g10(gnt6), .g11(gnt7), .g12(gnt8), .g13(gnt9), .g14(gnt10), .select1(select1));
selector2 s2(.g20(gnt11), .g21(gnt12), .g22(gnt13), .g23(gnt14), .g24(gnt15), .select2(select2));
selector3 s3(.g30(gnt16), .g31(gnt17), .g32(gnt18), .g33(gnt19), .g34(gnt20), .select3(select3));
selector4 s4(.g40(gnt21), .g41(gnt22), .g42(gnt23), .g43(gnt24), .g44(gnt25), .select4(select4));
crossbar c1(.i0(i0),. i1(i1), .i2(i2), .i3(i3), .i4(i4),.sel0(select), .sel1(select1), .sel2(select2),
   .sel3(select3),.sel4(select4),.o0(o0), .o1(o1), .o2(o2), .o3(o3), .o4(o4), .clk(clk));

endmodule
