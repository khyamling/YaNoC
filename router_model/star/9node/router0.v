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
module router0(i000, i010, i001, i011, i002, i012, i003, i013, i004, i014, i005, i015, i006, i016, i007, i017, i008, i018, 
i009, i019, clk, rst, Write, Read
 );
input[7:0] i000, i001, i002,i003, i004, i005, i006, i007, i008, i009;
input clk, rst, Read, Write;
output[7:0] i010, i011, i012,i013, i014, i015, i016, i017, i018, i019;
wire[7:0] L0, L1, L2, L3, L4, L5, L6, L7, L8, L9;
wire e00, e01, e02, e03, e04, e05,  e07, e08, e09, e10, e11, e12, e13, e14, e15,  e17, e18, e19;
wire e20, e21, e22, e23, e24, e25,  e27, e28, e29, e30, e31, e32, e33, e34, e35,  e37, e38, e39;
wire e40, e41, e42, e43, e44, e45,  e47, e48, e49, e50, e51, e52, e53, e54, e55,  e57, e58, e59;
wire e60, e61, e62, e63, e64, e65,  e67, e68, e69, e70, e71, e72, e73, e74, e75,  e77, e78, e79;
wire e80, e81, e82, e83, e84, e85,  e87, e88, e89, e90, e91, e92, e93, e94, e95,  e97, e98, e99;
wire gnt1, gnt2, gnt3, gnt4, gnt5, gnt6, gnt7, gn8, gnt9, gnt10, gnt11, gnt12, gnt13, gnt14, gnt15, gnt16, gnt17, gn18, gnt19, gnt20;
wire gnt21, gnt22, gnt23, gnt24, gnt25, gnt26, gnt27, gn28, gnt29, gnt30, gnt31, gnt32, gnt33, gnt34, gnt35, gnt36, gnt37, gn38, gnt39, gnt40;
wire gnt41, gnt42, gnt43, gnt44, gnt45, gnt46, gnt47, gn48, gnt49,gnt50, gnt51, gnt52, gnt53, gnt54, gnt55, gnt56, gnt57, gn58, gnt59, gnt60;
wire gnt61, gnt62, gnt63, gnt64, gnt65, gnt66, gnt67, gn68, gnt69,gnt70, gnt71, gnt72, gnt73, gnt74, gnt75, gnt76, gnt77, gn78, gnt79, gnt80;
wire gnt81, gnt82, gnt83, gnt84, gnt85, gnt86, gnt87, gn88, gnt89,gnt90, gnt91, gnt92, gnt93, gnt94, gnt95, gnt96, gnt97, gn98, gnt99, gnt100;

wire[9:0] select1, select2, select3,select4, select5, select6,select7, select8, select9;

/*fifo_buffer*/
fifo f0(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i000), .fifo_out(L0), .empty(), .full(), 
.fifo_counter());
fifo f1( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i001), .fifo_out(L1), .empty(), .full(), 
.fifo_counter());
fifo f2( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i002), .fifo_out(L2), .empty(), .full(), 
.fifo_counter());
fifo f3(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i003), .fifo_out(L3), .empty(), .full(), 
.fifo_counter());
fifo f4( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i004), .fifo_out(L4), .empty(), .full(), 
.fifo_counter());
fifo f5( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i005), .fifo_out(L5), .empty(), .full(), 
.fifo_counter());
fifo f6(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i006), .fifo_out(L6), .empty(), .full(), 
.fifo_counter());
fifo f7( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i007), .fifo_out(L7), .empty(), .full(), 
.fifo_counter());
fifo f8( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i008), .fifo_out(L8), .empty(), .full(), 
.fifo_counter());
fifo f9( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i009), .fifo_out(L9), .empty(), .full(), 
.fifo_counter());

 /*route_logic */
compute r0( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04), .e6(e05), .e7(e06), .e8(e07), .e9(e08), .e10(e09));
compute r1( .Li(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14), .e6(e15), .e7(e16), .e8(e17), .e9(e18), .e10(e19));
compute r2( .Li(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24), .e6(e25), .e7(e26), .e8(e27), .e9(e28), .e10(e29));
compute r3( .Li(L3), .port_num_next(), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34), .e6(e35), .e7(e36), .e8(e37), .e9(e38), .e10(e39));
compute r4( .Li(L4), .port_num_next(), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44), .e6(e45), .e7(e46), .e8(e47), .e9(e48), .e10(e49));
compute r5( .Li(L5), .port_num_next(), .e1(e50), .e2(e51), .e3(e52), .e4(e53), .e5(e54), .e6(e55), .e7(e56), .e8(e57), .e9(e58), .e10(e59));
compute r6( .Li(L6), .port_num_next(), .e1(e60), .e2(e61), .e3(e62), .e4(e63), .e5(e64), .e6(e65), .e7(e66), .e8(e67), .e9(e68), .e10(e69));
compute r7( .Li(L7), .port_num_next(), .e1(e70), .e2(e71), .e3(e72),. e4(e73), .e5(e74), .e6(e75), .e7(e76), .e8(e77), .e9(e78), .e10(e79));
compute r8( .Li(L8), .port_num_next(), .e1(e80), .e2(e81), .e3(e82), .e4(e83), .e5(e84), .e6(e85), .e7(e86), .e8(e87), .e9(e88), .e10(e89));
compute r9( .Li(L9), .port_num_next(), .e1(e90), .e2(e91), .e3(e92), .e4(e93), .e5(e94), .e6(e95), .e7(e96), .e8(e97), .e9(e98), .e10(e99));

/* arbiter */
arbiter a0(.gnt09(gnt10), .gnt08(gnt9), .gnt07(gnt8), .gnt06(gnt7),  .gnt05(gnt6), .gnt04(gnt5), .gnt03(gnt4),  .gnt02(gnt3), .gnt01(gnt2), .gnt00(gnt1),  
.req09(e90), .req08(e80),  .req07(e70), .req06(e60), .req05(e50), .req04(e40), .req03(e30), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));
arbiter a1(.gnt09(gnt20), .gnt08(gnt19), .gnt07(gnt18), .gnt06(gnt17),  .gnt05(gnt16), .gnt04(gnt15), .gnt03(gnt14),  .gnt02(gnt13), .gnt01(gnt12), .gnt00(gnt11),  
.req09(e91), .req08(e81),  .req07(e71), .req06(e61), .req05(e51), .req04(e41), .req03(e31), .req02(e21), .req01(e11), .req00(e01), .clk(clk), .rst(rst));
arbiter a2(.gnt09(gnt30), .gnt08(gnt29), .gnt07(gnt28), .gnt06(gnt27),  .gnt05(gnt26), .gnt04(gnt25), .gnt03(gnt24),  .gnt02(gnt23), .gnt01(gnt22), .gnt00(gnt21),  
.req09(e92), .req08(e82),  .req07(e72), .req06(e62), .req05(e52), .req04(e42), .req03(e32), .req02(e22), .req01(e12), .req00(e02), .clk(clk), .rst(rst));
arbiter a3(.gnt09(gnt40), .gnt08(gnt39), .gnt07(gnt38), .gnt06(gnt37),  .gnt05(gnt36), .gnt04(gnt35), .gnt03(gnt34),  .gnt02(gnt33), .gnt01(gnt32), .gnt00(gnt31),  
.req09(e93), .req08(e83),  .req07(e73), .req06(e63), .req05(e53), .req04(e43), .req03(e33), .req02(e23), .req01(e13), .req00(e03), .clk(clk), .rst(rst));
arbiter a4(.gnt09(gnt50), .gnt08(gnt49), .gnt07(gnt48), .gnt06(gnt47),  .gnt05(gnt46), .gnt04(gnt45), .gnt03(gnt44),  .gnt02(gnt43), .gnt01(gnt42), .gnt00(gnt41),  
.req09(e94), .req08(e84),  .req07(e74), .req06(e64), .req05(e54), .req04(e44), .req03(e34), .req02(e24), .req01(e14), .req00(e04), .clk(clk), .rst(rst));
arbiter a5(.gnt09(gnt60), .gnt08(gnt59), .gnt07(gnt58), .gnt06(gnt57),  .gnt05(gnt56), .gnt04(gnt55), .gnt03(gnt54),  .gnt02(gnt53), .gnt01(gnt52), .gnt00(gnt51),  
.req09(e95), .req08(e85),  .req07(e75), .req06(e65), .req05(e55), .req04(e45), .req03(e35), .req02(e25), .req01(e15), .req00(e05), .clk(clk), .rst(rst));
arbiter a6(.gnt09(gnt70), .gnt08(gnt69), .gnt07(gnt68), .gnt06(gnt67),  .gnt05(gnt66), .gnt04(gnt65), .gnt03(gnt64),  .gnt02(gnt63), .gnt01(gnt62), .gnt00(gnt61),  
.req09(e96), .req08(e86),  .req07(e76), .req06(e66), .req05(e56), .req04(e46), .req03(e36), .req02(e26), .req01(e16), .req00(e06), .clk(clk), .rst(rst));
arbiter a7(.gnt09(gnt80), .gnt08(gnt79), .gnt07(gnt78), .gnt06(gnt77),  .gnt05(gnt76), .gnt04(gnt75), .gnt03(gnt74),  .gnt02(gnt73), .gnt01(gnt72), .gnt00(gnt71),  
.req09(e97), .req08(e87),  .req07(e77), .req06(e67), .req05(e57), .req04(e47), .req03(e37), .req02(e27), .req01(e17), .req00(e07), .clk(clk), .rst(rst));
arbiter a8(.gnt09(gnt90), .gnt08(gnt89), .gnt07(gnt88), .gnt06(gnt87),  .gnt05(gnt86), .gnt04(gnt85), .gnt03(gnt84),  .gnt02(gnt83), .gnt01(gnt82), .gnt00(gnt81),  
.req09(e98), .req08(e88),  .req07(e78), .req06(e68), .req05(e58), .req04(e48), .req03(e38), .req02(e28), .req01(e18), .req00(e08), .clk(clk), .rst(rst));
arbiter a9(.gnt09(gnt100), .gnt08(gnt99), .gnt07(gnt98), .gnt06(gnt97),  .gnt05(gnt96), .gnt04(gnt95), .gnt03(gnt94),  .gnt02(gnt93), .gnt01(gnt92), .gnt00(gnt91),  
.req09(e99), .req08(e89),  .req07(e79), .req06(e69), .req05(e59), .req04(e49), .req03(e39), .req02(e29), .req01(e19), .req00(e09), .clk(clk), .rst(rst));
				/*selector */
selector s0(.g00(gnt1), .g01(gnt2), .g02(gnt3), .g03(gnt4), .g04(gnt5), .g05(gnt6), .g06(gnt7), .g07(gnt8), .g08(gnt9), .g09(gnt10), .select(select0));
selector s1(.g00(gnt11), .g01(gnt12), .g02(gnt13), .g03(gnt14), .g04(gnt15), .g05(gnt16), .g06(gnt17), .g07(gnt18), .g08(gnt19), .g09(gnt20), .select(select1));
selector s2(.g00(gnt21), .g01(gnt22), .g02(gnt23), .g03(gnt24), .g04(gnt25), .g05(gnt26), .g06(gnt27), .g07(gnt28), .g08(gnt29), .g09(gnt30), .select(select2));
selector s3(.g00(gnt31), .g01(gnt32), .g02(gnt33), .g03(gnt34), .g04(gnt35), .g05(gnt36), .g06(gnt37), .g07(gnt38), .g08(gnt39), .g09(gnt40), .select(select3));
selector s4(.g00(gnt41), .g01(gnt42), .g02(gnt43), .g03(gnt44), .g04(gnt45), .g05(gnt46), .g06(gnt47), .g07(gnt48), .g08(gnt49), .g09(gnt50), .select(select4));
selector s5(.g00(gnt51), .g01(gnt52), .g02(gnt53), .g03(gnt54), .g04(gnt55), .g05(gnt56), .g06(gnt57), .g07(gnt58), .g08(gnt59), .g09(gnt60), .select(select5));
selector s6(.g00(gnt61), .g01(gnt62), .g02(gnt63), .g03(gnt64), .g04(gnt65), .g05(gnt66), .g06(gnt67), .g07(gnt68), .g08(gnt69), .g09(gnt70), .select(select6));
selector s7(.g00(gnt71), .g01(gnt72), .g02(gnt73), .g03(gnt74), .g04(gnt75), .g05(gnt76), .g06(gnt77), .g07(gnt78), .g08(gnt79), .g09(gnt80), .select(select7));
selector s8(.g00(gnt81), .g01(gnt82), .g02(gnt83), .g03(gnt84), .g04(gnt85), .g05(gnt86), .g06(gnt87), .g07(gnt88), .g08(gnt89), .g09(gnt90), .select(select8));
selector s9(.g00(gnt91), .g01(gnt92), .g02(gnt93), .g03(gnt94), .g04(gnt95), .g05(gnt96), .g06(gnt97), .g07(gnt98), .g08(gnt99), .g09(gnt100), .select(select9));


           /*crossbar*/
crossbar c1(.i0(i000), .i1(i001), .i2(i002), .i3(i003), .i4(i004), .i5(i005), .i6(i006), .i7(i007), .i8(i008), .i9(i009),
.sel0(select0), .sel1(select1), .sel2(select2), .sel3(select3), .sel4(select4), .sel5(select5), .sel6(select6), .sel7(select7), .sel8(select8),.sel9(select9),
 .o0(i010), .o1(i011), .o2(i012), .o3(i013), .o4(i014), .o5(i015), .o6(i016), .o7(i017), .o8(i018), .o9(i019), .clk(clk));

endmodule
