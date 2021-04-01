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
i009, i019,i0010, i0110,i0011, i0111,i0012, i0112,i0013, i0113, i0014, i0114, clk, rst, Write, Read
 );
input[7:0] i000, i001, i002,i003, i004, i005, i006, i007, i008, i009,i0010, i0011,i0012,i0013,i0014;
input clk, rst, Read, Write;
output[7:0] i010, i011, i012,i013, i014, i015, i016, i017, i018, i019, i0110, i0111, i0112, i0113, i0114;
wire[7:0] L0, L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11, L12, L13, L14;

wire e00, e01, e02, e03, e04, e05,  e07, e08, e09, e010,  e011, e012, e013, e014;
wire e10, e11, e12, e13, e14, e15,  e17, e18, e19, e110,  e111, e112, e113, e114;
wire e20, e21, e22, e23, e24, e25,  e27, e28, e29, e210,  e211, e212, e213, e214,
wire e30, e31, e32, e33, e34, e35,  e37, e38, e39, e310,  e311, e312, e313, e314;
wire e40, e41, e42, e43, e44, e45,  e47, e48, e49, e410,  e411, e412, e413, e414;
wire e50, e51, e52, e53, e54, e55,  e57, e58, e59, e510,  e511, e512, e513, e514;
wire e60, e61, e62, e63, e64, e65,  e67, e68, e69, e610,  e611, e612, e613, e614;
wire e70, e71, e72, e73, e74, e75,  e77, e78, e79, e710,  e711, e712, e713, e714;
wire e80, e81, e82, e83, e84, e85,  e87, e88, e89, e810,  e811, e812, e813, e814;
wire e90, e91, e92, e93, e94, e95,  e97, e98, e99, e910,  e911, e912, e913, e914;
wire e100, e101, e102, e103, e104, e105,  e107, e108, e109, e1010,  e1011, e1012, e1013, e1014;
wire e110, e111, e112, e113, e114, e115,  e117, e118, e119, e1110,  e1111, e1112, e1113, e1114;
wire e120, e121, e122, e123, e124, e125,  e127, e128, e129, e1210,  e1211, e1212, e1213, e1214;
wire e130, e131, ee132, e133, e134, e135,  e137, e138, e139, e1310,  e1311, e1312, e1313, e1314;
wire e140, e141, e142, e143, e144, e145,  e147, e148, e149, e1410,  e1411, e1412, e1413, e1414;



wire gnt00, gnt01, gnt02, gnt03, gnt04, gnt05, gnt06, gnt07, gn08, gnt09, gnt010, gnt011, gnt012, gnt013, gnt014;
wire gnt10, gnt11, gnt12, gnt13, gnt14, gnt15, gnt16, gnt17, gn08, gnt19, gnt110, gnt111, gnt112, gnt113, gnt114;
wire gnt20, gnt21, gnt22, gnt23, gnt24, gnt25, gnt26, gnt27, gn08, gnt29, gnt210, gnt211, gnt212, gnt213, gnt214;
wire gnt30, gnt31, gnt32, gnt33, gnt34, gnt35, gnt36, gnt37, gn08, gnt39, gnt310, gnt311, gnt312, gnt313, gnt314;
wire gnt40, gnt41, gnt42, gnt43, gnt44, gnt45, gnt46, gnt47, gn08, gnt49, gnt410, gnt411, gnt412, gnt413, gnt414;
wire gnt50, gnt51, gnt52, gnt53, gnt54, gnt55, gnt56, gnt57, gn08, gnt59, gnt510, gnt511, gnt512, gnt513, gnt514;
wire gnt60, gnt61, gnt62, gnt63, gnt64, gnt65, gnt66, gnt67, gn08, gnt69, gnt610, gnt611, gnt612, gnt613, gnt614;
wire gnt70, gnt71, gnt72, gnt73, gnt74, gnt75, gnt76, gnt77, gn08, gnt79, gnt710, gnt711, gnt712, gnt713, gnt714;
wire gnt80, gnt81, gnt82, gnt83, gnt84, gnt85, gnt86, gnt87, gn08, gnt89, gnt810, gnt811, gnt812, gnt813, gnt814;
wire gnt90, gnt91, gnt92, gnt93, gnt94, gnt95, gnt96, gnt97, gn08, gnt99, gnt910, gnt911, gnt912, gnt913, gnt914;
wire gnt100, gnt101, gnt102, gnt103, gnt104, gnt105, gnt106, gnt107, gn08, gnt109, gnt1010, gnt1011, gnt1012, gnt1013, gnt1014;
wire gnt110, gnt111, gnt112, gnt113, gnt114, gnt115, gnt116, gnt117, gn08, gnt119, gnt1110, gnt1111, gnt1112, gnt1113, gnt1114;
wire gnt120, gnt121, gnt122, gnt123, gnt124, gnt125, gnt126, gnt127, gn08, gnt129, gnt1210, gnt1211, gnt1212, gnt1213, gnt1214;
wire gnt130, gnt131, gnt132, gnt133, gnt134, gnt135, gnt136, gnt137, gn08, gnt139, gnt1310, gnt1311, gnt1312, gnt1313, gnt1314;
wire gnt140, gnt141, gnt142, gnt143, gnt144, gnt145, gnt146, gnt147, gn08, gnt149, gnt1410, gnt1411, gnt1412, gnt1413, gnt1414;

wire[15:0] select1, select2, select3,select4, select5, select6,select7, select8, select9;
wire[15:0] select10, select12, select13, select14, select15, select16;

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
fifo f10( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0010), .fifo_out(L10), .empty(), .full(), 
.fifo_counter());
fifo f11(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0011), .fifo_out(L11), .empty(), .full(), 
.fifo_counter());
fifo f12( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0012), .fifo_out(L12), .empty(), .full(), 
.fifo_counter());
fifo f13( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0013), .fifo_out(L13), .empty(), .full(), 
.fifo_counter());
fifo f14( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0014), .fifo_out(L14), .empty(), .full(), 
.fifo_counter());


 /*route_logic */
compute r0( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04), .e6(e05), .e7(e06), .e8(e07), .e9(e08), .e10(e09), .e11(e010), .e12(e011), .e13(e012), .e14(e013), .e15(e014));
compute r1( .Li(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14), .e6(e15), .e7(e16), .e8(e17), .e9(e18), .e10(e19), .e11(e110), .e12(e111), .e13(e112), .e14(e113), .e15(e114));
compute r2( .Li(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24), .e6(e25), .e7(e26), .e8(e27), .e9(e28), .e10(e29), .e11(e210), .e12(e211), .e13(e212), .e14(e213), .e15(e214));
compute r3( .Li(L3), .port_num_next(), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34), .e6(e35), .e7(e36), .e8(e37), .e9(e38), .e10(e39), .e11(e310), .e12(e311), .e13(e312), .e14(e313), .e15(e314));
compute r4( .Li(L4), .port_num_next(), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44), .e6(e45), .e7(e46), .e8(e47), .e9(e48), .e10(e49), .e11(e410), .e12(e411), .e13(e412), .e14(e413), .e15(e414));
compute r5( .Li(L5), .port_num_next(), .e1(e50), .e2(e51), .e3(e52), .e4(e53), .e5(e54), .e6(e55), .e7(e56), .e8(e57), .e9(e58), .e10(e59), .e11(e510), .e12(e511), .e13(e512), .e14(e513), .e15(e514));
compute r6( .Li(L6), .port_num_next(), .e1(e60), .e2(e61), .e3(e62), .e4(e63), .e5(e64), .e6(e65), .e7(e66), .e8(e67), .e9(e68), .e10(e69), .e11(e610), .e12(e611), .e13(e612), .e14(e613), .e15(e614));
compute r7( .Li(L7), .port_num_next(), .e1(e70), .e2(e71), .e3(e72),. e4(e73), .e5(e74), .e6(e75), .e7(e76), .e8(e77), .e9(e78), .e10(e79), .e11(e710), .e12(e711), .e13(e712), .e14(e713), .e15(e714));
compute r8( .Li(L8), .port_num_next(), .e1(e80), .e2(e81), .e3(e82), .e4(e83), .e5(e84), .e6(e85), .e7(e86), .e8(e87), .e9(e88), .e10(e89), .e11(e810), .e12(e811), .e13(e812), .e14(e813), .e15(e814));
compute r9( .Li(L9), .port_num_next(), .e1(e90), .e2(e91), .e3(e92), .e4(e93), .e5(e94), .e6(e95), .e7(e96), .e8(e97), .e9(e98), .e10(e99), .e11(e910), .e12(e911), .e13(e912), .e14(e913), .e15(e914));
compute r10( .Li(L10), .port_num_next(), .e1(e100), .e2(e101), .e3(e102), .e4(e103), .e5(e104), .e6(e105), .e7(e106), .e8(e107), .e9(e108), .e10(e109), .e11(e1010), .e12(e1011), .e13(e1012), 
.e14(e1013), .e15(e1014));
compute r11( .Li(L11), .port_num_next(), .e1(e110), .e2(e111), .e3(e112), .e4(e113), .e5(e114), .e6(e115), .e7(e116), .e8(e117), .e9(e118), .e10(e119), .e11(e1110), .e12(e1111), .e13(e1112), 
.e14(e1113), .e15(e1114));
compute r12( .Li(L12), .port_num_next(), .e1(e120), .e2(e121), .e3(e122),. e4(e123), .e5(e124), .e6(e125), .e7(e126), .e8(e127), .e9(e128), .e10(e129), .e11(e1210), .e12(e1211), .e13(e1212), 
.e14(e1213), .e15(e1214));
compute r13( .Li(L13), .port_num_next(), .e1(e130), .e2(e131), .e3(e132), .e4(e133), .e5(e134), .e6(e135), .e7(e136), .e8(e137), .e9(e138), .e10(e139), .e11(e1310), .e12(e1311), .e13(e1312), 
.e14(e1313), .e15(e1314));
compute r14( .Li(L14), .port_num_next(), .e1(e140), .e2(e141), .e3(e142), .e4(e143), .e5(e144), .e6(e145), .e7(e146), .e8(e147), .e9(e148), .e10(e149), .e11(e1410), .e12(e1411), .e13(e1412),
 .e14(e1413), .e15(e1414));

/* arbiter */
arbiter a0(.gnt014(gnt014), .gnt013(gnt013), .gnt012(gnt012), .gnt011(gnt011),  .gnt010(gnt010), .gnt09(gnt09), .gnt08(gnt08), 
.gnt07(gnt07), .gnt06(gnt06),  .gnt05(gnt05), .gnt04(gnt04), .gnt03(gnt03),  .gnt02(gnt02), .gnt01(gnt01), .gnt00(gnt00),  
.req014(e140), .req013(e130),  .req012(e120), .req011(e110), .req010(e100), .req09(e90), .req08(e80),  .req07(e70),
 .req06(e60), .req05(e50), .req04(e40), .req03(e30), .req02(e20), .req01(e10), .req00(e00), .clk(clk), .rst(rst));

arbiter a1(.gnt014(gnt114), .gnt013(gnt113), .gnt012(gnt112), .gnt011(gnt111),  .gnt010(gnt110), .gnt09(gnt19), .gnt08(gnt18), 
.gnt07(gnt17), .gnt06(gnt16),  .gnt05(gnt15), .gnt04(gnt14), .gnt03(gnt13),  .gnt02(gnt12), .gnt01(gnt11), .gnt00(gnt10),  
.req014(e141), .req013(e131),  .req012(e121), .req011(e111), .req010(e101), .req09(e91), .req08(e81),  .req07(e71),
 .req06(e61), .req05(e51), .req04(e41), .req03(e31), .req02(e21), .req01(e11), .req00(e01), .clk(clk), .rst(rst));


arbiter a2(.gnt014(gnt214), .gnt013(gnt213), .gnt012(gnt212), .gnt011(gnt211),  .gnt010(gnt210), .gnt09(gnt29), .gnt08(gnt28), 
.gnt07(gnt27), .gnt06(gnt26),  .gnt05(gnt25), .gnt04(gnt24), .gnt03(gnt23),  .gnt02(gnt22), .gnt01(gnt21), .gnt00(gnt20),  
.req014(e142), .req013(e132),  .req012(e122), .req011(e112), .req010(e102), .req09(e92), .req08(e82),  .req07(e72),
 .req06(e62), .req05(e52), .req04(e42), .req03(e32), .req02(e22), .req01(e12), .req00(e02), .clk(clk), .rst(rst));

arbiter a3(.gnt014(gnt314), .gnt013(gnt313), .gnt012(gnt312), .gnt011(gnt311),  .gnt010(gnt310), .gnt09(gnt39), .gnt08(gnt38), 
.gnt07(gnt37), .gnt06(gnt36),  .gnt05(gnt35), .gnt04(gnt34), .gnt03(gnt33),  .gnt02(gnt32), .gnt01(gnt31), .gnt00(gnt30),  
.req014(e143), .req013(e133),  .req012(e123), .req011(e113), .req010(e103), .req09(e93), .req08(e83),  .req07(e73),
 .req06(e63), .req05(e53), .req04(e43), .req03(e33), .req02(e23), .req01(e13), .req00(e03), .clk(clk), .rst(rst));

arbiter a4(.gnt014(gnt414), .gnt013(gnt413), .gnt012(gnt412), .gnt011(gnt411),  .gnt010(gnt410), .gnt09(gnt49), .gnt08(gnt48), 
.gnt07(gnt47), .gnt06(gnt46),  .gnt05(gnt45), .gnt04(gnt44), .gnt03(gnt43),  .gnt02(gnt42), .gnt01(gnt41), .gnt00(gnt40),  
.req014(e144), .req013(e134),  .req012(e124), .req011(e114), .req010(e104), .req09(e94), .req08(e84),  .req07(e74),
 .req06(e64), .req05(e54), .req04(e44), .req03(e34), .req02(e24), .req01(e14), .req00(e04), .clk(clk), .rst(rst));

arbiter a5(.gnt014(gnt514), .gnt013(gnt513), .gnt012(gnt512), .gnt011(gnt511),  .gnt010(gnt510), .gnt09(gnt59), .gnt08(gnt58), 
.gnt07(gnt57), .gnt06(gnt56),  .gnt05(gnt55), .gnt04(gnt54), .gnt03(gnt53),  .gnt02(gnt52), .gnt01(gnt51), .gnt00(gnt50),  
.req014(e145), .req013(e135),  .req012(e125), .req011(e115), .req010(e105), .req09(e95), .req08(e85),  .req07(e75),
 .req06(e65), .req05(e55), .req04(e45), .req03(e35), .req02(e25), .req01(e15), .req00(e05), .clk(clk), .rst(rst));

arbiter a6(.gnt014(gnt614), .gnt013(gnt613), .gnt012(gnt612), .gnt011(gnt611),  .gnt010(gnt610), .gnt09(gnt69), .gnt08(gnt68), 
.gnt07(gnt67), .gnt06(gnt66),  .gnt05(gnt65), .gnt04(gnt64), .gnt03(gnt63),  .gnt02(gnt62), .gnt01(gnt61), .gnt00(gnt60),  
.req014(e146), .req013(e136),  .req012(e126), .req011(e116), .req010(e106), .req09(e96), .req08(e86),  .req07(e76),
 .req06(e66), .req05(e56), .req04(e46), .req03(e36), .req02(e26), .req01(e16), .req00(e06), .clk(clk), .rst(rst));


arbiter a7(.gnt014(gnt714), .gnt013(gnt713), .gnt012(gnt712), .gnt011(gnt711),  .gnt010(gnt710), .gnt09(gnt79), .gnt08(gnt78), 
.gnt07(gnt77), .gnt06(gnt76),  .gnt05(gnt75), .gnt04(gnt74), .gnt03(gnt73),  .gnt02(gnt72), .gnt01(gnt71), .gnt00(gnt70),  
.req014(e147), .req013(e137),  .req012(e127), .req011(e117), .req010(e107), .req09(e97), .req08(e87),  .req07(e77),
 .req06(e67), .req05(e57), .req04(e47), .req03(e37), .req02(e27), .req01(e17), .req00(e07), .clk(clk), .rst(rst));

arbiter a8(.gnt014(gnt814), .gnt013(gnt813), .gnt012(gnt812), .gnt011(gnt811),  .gnt010(gnt810), .gnt09(gnt89), .gnt08(gnt88), 
.gnt07(gnt87), .gnt06(gnt86),  .gnt05(gnt85), .gnt04(gnt84), .gnt03(gnt83),  .gnt02(gnt82), .gnt01(gnt81), .gnt00(gnt80),  
.req014(e148), .req013(e138),  .req012(e128), .req011(e118), .req010(e108), .req09(e98), .req08(e88),  .req07(e78),
 .req06(e68), .req05(e58), .req04(e48), .req03(e38), .req02(e28), .req01(e18), .req00(e08), .clk(clk), .rst(rst));

arbiter a9(.gnt014(gnt914), .gnt013(gnt913), .gnt012(gnt912), .gnt011(gnt911),  .gnt010(gnt910), .gnt09(gnt99), .gnt08(gnt98), 
.gnt07(gnt97), .gnt06(gnt96),  .gnt05(gnt95), .gnt04(gnt94), .gnt03(gnt93),  .gnt02(gnt92), .gnt01(gnt91), .gnt00(gnt90),  
.req014(e149), .req013(e139),  .req012(e129), .req011(e119), .req010(e109), .req09(e99), .req08(e89),  .req07(e79),
 .req06(e69), .req05(e59), .req04(e49), .req03(e39), .req02(e29), .req01(e19), .req00(e09), .clk(clk), .rst(rst));

arbiter a10(.gnt014(gnt1014), .gnt013(gnt1013), .gnt012(gnt1012), .gnt011(gnt1011),  .gnt010(gnt1010), .gnt09(gnt109), .gnt08(gnt108), 
.gnt07(gnt107), .gnt06(gnt106),  .gnt05(gnt105), .gnt04(gnt104), .gnt03(gnt103),  .gnt02(gnt102), .gnt01(gnt101), .gnt00(gnt100),  
.req014(e1410), .req013(e1310),  .req012(e1210), .req011(e1110), .req010(e1010), .req09(e910), .req08(e810),  .req07(e710),
 .req06(e610), .req05(e510), .req04(e410), .req03(e310), .req02(e210), .req01(e110), .req00(e010), .clk(clk), .rst(rst));

arbiter a11(.gnt014(gnt1114), .gnt013(gnt1113), .gnt012(gnt1112), .gnt011(gnt1111),  .gnt010(gnt1110), .gnt09(gnt119), .gnt08(gnt118), 
.gnt07(gnt117), .gnt06(gnt116),  .gnt05(gnt115), .gnt04(gnt114), .gnt03(gnt113),  .gnt02(gnt112), .gnt01(gnt111), .gnt00(gnt111),  
.req014(e1411), .req013(e1311),  .req012(e1211), .req011(e1111), .req010(e1011), .req09(e911), .req08(e811),  .req07(e711),
 .req06(e611), .req05(e511), .req04(e411), .req03(e311), .req02(e211), .req01(e111), .req00(e011), .clk(clk), .rst(rst));

arbiter a12(.gnt014(gnt1214), .gnt013(gnt1213), .gnt012(gnt1212), .gnt011(gnt1211),  .gnt010(gnt1210), .gnt09(gnt129), .gnt08(gnt128), 
.gnt07(gnt127), .gnt06(gnt126),  .gnt05(gnt125), .gnt04(gnt124), .gnt03(gnt123),  .gnt02(gnt122), .gnt01(gnt121), .gnt00(gnt121),  
.req014(e1412), .req013(e1312),  .req012(e1212), .req011(e1112), .req010(e1012), .req09(e912), .req08(e812),  .req07(e712),
 .req06(e612), .req05(e512), .req04(e412), .req03(e312), .req02(e212), .req01(e112), .req00(e012), .clk(clk), .rst(rst));

arbiter a13(.gnt014(gnt1314), .gnt013(gnt1313), .gnt012(gnt1312), .gnt011(gnt1311),  .gnt010(gnt1310), .gnt09(gnt139), .gnt08(gnt138), 
.gnt07(gnt137), .gnt06(gnt136),  .gnt05(gnt135), .gnt04(gnt134), .gnt03(gnt133),  .gnt02(gnt132), .gnt01(gnt131), .gnt00(gnt130),  
.req014(e1413), .req013(e1313),  .req012(e1213), .req011(e1113), .req010(e1013), .req09(e913), .req08(e813),  .req07(e713),
 .req06(e613), .req05(e513), .req04(e413), .req03(e313), .req02(e213), .req01(e113), .req00(e013), .clk(clk), .rst(rst));

arbiter a14(.gnt014(gnt1414), .gnt013(gnt1413), .gnt012(gnt1412), .gnt011(gnt1411),  .gnt010(gnt1410), .gnt09(gnt149), .gnt08(gnt148), 
.gnt07(gnt147), .gnt06(gnt146),  .gnt05(gnt145), .gnt04(gnt144), .gnt03(gnt143),  .gnt02(gnt142), .gnt01(gnt141), .gnt00(gnt140),  
.req014(e1414), .req013(e1314),  .req012(e1214), .req011(e1114), .req010(e1014), .req09(e914), .req08(e814),  .req07(e714),
 .req06(e614), .req05(e514), .req04(e414), .req03(e314), .req02(e214), .req01(e114), .req00(e014), .clk(clk), .rst(rst));

				/*selector */
selector s0(.g00(gnt00), .g01(gnt01), .g02(gnt02), .g03(gnt03), .g04(gnt04), .g05(gnt05), .g06(gnt06), .g07(gnt07), .g08(gnt08), .g09(gnt09), 
               .g010(gnt010), .g011(gnt011), .g012(gnt012), .g013(gnt013), .g014(gnt014), .select(select0));
selector s1(.g00(gnt10), .g01(gnt11), .g02(gnt12), .g03(gnt13), .g04(gnt14), .g05(gnt15), .g06(gnt16), .g07(gnt17), .g08(gnt18), .g09(gnt19), 
               .g010(gnt110), .g011(gnt111), .g012(gnt112), .g013(gnt113), .g014(gnt114), .select(select1));
selector s2(.g00(gnt20), .g01(gnt21), .g02(gnt22), .g03(gnt23), .g04(gnt24), .g05(gnt25), .g06(gnt26), .g07(gnt27), .g08(gnt28), .g09(gnt29), 
               .g010(gnt210), .g011(gnt211), .g012(gnt212), .g013(gnt213), .g014(gnt214), .select(select2));
selector s3(.g00(gnt30), .g01(gnt31), .g02(gnt32), .g03(gnt33), .g04(gnt34), .g05(gnt35), .g06(gnt36), .g07(gnt37), .g08(gnt38), .g09(gnt39), 
               .g010(gnt310), .g011(gnt311), .g012(gnt312), .g013(gnt313), .g014(gnt314), .select(select3));
selector s4(.g00(gnt40), .g01(gnt41), .g02(gnt42), .g03(gnt43), .g04(gnt44), .g05(gnt45), .g06(gnt46), .g07(gnt47), .g08(gnt48), .g09(gnt49), 
               .g010(gnt410), .g011(gnt411), .g012(gnt412), .g013(gnt413), .g014(gnt414), .select(select4));
selector s5(.g00(gnt50), .g01(gnt51), .g02(gnt52), .g03(gnt53), .g04(gnt54), .g05(gnt55), .g06(gnt56), .g07(gnt57), .g08(gnt58), .g09(gnt59), 
               .g010(gnt510), .g011(gnt511), .g012(gnt512), .g013(gnt513), .g014(gnt514), .select(select5));
selector s6(.g00(gnt60), .g01(gnt61), .g02(gnt62), .g03(gnt63), .g04(gnt64), .g05(gnt65), .g06(gnt66), .g07(gnt67), .g08(gnt68), .g09(gnt69), 
               .g010(gnt610), .g011(gnt611), .g012(gnt612), .g013(gnt613), .g014(gnt614), .select(select6));
selector s7(.g00(gnt70), .g01(gnt71), .g02(gnt72), .g03(gnt73), .g04(gnt74), .g05(gnt75), .g06(gnt76), .g07(gnt77), .g08(gnt78), .g09(gnt79), 
               .g010(gnt710), .g011(gnt711), .g012(gnt712), .g013(gnt713), .g014(gnt714), .select(select7));
selector s8(.g00(gnt80), .g01(gnt81), .g02(gnt82), .g03(gnt83), .g04(gnt84), .g05(gnt85), .g06(gnt86), .g07(gnt87), .g08(gnt88), .g09(gnt89), 
               .g010(gnt810), .g011(gnt811), .g012(gnt812), .g013(gnt813), .g014(gnt814), .select(select8));
selector s9(.g00(gnt90), .g01(gnt91), .g02(gnt92), .g03(gnt93), .g04(gnt94), .g05(gnt95), .g06(gnt96), .g07(gnt97), .g08(gnt98), .g09(gnt99), 
               .g010(gnt910), .g011(gnt911), .g012(gnt912), .g013(gnt913), .g014(gnt914), .select(select9));
selector s10(.g00(gnt100), .g01(gnt101), .g02(gnt102), .g03(gnt103), .g04(gnt104), .g05(gnt105), .g06(gnt106), .g07(gnt107), .g08(gnt108), .g09(gnt109), 
               .g010(gnt1010), .g011(gnt1011), .g012(gnt1012), .g013(gnt1013), .g014(gnt1014), .select(select10));
selector s11(.g00(gnt110), .g01(gnt111), .g02(gnt112), .g03(gnt113), .g04(gnt114), .g05(gnt115), .g06(gnt116), .g07(gnt117), .g08(gnt118), .g09(gnt119), 
               .g010(gnt1110), .g011(gnt1111), .g012(gnt1112), .g013(gnt1113), .g014(gnt1114), .select(select11));
selector s12(.g00(gnt120), .g01(gnt121), .g02(gnt122), .g03(gnt123), .g04(gnt124), .g05(gnt125), .g06(gnt126), .g07(gnt127), .g08(gnt128), .g09(gnt129), 
               .g010(gnt1210), .g011(gnt1211), .g012(gnt1212), .g013(gnt1213), .g014(gnt1214), .select(select12));
selector s13(.g00(gnt130), .g01(gnt131), .g02(gnt132), .g03(gnt133), .g04(gnt134), .g05(gnt135), .g06(gnt136), .g07(gnt137), .g08(gnt138), .g09(gnt139), 
               .g010(gnt1310), .g011(gnt1311), .g012(gnt1312), .g013(gnt1313), .g014(gnt1314), .select(select13));
selector s14(.g00(gnt140), .g01(gnt141), .g02(gnt142), .g03(gnt143), .g04(gnt144), .g05(gnt145), .g06(gnt146), .g07(gnt147), .g08(gnt148), .g09(gnt149), 
               .g010(gnt1410), .g011(gnt1411), .g012(gnt1412), .g013(gnt1413), .g014(gnt1414), .select(select14));
 /*crossbar*/
crossbar c1(.i0(i000), .i1(i001), .i2(i002), .i3(i003), .i4(i004), .i5(i005), .i6(i006), .i7(i007), .i8(i008), .i9(i009), .i10(i0010), .i11(i0011), .i12(i0012),
 .i13(i0013), .i14(i0014), .sel0(select0), .sel1(select1), .sel2(select2), .sel3(select3), .sel4(select4), .sel5(select5), .sel6(select6), .sel7(select7), 
.sel8(select8),.sel9(select9), .sel10(select10), .sel11(select11), .sel12(select12), .sel13(select13),.sel14(select14), .o0(i010), .o1(i011), .o2(i012), 
.o3(i013), .o4(i014), .o5(i015), .o6(i016), .o7(i017), .o8(i018), .o9(i019), .o10(i0110), .o11(i0111), .o12(i0112), .o13(i0113), .o14(i0114),.clk(clk));

endmodule
