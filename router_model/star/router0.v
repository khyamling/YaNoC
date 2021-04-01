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
module router0(i000, i010, i001, i011, i002, i012, i003, i013, i004, i014, i005, i015, i006, i016, i007, i017, i008, i018, i009, i019, i0010, i0110, 
 i0011, i0111, i0012, i0112, i0013, i0113, i0014, i0114, i0015, i0115, i0016, i0116, i0017, i0117, i0018, i0118, i0019, i0119, i0020, i0120,
 i0021, i0121, i0022, i0122, i0023, i0123, i0024, i0124, i0025, i0125, i0026, i0126, i0027, i0127, i0028, i0128, i0029, i0129, i0030, i0130,
 i0031, i0131, i0032, i0132, i0033, i0133, i0034, i0134, i0035, i0135, i0036, i0136, i0037, i0137, i0038, i0138, i0039, i0139, i0040, i0140,
 i0041, i0141, i0042, i0142, i0043, i0143, i0044, i0144, i0045, i0145, i0046, i0146, i0047, i0147, i0048, i0148, i0049, i0149, i0050, i0150,
 i0051, i0151, i0052, i0152, i0053, i0153, i0054, i0154, i0055, i0155, i0056, i0156, i0057, i0157, i0058, i0158, i0059, i0159, i0060, i0160,
 i0061, i0161, i0062, i0162, clk, rst, Write, Read );
input[7:0] i000, i001, i002,i003, i004, i005, i006, i007, i008, i009, i0010, i0011, i0012,i0013, i0014, i0015, i0016, i0017, i0018, i0019, i0020; 
input[7:0] i0021, i0022,i0023, i0024, i0025, i0026, i0027, i0028, i0029, i0030, i0031, i0032,i0033, i0034, i0035, i0036, i0037, i0038, i0039, i0040;
input[7:0] i0041, i0042,i0043, i0044, i0045, i0046, i0047, i0048, i0049, i0050, i0051, i0052,i0053, i0054, i0055, i0056, i0057, i0058, i0059, i0060;
input[7:0] i0061, i0062;
input clk, rst, Read, Write;
output[7:0] i010, i011, i012,i013, i014, i015, i016, i017, i018, i019, i0110, i0111, i0112, i0113,i0114, i0115, i0116, i0117, i0118, i0119, i0120;
output[7:0] i0121, i0122, i0123,i0124, i0125, i0126, i0127, i0128, i0129, i0130, i0131, i0132, i0133,i0134, i0135, i0136, i0137, i0138, i0139, i0140;
output[7:0] i0141, i0142, i0143,i0144, i0145, i0146, i0147, i0148, i0149, i0150, i0151, i0152, i0153,i0154, i0155, i0156, i0157, i0158, i0159, i0160;
output[7:0] i0161, i0162
wire[7:0] L0, L1, L2, L3, L4, L5, L6, L7, L8, L9;
wire[7:0] L10, L11, L12, L13, L14, L15, L16, L17, L18, L19;
wire[7:0] L20, L21, L22, L23, L24, L25, L26, L27, L28, L29;
wire[7:0] L30, L31, L32, L33, L34, L35, L36, L37, L38, L39;
wire[7:0] L40, L41, L42, L43, L44, L45, L46, L47, L48, L49;
wire[7:0] L50, L51, L52, L53, L54, L55, L56, L57, L58, L59;
wire[7:0] L60, L61, L62;
wire e00, e01, e02, e03, e04, e05,  e07, e08, e09, e10, e11, e12, e13, e14, e15,  e17, e18, e19;
wire e20, e21, e22, e23, e24, e25,  e27, e28, e29, e30, e31, e32, e33, e34, e35,  e37, e38, e39;
wire e40, e41, e42, e43, e44, e45,  e47, e48, e49, e50, e51, e52, e53, e54, e55,  e57, e58, e59;
wire e60, e61, e62, e63, e64, e65,  e67, e68, e69, e70, e71, e72, e73, e74, e75,  e77, e78, e79;
wire e80, e81, e82, e83, e84, e85,  e87, e88, e89, e90, e91, e92, e93, e94, e95,  e97, e98, e99;
wire e100, e101, e102, e103, e104, e105,  e107, e108, e109, e110, e111, e112, e113, e114, e115,  e117, e118, e119;
wire e120, e21, e22, e23, e24, e25,  e27, e28, e29, e30, e31, e32, e33, e34, e35,  e37, e38, e39;
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
fifo f10(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0010), .fifo_out(L10), .empty(), .full(), 
.fifo_counter());
fifo f11( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0011), .fifo_out(L11), .empty(), .full(), 
.fifo_counter());
fifo f12( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0012), .fifo_out(L12), .empty(), .full(), 
.fifo_counter());
fifo f13(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0013), .fifo_out(L13), .empty(), .full(), 
.fifo_counter());
fifo f14( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0014), .fifo_out(L14), .empty(), .full(), 
.fifo_counter());
fifo f15( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0015), .fifo_out(L15), .empty(), .full(), 
.fifo_counter());
fifo f16(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0016), .fifo_out(L16), .empty(), .full(), 
.fifo_counter());
fifo f17( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0017), .fifo_out(L17), .empty(), .full(), 
.fifo_counter());
fifo f18( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0018), .fifo_out(L18), .empty(), .full(), 
.fifo_counter());
fifo f19( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0019), .fifo_out(L19), .empty(), .full(), 
.fifo_counter());
fifo f20(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0020), .fifo_out(L20), .empty(), .full(), 
.fifo_counter());
fifo f21( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0021), .fifo_out(L21), .empty(), .full(), 
.fifo_counter());
fifo f22( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0022), .fifo_out(L22), .empty(), .full(), 
.fifo_counter());
fifo f23(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0023), .fifo_out(L23), .empty(), .full(), 
.fifo_counter());
fifo f24( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0024), .fifo_out(L24), .empty(), .full(), 
.fifo_counter());
fifo f25( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0025), .fifo_out(L25), .empty(), .full(), 
.fifo_counter());
fifo f26(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0026), .fifo_out(L26), .empty(), .full(), 
.fifo_counter());
fifo f27( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0027), .fifo_out(L27), .empty(), .full(), 
.fifo_counter());
fifo f28( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0028), .fifo_out(L28), .empty(), .full(), 
.fifo_counter());
fifo f29( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0029), .fifo_out(L29), .empty(), .full(), 
.fifo_counter());
fifo f30(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0030), .fifo_out(L30), .empty(), .full(), 
.fifo_counter());
fifo f31( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0031), .fifo_out(L31), .empty(), .full(), 
.fifo_counter());
fifo f32( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0032), .fifo_out(L32), .empty(), .full(), 
.fifo_counter());
fifo f33(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0033), .fifo_out(L33), .empty(), .full(), 
.fifo_counter());
fifo f34( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0034), .fifo_out(L34), .empty(), .full(), 
.fifo_counter());
fifo f35( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0035), .fifo_out(L35), .empty(), .full(), 
.fifo_counter());
fifo f36(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0036), .fifo_out(L36), .empty(), .full(), 
.fifo_counter());
fifo f37( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0037), .fifo_out(L37), .empty(), .full(), 
.fifo_counter());
fifo f38( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0038), .fifo_out(L38), .empty(), .full(), 
.fifo_counter());
fifo f39( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0039), .fifo_out(L39), .empty(), .full(), 
.fifo_counter());
fifo f40(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0040), .fifo_out(L40), .empty(), .full(), 
.fifo_counter());
fifo f41( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0041), .fifo_out(L41), .empty(), .full(), 
.fifo_counter());
fifo f42( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0042), .fifo_out(L42), .empty(), .full(), 
.fifo_counter());
fifo f43(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0043), .fifo_out(L43), .empty(), .full(), 
.fifo_counter());
fifo f44( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0044), .fifo_out(L44), .empty(), .full(), 
.fifo_counter());
fifo f45( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0045), .fifo_out(L45), .empty(), .full(), 
.fifo_counter());
fifo f46(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0046), .fifo_out(L46), .empty(), .full(), 
.fifo_counter());
fifo f47( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0047), .fifo_out(L7), .empty(), .full(), 
.fifo_counter());
fifo f48( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0048), .fifo_out(L48), .empty(), .full(), 
.fifo_counter());
fifo f49( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0049), .fifo_out(L49), .empty(), .full(), 
.fifo_counter());
fifo f50(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0050), .fifo_out(L50), .empty(), .full(), 
.fifo_counter());
fifo f51( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0051), .fifo_out(L51), .empty(), .full(), 
.fifo_counter());
fifo f52( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0052), .fifo_out(L52), .empty(), .full(), 
.fifo_counter());
fifo f53(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0053), .fifo_out(L53), .empty(), .full(), 
.fifo_counter());
fifo f54( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0054), .fifo_out(L54), .empty(), .full(), 
.fifo_counter());
fifo f55( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0055), .fifo_out(L55), .empty(), .full(), 
.fifo_counter());
fifo f56(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0056), .fifo_out(L56), .empty(), .full(), 
.fifo_counter());
fifo f57( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0057), .fifo_out(L57), .empty(), .full(), 
.fifo_counter());
fifo f58( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0058), .fifo_out(L58), .empty(), .full(), 
.fifo_counter());
fifo f59( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0059), .fifo_out(L59), .empty(), .full(), 
.fifo_counter());
fifo f60(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0060), .fifo_out(L60), .empty(), .full(), 
.fifo_counter());
fifo f61( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0061), .fifo_out(L61), .empty(), .full(), 
.fifo_counter());
fifo f62( .rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(i0062), .fifo_out(L62), .empty(), .full(), 
.fifo_counter());

/*route_logic */
compute r0( .Li(L0), .port_num_next(), .e1(e00), .e2(e01), .e3(e02), .e4(e03), .e5(e04), .e6(e05), .e7(e06), .e8(e07), .e9(e08), .e10(e09),
           e11(e010), .e12(e011), .e13(e012), .e14(e013), .e15(e014), .e16(e015), .e17(e016), .e18(e017), .e19(e018), .e20(e019),
           e21(e020), .e22(e021), .e23(e022), .e24(e023), .e25(e024), .e26(e025), .e27(e026), .e28(e027), .e29(e028), .e30(e029),
           e31(e030), .e32(e031), .e33(e032), .e34(e033), .e35(e034), .e36(e035), .e37(e036), .e38(e037), .e39(e038), .e30(e039),
           e41(e040), .e42(e041), .e43(e042), .e44(e043), .e45(e044), .e46(e045), .e47(e046), .e48(e047), .e49(e048), .e40(e049),
           e51(e050), .e52(e051), .e53(e052), .e54(e053), .e55(e054), .e56(e055), .e57(e056), .e58(e057), .e59(e058), .e50(e059),
           e61(e060), .e62(e061), .e63(e062));
compute r1( .Li(L1), .port_num_next(), .e1(e10), .e2(e11), .e3(e12), .e4(e13), .e5(e14), .e6(e15), .e7(e16), .e8(e17), .e9(e18), .e10(e19)
             e11(e110), .e12(e111), .e13(e112), .e14(e113), .e15(e114), .e16(e115), .e17(e116), .e18(e117), .e19(e118), .e20(e119),
           e21(e120), .e22(e121), .e23(e122), .e24(e123), .e25(e124), .e26(e125), .e27(e126), .e28(e127), .e29(e128), .e30(e129),
           e31(e130), .e32(e131), .e33(e132), .e34(e133), .e35(e134), .e36(e135), .e37(e136), .e38(e137), .e39(e138), .e30(e139),
           e41(e140), .e42(e141), .e43(e142), .e44(e143), .e45(e144), .e46(e145), .e47(e146), .e48(e147), .e49(e148), .e40(e149),
           e51(e150), .e52(e151), .e53(e152), .e54(e153), .e55(e154), .e56(e155), .e57(e156), .e58(e157), .e59(e158), .e50(e159),
           e61(e160), .e62(e161), .e63(e162) );
compute r2( .Li(L2), .port_num_next(), .e1(e20), .e2(e21), .e3(e22), .e4(e23), .e5(e24), .e6(e25), .e7(e26), .e8(e27), .e9(e28), .e10(e29)
           e11(e210), .e12(e211), .e13(e212), .e14(e213), .e15(e214), .e16(e215), .e17(e216), .e18(e217), .e19(e218), .e20(e219),
           e21(e220), .e22(e221), .e23(e222), .e24(e223), .e25(e224), .e26(e225), .e27(e226), .e28(e227), .e29(e228), .e30(e229),
           e31(e230), .e32(e231), .e33(e232), .e34(e233), .e35(e234), .e36(e235), .e37(e236), .e38(e237), .e39(e238), .e30(e239),
           e41(e240), .e42(e241), .e43(e242), .e44(e243), .e45(e244), .e46(e245), .e47(e246), .e48(e247), .e49(e248), .e40(e249),
           e51(e250), .e52(e251), .e53(e252), .e54(e253), .e55(e254), .e56(e255), .e57(e256), .e58(e257), .e59(e258), .e50(e259),
           e61(e260), .e62(e261), .e63(e262) );
compute r3( .Li(L3), .port_num_next(), .e1(e30), .e2(e31), .e3(e32), .e4(e33), .e5(e34), .e6(e35), .e7(e36), .e8(e37), .e9(e38), .e10(e39)
           e11(e310), .e12(e311), .e13(e312), .e14(e313), .e15(e314), .e16(e315), .e17(e316), .e18(e317), .e19(e318), .e20(e319),
           e21(e320), .e22(e321), .e23(e322), .e24(e323), .e25(e324), .e26(e325), .e27(e326), .e28(e327), .e29(e328), .e30(e329),
           e31(e330), .e32(e331), .e33(e332), .e34(e333), .e35(e334), .e36(e335), .e37(e336), .e38(e337), .e39(e338), .e30(e339),
           e41(e340), .e42(e341), .e43(e342), .e44(e343), .e45(e344), .e46(e345), .e47(e346), .e48(e347), .e49(e348), .e40(e349),
           e51(e350), .e52(e351), .e53(e352), .e54(e353), .e55(e354), .e56(e355), .e57(e356), .e58(e357), .e59(e358), .e50(e359),
           e61(e260), .e62(e261), .e63(e262) );
compute r4( .Li(L4), .port_num_next(), .e1(e40), .e2(e41), .e3(e42), .e4(e43), .e5(e44), .e6(e45), .e7(e46), .e8(e47), .e9(e48), .e10(e49)
           e11(e410), .e12(e411), .e13(e412), .e14(e413), .e15(e414), .e16(e415), .e17(e416), .e18(e417), .e19(e418), .e20(e419),
           e21(e420), .e22(e421), .e23(e422), .e24(e423), .e25(e424), .e26(e425), .e27(e426), .e28(e427), .e29(e428), .e30(e429),
           e31(e430), .e32(e431), .e33(e432), .e34(e433), .e35(e434), .e36(e435), .e37(e436), .e38(e437), .e39(e438), .e30(e439),
           e41(e440), .e42(e441), .e43(e442), .e44(e443), .e45(e444), .e46(e445), .e47(e446), .e48(e447), .e49(e448), .e40(e449),
           e51(e450), .e52(e451), .e53(e452), .e54(e453), .e55(e454), .e56(e455), .e57(e456), .e58(e457), .e59(e458), .e50(e459),
           e61(e260), .e62(e261), .e63(e262) );
compute r5( .Li(L5), .port_num_next(), .e1(e50), .e2(e51), .e3(e52), .e4(e53), .e5(e54), .e6(e55), .e7(e56), .e8(e57), .e9(e58), .e10(e59)
           e11(e510), .e12(e511), .e13(e512), .e14(e513), .e15(e514), .e16(e515), .e17(e516), .e18(e517), .e19(e518), .e20(e519),
           e21(e520), .e22(e521), .e23(e522), .e24(e523), .e25(e524), .e26(e525), .e27(e526), .e28(e527), .e29(e528), .e30(e529),
           e31(e530), .e32(e531), .e33(e532), .e34(e533), .e35(e534), .e36(e535), .e37(e536), .e38(e537), .e39(e538), .e30(e539),
           e41(e540), .e42(e541), .e43(e542), .e44(e543), .e45(e544), .e46(e545), .e47(e546), .e48(e547), .e49(e548), .e40(e549),
           e51(e550), .e52(e551), .e53(e552), .e54(e553), .e55(e554), .e56(e555), .e57(e556), .e58(e557), .e59(e558), .e50(e559),
           e61(e560), .e62(e561), .e63(e562) );
compute r6( .Li(L6), .port_num_next(), .e1(e60), .e2(e61), .e3(e62), .e4(e63), .e5(e64), .e6(e65), .e7(e66), .e8(e67), .e9(e68), .e10(e69)
           e11(e610), .e12(e611), .e13(e612), .e14(e613), .e15(e614), .e16(e615), .e17(e616), .e18(e617), .e19(e618), .e20(e619),
           e21(e620), .e22(e621), .e23(e622), .e24(e623), .e25(e624), .e26(e625), .e27(e626), .e28(e627), .e29(e628), .e30(e629),
           e31(e630), .e32(e631), .e33(e632), .e34(e633), .e35(e634), .e36(e635), .e37(e636), .e38(e637), .e39(e638), .e30(e639),
           e41(e640), .e42(e641), .e43(e642), .e44(e643), .e45(e644), .e46(e645), .e47(e646), .e48(e647), .e49(e648), .e40(e649),
           e51(e650), .e52(e651), .e53(e652), .e54(e653), .e55(e654), .e56(e655), .e57(e656), .e58(e657), .e59(e658), .e50(e659),
           e61(e660), .e62(e661), .e63(e662) );
compute r7( .Li(L7), .port_num_next(), .e1(e70), .e2(e71), .e3(e72), .e4(e73), .e5(e74), .e6(e75), .e7(e76), .e8(e77), .e9(e78), .e10(e79)
           e11(e710), .e12(e711), .e13(e712), .e14(e713), .e15(e714), .e16(e715), .e17(e716), .e18(e717), .e19(e718), .e20(e719),
           e21(e720), .e22(e721), .e23(e722), .e24(e723), .e25(e724), .e26(e725), .e27(e726), .e28(e727), .e29(e728), .e30(e729),
           e31(e730), .e32(e731), .e33(e732), .e34(e733), .e35(e734), .e36(e735), .e37(e736), .e38(e737), .e39(e738), .e30(e739),
           e41(e740), .e42(e741), .e43(e742), .e44(e743), .e45(e744), .e46(e745), .e47(e746), .e48(e747), .e49(e748), .e40(e749),
           e51(e750), .e52(e751), .e53(e752), .e54(e753), .e55(e754), .e56(e755), .e57(e756), .e58(e757), .e59(e758), .e50(e759),
           e61(e760), .e62(e761), .e63(e762) );
compute r8( .Li(L8), .port_num_next(), .e1(e80), .e2(e81), .e3(e82), .e4(e83), .e5(e84), .e6(e85), .e8(e86), .e8(e87), .e9(e88), .e10(e89)
           e11(e810), .e12(e811), .e13(e812), .e14(e813), .e15(e814), .e16(e815), .e17(e816), .e18(e816), .e19(e817), .e20(e819),
           e21(e820), .e22(e821), .e23(e822), .e24(e823), .e25(e824), .e26(e825), .e27(e826), .e28(e826), .e29(e827), .e30(e829),
           e31(e830), .e32(e831), .e33(e832), .e34(e833), .e35(e834), .e36(e835), .e37(e836), .e38(e836), .e39(e837), .e30(e839),
           e41(e840), .e42(e841), .e43(e842), .e44(e843), .e45(e844), .e46(e845), .e47(e846), .e48(e846), .e49(e847), .e40(e849),
           e51(e850), .e52(e851), .e53(e852), .e54(e853), .e55(e854), .e56(e855), .e57(e856), .e58(e856), .e59(e857), .e50(e859),
           e61(e860), .e62(e861), .e63(e862) );
compute r9( .Li(L9), .port_num_next(), .e1(e90), .e2(e91), .e3(e92), .e4(e93), .e5(e94), .e6(e95), .e9(e96), .e9(e97), .e9(e98), .e10(e99)
           e11(e910), .e12(e911), .e13(e912), .e14(e913), .e15(e914), .e16(e915), .e17(e916), .e18(e916), .e19(e917), .e20(e919),
           e21(e920), .e22(e921), .e23(e922), .e24(e923), .e25(e924), .e26(e925), .e27(e926), .e28(e926), .e29(e927), .e30(e929),
           e31(e930), .e32(e931), .e33(e932), .e34(e933), .e35(e934), .e36(e935), .e37(e936), .e38(e936), .e39(e937), .e30(e939),
           e41(e940), .e42(e941), .e43(e942), .e44(e943), .e45(e944), .e46(e945), .e47(e946), .e48(e946), .e49(e947), .e40(e949),
           e51(e950), .e52(e951), .e53(e952), .e54(e953), .e55(e954), .e56(e955), .e57(e956), .e58(e956), .e59(e957), .e50(e959),
           e61(e960), .e62(e961), .e63(e962) );


compute r10( .Li(L10), .port_num_next(), 


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
crossbar c1(.i0(i000),. i1(i001), .i2(i002), .i3(i003),. i4(i004), .i5(i005), i3(i006),. i4(i007), .i5(i008), .i5(i009),
.sel0(select0), .sel1(select1), .sel2(select2), .sel3(select3), .sel4(select4), .sel5(select5), .sel6(select6), .sel7(select7), .sel8(select8),.sel9(select9),
 .o0(i010), .o1(i011), .o2(i012), .o3(i013), .o4(i014), .o5(i015), .o6(i016), .o7(i017), .o8(i018), .o9(i019), .clk(clk));

endmodule
