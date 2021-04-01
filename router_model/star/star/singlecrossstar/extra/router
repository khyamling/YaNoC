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
module router(i00, i01, i02, o00, o01, o02, clk, rst, Write, Read
 );
input[7:0] i00, i01, i02;
input clk, rst, Read, Write;
output[7:0] o00, o01, o02;
wire[4:0] select, select1, select2;
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gn8, gnt9;
wire e00, e01, e02, e10, e11, e12, e20, e21, e22;
wire[7:0] L0, L1, L2;
/*fifo_buffer*/
fifo0 f0(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i00), .fifo_out(L0), .empty(), .full(), 
.fifo_counter());
fifo0 f1( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i01), .fifo_out(L1), .empty(), .full(), 
.fifo_counter());
fifo0 f2( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i02), .fifo_out(L2), .empty(), .full(), 
.fifo_counter());

 /*route_logic */
compute0 r0( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02));
compute0 r2( .Li(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12));
compute0 r3( .Li(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22));

/* arbiter */
arbiter0 a0(.gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));
arbiter0 a1( .gnt02(gnt6), .gnt01(gnt5), .gnt00(gnt4), .req02(e21), .req01(e11), .req00(e01), .clk(clk), .rst(rst));
arbiter0 a2(.gnt02(gnt9), .gnt01(gnt8), .gnt00(gnt7), .req02(e22), .req01(e12), .req00(e02), .clk(clk), .rst(rst));

				/*selector */
selector s(.g00(gnt1), .g01(gnt2), .g02(gnt3), .select(select));
selector s1(.g00(gnt4), .g01(gnt5), .g02(gnt6),  .select(select1));
selector s2(.g00(gnt7), .g01(gnt8), .g02(gnt9), .select(select2));


           /*crossbar*/
crossbar c1(.i0(i00),. i1(i01), .i2(i02), .sel0(select), .sel1(select1), .sel2(select2),
   .o0(o00), .o1(o01), .o2(o02), .clk(clk));

endmodule
