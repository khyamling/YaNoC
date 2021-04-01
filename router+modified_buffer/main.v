`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:12:18 09/16/2016 
// Design Name: 
// Module Name:    main 
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
module main( rst_n, clk, out, out1, out2, out3, out4, rd_en, wr_en, enable
    );
input rst_n, clk;
input rd_en, wr_en, enable;
output [7:0] out, out1, out2, out3, out4;
wire [7:0] r1, r2, r3, r4, r5;
wire[4:0] select, select1, select2, select3, select4;
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gn8, gnt9, gnt10, gnt11, gnt12;
wire gnt13, gnt14, gnt15, gnt16, gnt17, gnt18, gnt19, gnt20, gnt21,gnt22, gnt23, gnt24, gnt25;
wire e00, e01, e02, e03, e04, e10, e11, e13, e14, e20, e21, e22, e23, e24, e30, e31, e32, 
e33, e34, e40, e41, e42, e43, e44;
wire[7:0] L0, L1, L2, L3, L4;

traffic t0(.enable(enable), .clk(clk), .reset(rst_n), .out(r1));
traffic1 t1(.enable(enable), .clk(clk), .reset(rst_n), .out(r2));
traffic2 t2(.enable(enable), .clk(clk), .reset(rst_n), .out(r3));
traffic3 t3(.enable(enable), .clk(clk), .reset(rst_n), .out(r4));
traffic4 t4(.enable(enable), .clk(clk), .reset(rst_n), .out(r5));
fifo f0( .rst_n(rst_n), .clk(clk), .rd_en(rd_en), .wr_en(wr_en), .fifo_in(r1), .fifo_out(L0), .empty(), .full(), 
.fifo_counter());

fifo1 f1(.rst_n(rst_n), .clk(clk), .rd_en(rd_en), .wr_en(wr_en), .fifo_in(r2), .fifo_out(L1), .empty(), .full(), 
.fifo_counter());
fifo2 f2(.rst_n(rst_n), .clk(clk), .rd_en(rd_en), .wr_en(wr_en), .fifo_in(r3), .fifo_out(L2), .empty(), .full(), 
.fifo_counter());
fifo3 f3(.rst_n(rst_n), .clk(clk), .rd_en(rd_en), .wr_en(wr_en), .fifo_in(r4), .fifo_out(L3), .empty(), .full(), 
.fifo_counter());
fifo4 f4(.rst_n(rst_n), .clk(clk), .rd_en(rd_en), .wr_en(wr_en), .fifo_in(r5), .fifo_out(L4), .empty(), .full(), 
.fifo_counter());
 /*route_logic */
compute r10( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04));
compute1 r12( .Ei(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14));
compute2 r13( .Wi(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24));
compute3 r14( .Ni(L3), .port_num_next(), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34));
compute4 r15( .Si(L4), .port_num_next(), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44));
/* arbiter */
arbiter0 a0(.gnt04(gnt5), .gnt03(gnt4), .gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1), .req04(e40), 
            .req03(e30), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));
arbiter1 a1(.gnt14(gnt10), .gnt13(gnt9), .gnt12(gnt8), .gnt11(gnt7), .gnt10(gnt6), .req14(e41), 
            .req13(e31), .req12(e21), .req11(e11), .req10(e01), .clk(clk), .rst(rst));
arbiter2 a2(.gnt24(gnt15), .gnt23(gnt14), .gnt22(gnt13), .gnt21(gnt12), .gnt20(gnt11), .req24(e42), 
            .req23(e32), .req22(e22), .req21(e12), .req20(e02), .clk(clk), .rst(rst));
arbiter3 a3(.gnt34(gnt20), .gnt33(gnt19), .gnt32(gnt18), .gnt31(gnt17), .gnt30(gnt16), .req34(e43), 
            .req33(e33), .req32(e23), .req31(e13), .req30(e03), .clk(clk), .rst(rst));
arbiter4 a4(.gnt44(gnt25), .gnt43(gnt24), .gnt42(gnt23), .gnt41(gnt22), .gnt40(gnt21), .req44(e44), 
            .req43(e34), .req42(e24), .req41(e14), .req40(e04), .clk(clk), .rst(rst));
				/*selector */
selector s(.g00(gnt1), .g01(gnt2), .g02(gnt3), .g03(gnt4), .g04(gnt5), .select(select));
selector1 s1(.g10(gnt6), .g11(gnt7), .g12(gnt8), .g13(gnt9), .g14(gnt10), .select1(select1));
selector2 s2(.g20(gnt11), .g21(gnt12), .g22(gnt13), .g23(gnt14), .g24(gnt15), .select2(select2));
selector3 s3(.g30(gnt16), .g31(gnt17), .g32(gnt18), .g33(gnt19), .g34(gnt20), .select3(select3));
selector4 s4(.g40(gnt21), .g41(gnt22), .g42(gnt23), .g43(gnt24), .g44(gnt25), .select4(select4));
           /*crossbar*/
crossbar c1(.i0(L0),. i1(L1), .i2(L2), .i3(L3), .i4(L4),.sel0(select), .sel1(select1), .sel2(select2),
   .sel3(select3),.sel4(select4),.o0(out), .o1(out1), .o2(out2), .o3(out3), .o4(out4), .clk(clk));




endmodule
