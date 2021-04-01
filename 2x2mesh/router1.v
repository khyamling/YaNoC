`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:50:40 08/31/2016 
// Design Name: 
// Module Name:    router1 
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
module router1(i10, i11, i12, i13, i14, o10, o11, o12, o13, o14, clk, rst, Write, Read
 );
input[7:0] i10, i11, i12, i13, i14;
input clk, rst, Read, Write;
output[7:0] o10, o11, o12, o13, o14;
wire[4:0] select, select1, select2, select3, select4;
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gn8, gnt9, gnt10, gnt11, gnt12;
wire gnt13, gnt14, gnt15, gnt16, gnt17, gnt18, gnt19, gnt20, gnt21,gnt22, gnt23, gnt24, gnt25;
wire e00, e01, e02, e03, e04, e10, e11, e13, e14, e20, e21, e22, e23, e24, e30, e31, e32, e33, e34, e40, e41, e42, e43, e44;
wire[7:0] L0, L1, L2, L3, L4;
/*fifo_buffer*/
fifoR10 f10(.clk(clk), .rst(rst), .write(Write),.data_in(i10), .read(Read), .data_out(L0));
fifoR11 f11(.clk(clk), .rst(rst), .write(Write),.data_in(i11), .read(Read), .data_out(L1));
fifoR12 f12(.clk(clk), .rst(rst), .write(Write),.data_in(i12), .read(Read), .data_out(L2));
fifoR13 f13(.clk(clk), .rst(rst), .write(Write),.data_in(i13), .read(Read), .data_out(L3));
fifoR14 f14(.clk(clk), .rst(rst), .write(Write),.data_in(i14), .read(Read), .data_out(L4));
 /*route_logic */
computeR10 r10( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04));
computeR11 r12( .Ei(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14));
computeR12 r13( .Wi(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24));
computeR13 r14( .Ni(L3), .port_num_next(), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34));
computeR14 r15( .Si(L4), .port_num_next(), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44));
/* arbiter */
arbiterR10 a10(.gnt04(gnt5), .gnt03(gnt4), .gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1), .req04(e40), 
            .req03(e30), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));
arbiterR11 a11(.gnt14(gnt10), .gnt13(gnt9), .gnt12(gnt8), .gnt11(gnt7), .gnt10(gnt6), .req14(e41), 
            .req13(e31), .req12(e21), .req11(e11), .req10(e01), .clk(clk), .rst(rst));
arbiterR12 a12(.gnt24(gnt15), .gnt23(gnt14), .gnt22(gnt13), .gnt21(gnt12), .gnt20(gnt11), .req24(e42), 
            .req23(e32), .req22(e22), .req21(e12), .req20(e02), .clk(clk), .rst(rst));
arbiterR13 a13(.gnt34(gnt20), .gnt33(gnt19), .gnt32(gnt18), .gnt31(gnt17), .gnt30(gnt16), .req34(e43), 
            .req33(e33), .req32(e23), .req31(e13), .req30(e03), .clk(clk), .rst(rst));
arbiterR14 a14(.gnt44(gnt25), .gnt43(gnt24), .gnt42(gnt23), .gnt41(gnt22), .gnt40(gnt21), .req44(e44), 
            .req43(e34), .req42(e24), .req41(e14), .req40(e04), .clk(clk), .rst(rst));
				/*selector */
selectorR10 s10(.g00(gnt1), .g01(gnt2), .g02(gnt3), .g03(gnt4), .g04(gnt5), .select(select));
selectorR11 s11(.g10(gnt6), .g11(gnt7), .g12(gnt8), .g13(gnt9), .g14(gnt10), .select1(select1));
selectorR12 s12(.g20(gnt11), .g21(gnt12), .g22(gnt13), .g23(gnt14), .g24(gnt15), .select2(select2));
selectorR13 s13(.g30(gnt16), .g31(gnt17), .g32(gnt18), .g33(gnt19), .g34(gnt20), .select3(select3));
selectorR14 s14(.g40(gnt21), .g41(gnt22), .g42(gnt23), .g43(gnt24), .g44(gnt25), .select4(select4));
           /*crossbar*/
crossbarR10 c10(.i0(i10),. i1(i11), .i2(i12), .i3(i13), .i4(i14),.sel0(select), .sel1(select1), .sel2(select2),
   .sel3(select3),.sel4(select4),.o0(o10), .o1(o11), .o2(o12), .o3(o13), .o4(o14), .clk(clk));


endmodule
