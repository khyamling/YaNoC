`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:48 04/25/2017 
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
module router( //sel0, sel1, sel2,sel3,sel4,
		o00, o01, o02, o03, o04, i00, i01, i02, i03, i04,
		clk, rst, Write
    );
input wire[31:0]  i00, i01, i02, i03, i04;
output wire[31:0] o00,o01,o02,o03,o04;
//input[7:0] r1;
parameter file="";
//input[4:0] sel0, sel1, sel2, sel3, sel4;
input clk, rst, Write; //, Read;
wire[31:0] L0, L1, L2, L3, L4;
wire[3:0] k1, k2, k3,k4, k5;
wire e00, e01, e02, e03, e04, e10, e11, e12, e13, e14, e20;  //wire from output RC to Arbitration input
wire e21, e22, e23, e24, e30, e31, e32, e33, e34, e40, e41, e42, e43, e44;  //wire from output RC to Arbitration input
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gnt8, gnt9, gnt10, gnt11, gnt12;  //wire from Arbitration output to select input
wire gnt13, gnt14, gnt15, gnt16, gnt17, gnt18, gnt19, gnt20, gnt21,gnt22, gnt23, gnt24, gnt25; //wire from Arbitration output to select input
wire[4:0] select, select1, select2, select3, select4; //wire from select output to crossbar input
wire e1,e2,e3,e4,e5; //enable signal from crossbar to fifo
//(* KEEP = "TRUE" *)wire flag1, flag2, fla3, flag4, flag5;
//(* KEEP = "TRUE" *) wire flag6, flag7, fla8, flag9, flag10;
//wire enable6,enable7,enable8,enable9, enable10;
//(* keep_hierarchy = "yes" *) lfsr l4(.clk(clk), .reset(reset), .out1(in5));
/* fifo queue */
(* keep_hierarchy = "yes" *)fifo f0(.rst_n(rst), .clk(clk), .rd_en(e1), .wr_en(Write), .fifo_in(i00), .fifo_out(L0), .fifo_out1(k1)); 
(* keep_hierarchy = "yes" *)fifo f1(.rst_n(rst), .clk(clk), .rd_en(e2), .wr_en(Write), .fifo_in(i01), .fifo_out(L1), .fifo_out1(k2));
(* keep_hierarchy = "yes" *)fifo f2(.rst_n(rst), .clk(clk), .rd_en(e3), .wr_en(Write), .fifo_in(i02), .fifo_out(L2), .fifo_out1(k3));
(* keep_hierarchy = "yes" *)fifo f3(.rst_n(rst), .clk(clk), .rd_en(e4), .wr_en(Write), .fifo_in(i03), .fifo_out(L3), .fifo_out1(k4)); 
(* keep_hierarchy = "yes" *)fifo f4(.rst_n(rst), .clk(clk), .rd_en(e5), .wr_en(Write), .fifo_in(i04), .fifo_out(L4), .fifo_out1(k5)); 
/* route compute logic */ 
(* keep_hierarchy = "yes" *)routec #(.file(file)) r0( .Li(k1), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04), .clk(clk), .reset(rst)); 
(* keep_hierarchy = "yes" *)routec #(.file(file)) r5( .Li(k2), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14), .clk(clk), .reset(rst));
(* keep_hierarchy = "yes" *)routec #(.file(file)) r2( .Li(k3), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24), .clk(clk), .reset(rst));
(* keep_hierarchy = "yes" *)routec #(.file(file))  r3( .Li(k4), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34), .clk(clk), .reset(rst));
(* keep_hierarchy = "yes" *)routec #(.file(file)) r4( .Li(k5), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44), .clk(clk), .reset(rst)); 
/* arbiter */ 
(* keep_hierarchy = "yes" *)arbiter a0(.gnt04(gnt5), .gnt03(gnt4), .gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1), .req04(e40), 
            .req03(e30), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));
(* keep_hierarchy = "yes" *)arbiter a1(.gnt04(gnt10), .gnt03(gnt9), .gnt02(gnt8), .gnt01(gnt7), .gnt00(gnt6), .req04(e41), 
            .req03(e31), .req02(e21), .req01(e11), .req00(e01), .clk(clk), .rst(rst));
(* keep_hierarchy = "yes" *)arbiter a2(.gnt04(gnt15), .gnt03(gnt14), .gnt02(gnt13), .gnt01(gnt12), .gnt00(gnt11), .req04(e42), 
            .req03(e32), .req02(e22), .req01(e12), .req00(e02), .clk(clk), .rst(rst));
(* keep_hierarchy = "yes" *)arbiter a3(.gnt04(gnt20), .gnt03(gnt19), .gnt02(gnt18), .gnt01(gnt17), .gnt00(gnt16), .req04(e43), 
            .req03(e33), .req02(e23), .req01(e13), .req00(e03), .clk(clk), .rst(rst));
(* keep_hierarchy = "yes" *)arbiter a4(.gnt04(gnt25), .gnt03(gnt24), .gnt02(gnt23), .gnt01(gnt22), .gnt00(gnt21), .req04(e44), 
            .req03(e34), .req02(e24), .req01(e14), .req00(e04), .clk(clk), .rst(rst)); 
/* selector */  
(* keep_hierarchy = "yes" *)selector s(.g00(gnt1), .g01(gnt2), .g02(gnt3), .g03(gnt4), .g04(gnt5), .select(select), .clk(clk),
          .reset(rst));
(* keep_hierarchy = "yes" *)selector s1(.g00(gnt6), .g01(gnt7), .g02(gnt8), .g03(gnt9), .g04(gnt10), .select(select1),.clk(clk),
          .reset(rst));
(* keep_hierarchy = "yes" *)selector s2(.g00(gnt11), .g01(gnt12), .g02(gnt13), .g03(gnt14), .g04(gnt15), .select(select2), .clk(clk),
          .reset(rst));
(* keep_hierarchy = "yes" *)selector s3(.g00(gnt16), .g01(gnt17), .g02(gnt18), .g03(gnt19), .g04(gnt20), .select(select3), .clk(clk), 
        .reset(rst));
(* keep_hierarchy = "yes" *)selector s4(.g00(gnt21), .g01(gnt22), .g02(gnt23), .g03(gnt24), .g04(gnt25), .select(select4), .clk(clk),
        .reset(rst));	 



(* keep_hierarchy = "yes" *)crossbar c1(.i0(L0),.i1(L1), .i2(L2), .i3(L3), .i4(L4), .sel0(select), .sel1(select1), 
.sel2(select2), .sel3(select3),.sel4(select4), .o0(o00), .o1(o01), .o2(o02), .o3(o03), .o4(o04), .clk(clk),
 .reset(rst), .enable0(e1), .enable1(e2), .enable2(e3), .enable3(e4), .enable4(e5) 
// .enable6(enable6), .enable7(enable7), .enable8(enable8), .enable9(enable9), .enable10(enable10),
// .flag6(flag6), .flag7(flag7), .flag8(flag8), .flag9(flag9), .flag10(flag10)
);

endmodule
