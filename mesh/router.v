`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:11:18 09/14/2016 
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
module router(i00, i01, i02, i03, i04, o00, o01, o02, o03, o04, clk, rst, Write, Read,  r1);
input[3:0] i00, i01, i02, i03, i04;
input clk, rst, Read, Write;
input[3:0] r1;
output[3:0] o00, o01, o02, o03, o04;
wire[4:0] select, select1, select2, select3, select4;
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gn8, gnt9, gnt10, gnt11, gnt12;
wire gnt13, gnt14, gnt15, gnt16, gnt17, gnt18, gnt19, gnt20, gnt21,gnt22, gnt23, gnt24, gnt25;
wire e00, e01, e02, e03, e04, e10, e11, e13, e14, e20, e21, e22, e23, e24, e30, e31, e32, e33, e34, e40, e41, e42, e43, e44;
wire[3:0] L0, L1, L2, L3, L4;
/*fifo_buffer*/
fifo0 f0(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i00), .fifo_out(L0), .empty(), .full(), 
.fifo_counter());
fifo0 f1( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i01), .fifo_out(L1), .empty(), .full(), 
.fifo_counter());
fifo0 f2( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i02), .fifo_out(L2), .empty(), .full(), 
.fifo_counter());
fifo0 f3( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i03), .fifo_out(L3), .empty(), .full(), 
.fifo_counter());
fifo0 f4( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i04), .fifo_out(L4), .empty(), .full(), 
.fifo_counter());
 /*route_logic */
compute0 r0( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04), .r1(r1));
compute0 r2( .Li(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14), .r1(r1));
compute0 r3( .Li(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24), .r1(r1));
compute0 r4( .Li(L3), .port_num_next(), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34), .r1(r1));
compute0 r5( .Li(L4), .port_num_next(), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44), .r1(r1));
/* arbiter */
arbiter0 a0(.gnt04(gnt5), .gnt03(gnt4), .gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1), .req04(e40), 
            .req03(e30), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));
arbiter0 a1(.gnt04(gnt10), .gnt03(gnt9), .gnt02(gnt8), .gnt01(gnt7), .gnt00(gnt6), .req04(e41), 
            .req03(e31), .req02(e21), .req01(e11), .req00(e01), .clk(clk), .rst(rst));
arbiter0 a2(.gnt04(gnt15), .gnt03(gnt14), .gnt02(gnt13), .gnt01(gnt12), .gnt00(gnt11), .req04(e42), 
            .req03(e32), .req02(e22), .req01(e12), .req00(e02), .clk(clk), .rst(rst));
arbiter0 a3(.gnt04(gnt20), .gnt03(gnt19), .gnt02(gnt18), .gnt01(gnt17), .gnt00(gnt16), .req04(e43), 
            .req03(e33), .req02(e23), .req01(e13), .req00(e03), .clk(clk), .rst(rst));
arbiter0 a4(.gnt04(gnt25), .gnt03(gnt24), .gnt02(gnt23), .gnt01(gnt22), .gnt00(gnt21), .req04(e44), 
            .req03(e34), .req02(e24), .req01(e14), .req00(e04), .clk(clk), .rst(rst));
				/*selector */
selector s(.g00(gnt1), .g01(gnt2), .g02(gnt3), .g03(gnt4), .g04(gnt5), .select(select));
selector s1(.g00(gnt6), .g01(gnt7), .g02(gnt8), .g03(gnt9), .g04(gnt10), .select(select1));
selector s2(.g00(gnt11), .g01(gnt12), .g02(gnt13), .g03(gnt14), .g04(gnt15), .select(select2));
selector s3(.g00(gnt16), .g01(gnt17), .g02(gnt18), .g03(gnt19), .g04(gnt20), .select(select3));
selector s4(.g00(gnt21), .g01(gnt22), .g02(gnt23), .g03(gnt24), .g04(gnt25), .select(select4));
           /*crossbar*/
crossbar c1(.i0(i00),. i1(i01), .i2(i02), .i3(i03), .i4(i04),.sel0(select), .sel1(select1), .sel2(select2),
   .sel3(select3),.sel4(select4),.o0(o00), .o1(o01), .o2(o02), .o3(o03), .o4(o04), .clk(clk), .rst(rst));

endmodule
