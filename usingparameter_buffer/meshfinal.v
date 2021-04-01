`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:08 08/31/2016 
// Design Name: 
// Module Name:    meshfinal 
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
/*module meshfinal(in00, in01, in02, in03, in04,  in10, in11, in12, in13, in14,
clk, rst, Write, Read, L00, E01, W02, N03, S04, L10, E11, W12, N13, S14
    );
input[7:0] in00, in10;
output[7:0] L00, L10;
inout wire [7:0] in01, in02, in03, in04;
inout wire [7:0] in11, in12, in13, in14;
inout wire [7:0] E01, W02, N03, S04;
inout wire[7:0]  E11, W12, N13, S14;
input clk, rst, Write, Read;

wire [7:0] outEW01, outWE10;

router0 r0(.i00(in00), .i01(outWE10), .i02(), .i03(), .i04(), .clk(clk), .rst(rst), .o00(L00), .o01(outEW01), .o02(), .o03(), .o04(), .Write(Write), .Read(Read) );

router1 r1(.i10(in10), .i11(), .i12(outEW01), .i13(), .i14(), .clk(clk), .rst(rst), .o10(L10), .o11(E11), .o12(outWE10), .o13(), .o14(), .Write(Write), .Read(Read));


endmodule */

module meshfinal(in00, in10, in20, in30,
clk, rst, Write, Read, L00, L10, L20, L30
    );
input[7:0] in00, in10, in20, in30;
output reg [7:0] L00, L10, L20, L30;
//wire [7:0] in01, in02, in03, in04;
//wire [7:0] in11, in12, in13, in14;
reg [7:0] E01, W02, N03, S04;
reg [7:0]  E11, W12, N13, S14;
reg [7:0]  E21, W22, N23, S24;
reg [7:0]  E31, W32, N33, S34;
input clk, rst, Write, Read;
wire [7:0] R0L0, R1L1, R2L2, R3L3;
wire [7:0] R0in, R1in, R2in, R3in;

wire [7:0] outEW04, outSN01, outEW15, outNS10, outWE40, outSN45, outWE51, outNS54;
/*
assign L00=R0L0;
assign L10=R1L1;
assign L20=R2L2;
assign L30= R3L3;
assign E01=outWE40;
assign S04=outNS10;
assign E11=outWE51;
assign N13=outSN01;
assign W22=outEW04;
assign S24=outNS54;
assign W32=outEW15;
assign N33=outSN45;*/
assign R0in=in00;
assign R1in=in10;
assign R2in=in20;
assign R3in=in30;

router0 r0(.i00(R0in), .i01(E01), .i02(W02), .i03(N03), .i04(S04), .clk(clk),
 .rst(rst), .o00(R0L0), .o01(outEW04), .o02(), .o03(), .o04(outSN01), .Write(Write), .Read(Read) );

router1 r1(.i10(R1in), .i11(E11), .i12(W12), .i13(N13), .i14(S14), .clk(clk), 
.rst(rst), .o10(R1L1), .o11(outEW15), .o12(), .o13(outNS10), .o14(), .Write(Write), .Read(Read));

router2 r2(.i20(R2in), .i21(E21), .i22(W22), .i23(N23), .i24(S24), .clk(clk),
 .rst(rst), .o20(R2L2), .o21(), .o22(outWE40), .o23(), .o24(outSN45), .Write(Write), .Read(Read));
router3 r3(.i30(R3in), .i31(E31), .i32(W32), .i33(N33), .i34(S34), .clk(clk),
 .rst(rst), .o30(R3L3), .o31(), .o32(outWE51), .o33(outNS54), .o34(), .Write(Write), .Read(Read));

always @(negedge clk)
begin
//if(rst)
//if(R0in[7:0])
L00<=R0L0;
//if(R1in[7:0])
L10<=R1L1;
//if(R2in[7:0])
L20<=R2L2;
//if(R3in[7:0])
L30<= R3L3;
//if(outWE40[7:0])
E01<=outWE40;
//if(outNS10[7:0])
S04<=outNS10;
//if(outWE51[7:0])
E11<=outWE51;
//if(outSN01[7:0])
N13<=outSN01;
//if(outEW04[7:0])
W22<=outEW04;
//if(outNS54[7:0])
S24<=outNS54;
//if(outEW15[7:0])
W32<=outEW15;
//if(outSN45[7:0])
N33<=outSN45;

$display(" R0 E01 outWE40 %b %b",E01,outWE40);
$display(" R0 S04 outNS10 %b %b",S04,outNS10);
$display(" R1 E11 outWE51 %b %b",E11,outWE51);
$display("R1 N13 outSN01 %b %b",N13,outSN01);
$display("R2 W22 outEW04 %b %b",W22, outEW04);
$display("R2 S24 outNS54 %b %b",S24,outNS54);
$display("R3 W32 outEW15 %b %b",W32,outEW15 );
$display("R3 N33 outSN45 %b %b", N33,outSN45);
end 

endmodule 
