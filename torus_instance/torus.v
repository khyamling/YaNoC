`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:46:59 09/29/2016 
// Design Name: 
// Module Name:    mesh 
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
module torus(in00, in10, in20, in30,in40, in50, in60, in70,in80, in90, in100, in110,in120, in130, in140, in150,
clk, rst, Write, Read, L00, L10, L20, L30,L40, L50, L60, L70,L80, L90, L100, L110,L120, L130, L140, L150
    );
input[7:0] in00, in10, in20, in30,in40, in50, in60, in70,in80, in90, in100, in110,in120, in130, in140, in150;
output wire [7:0] L00, L10, L20, L30,L40, L50, L60, L70,L80, L90, L100, L110,L120, L130, L140, L150;

reg [7:0] E01, W02, N03, S04;
reg [7:0] E11, W12, N13, S14;
reg [7:0] E21, W22, N23, S24;
reg [7:0] E31, W32, N33, S34;
reg [7:0] E41, W42, N43, S44;
reg [7:0] E51, W52, N53, S54;
reg [7:0] E61, W62, N63, S64;
reg [7:0] E71, W72, N73, S74;
reg [7:0] E81, W82, N83, S84;
reg [7:0] E91, W92, N93, S94;
reg [7:0] E101, W102, N103, S104;
reg [7:0] E111, W112, N113, S114;
reg [7:0] E121, W122, N123, S124;
reg [7:0] E131, W132, N133, S134;
reg [7:0] E141, W142, N143, S144;
reg [7:0] E151, W152, N153, S154;

input clk, rst, Write, Read;

wire [7:0] outEW04, outSN01, outEW15, outNS10, outSN12, outNS20, outEW26, outSN23, outEW37, outNS32;               
wire [7:0]  outEW48, outWE40, outSN45,outEW59, outWE51, outNS54, outSN56, outEW610, outWE62, outNS65,outSN67, 
  outEW711, outWE73, outNS76;
wire [7:0] outEW812,outWE84,outSN89,outEW913, outWE95, outNS98,outSN910, outEW1014,outWE106,outNS109,outSN1011,
  outEW1115,outWE117,outNS1110;
 wire[7:0] outWE128, outSN1213, outWE139, outNS1312, outSN1314, outWE1410, outNS1413,outSN1415,
   outWE1511,outNS1514;

router1 r0(.i00(in00), .i01(E02), .i02(W02), .i03(N03), .i04(S04), .clk(clk),
 .rst(rst), .o00(L00), .o01(outEW04), .o02(), .o03(), .o04(outSN01), .Write(Write), .Read(Read) );

router1 r1(.i00(in10), .i01(E11), .i02(W12), .i03(N13), .i04(S14), .clk(clk),
 .rst(rst), .o00(L10), .o01(outEW15), .o02(), .o03(outNS10), .o04(outSN12), .Write(Write), .Read(Read));

router1 r2(.i00(in20), .i01(E21), .i02(W22), .i03(N23), .i04(S24), .clk(clk),
 .rst(rst), .o00(L20), .o01(outEW26), .o02(), .o03(outNS20), .o04(outSN23), .Write(Write), .Read(Read));

router1 r3(.i00(in30), .i01(E31), .i02(W32), .i03(N33), .i04(S34), .clk(clk),
 .rst(rst), .o00(L30), .o01(outEW37), .o02(), .o03(outNS32), .o04(), .Write(Write), .Read(Read));
 
 router1 r4(.i00(in40), .i01(E41), .i02(W42), .i03(N43), .i04(S44), .clk(clk),
 .rst(rst), .o00(L40), .o01(outEW48), .o02(outWE40), .o03(), .o04(outSN45), .Write(Write), .Read(Read));
 
  router1 r5(.i00(in50), .i01(E51), .i02(W52), .i03(N53), .i04(S54), .clk(clk),
 .rst(rst), .o00(L50), .o01(outEW59), .o02(outWE51), .o03(outNS54), .o04(outSN56), .Write(Write), .Read(Read));
 
  router1 r6(.i00(in60), .i01(E61), .i02(W62), .i03(N63), .i04(S64), .clk(clk),
 .rst(rst), .o00(L60), .o01(outEW610), .o02(outWE62), .o03(outNS65), .o04(outSN67), .Write(Write), .Read(Read));
 
  router1 r7(.i00(in70), .i01(E71), .i02(W72), .i03(N73), .i04(S74), .clk(clk),
 .rst(rst), .o00(L70), .o01(outEW711), .o02(outWE73), .o03(outNS76), .o04(), .Write(Write), .Read(Read));
 
  router1 r8(.i00(in80), .i01(E81), .i02(W82), .i03(N83), .i04(S84), .clk(clk),
 .rst(rst), .o00(L80), .o01(outEW812), .o02(outWE84), .o03(), .o04(outSN89), .Write(Write), .Read(Read));
 
 router1 r9(.i00(in90), .i01(E91), .i02(W92), .i03(N93), .i04(S94), .clk(clk),
 .rst(rst), .o00(L90), .o01(outEW913), .o02(outWE95), .o03(outNS98), .o04(outSN910), .Write(Write), .Read(Read));
 
 router1 r10(.i00(in100), .i01(E101), .i02(W102), .i03(N103), .i04(S104), .clk(clk),
 .rst(rst), .o00(L1000), .o01(outEW1014), .o02(outWE106), .o03(outNS109), .o04(outSN1011), .Write(Write), .Read(Read));
 
  router1 r11(.i00(in1100), .i01(E111), .i02(W112), .i03(N113), .i04(S114), .clk(clk),
 .rst(rst), .o00(L1100), .o01(outEW1115), .o02(outWE117), .o03(outNS1110), .o04(), .Write(Write), .Read(Read));
 
   router1 r12(.i00(in1200), .i01(E121), .i02(W122), .i03(N123), .i04(S124), .clk(clk),
 .rst(rst), .o00(L1200), .o01(), .o02(outWE128), .o03(), .o04(outSN1213), .Write(Write), .Read(Read));
 
   router1 r13(.i00(in1300), .i01(E131), .i02(W132), .i03(N133), .i04(S134), .clk(clk),
 .rst(rst), .o00(L1300), .o01(), .o02(outWE139), .o03(outNS1312), .o04(outSN1314), .Write(Write), .Read(Read));
 
   router1 r14(.i00(in1400), .i01(E141), .i02(W142), .i03(N143), .i04(S144), .clk(clk),
 .rst(rst), .o00(L1400), .o01(), .o02(outWE1410), .o03(outNS1413), .o04(outSN1415), .Write(Write), .Read(Read));
 
 router1 r15(.i00(in1500), .i01(E151), .i02(W152), .i03(N153), .i04(S154), .clk(clk),
 .rst(rst), .o00(L1500), .o01(), .o02(outWE1511), .o03(outNS1514), .o04(), .Write(Write), .Read(Read));

always @(negedge clk)
begin
/*0*/
E01<=outWE40;
S04<=outNS10;

/*1*/
E11<=outWE51;
N13<=outSN01;
S14<=outNS20;
/*2*/
E21<=outWE62;
N23<=outSN12;
S24<=outNS32;
/*3*/
E31<=outWE73;
N33<=outSN23;
/*4*/
E41<=outWE84;
W42<=outEW04;
S44<=outNS54;
/*5*/
E51<=outWE95;
W52<=outEW15;
N53<=outSN45;
S54<=outNS65;
/*6*/
E61<=outWE106;
W62<=outEW26;
N63<=outSN56;
S64<=outNS76;
/*7*/
E71<=outWE117;
W72<=outEW37;
N73<=outSN67;
/*8*/
E81<=outWE128;
W82<=outEW48;
S84<=outNS98;
/*9*/
E91<=outWE139;
W92<=outEW59;
N93<=outSN89;
S94<=outNS109;
/*10*/
E101<=outWE1410;
W102<=outEW610;
N103<=outSN910;
S104<=outNS1110;
/*11*/
E111<=outWE1511;
W112<=outEW711;
N113<=outSN1011;
/*12*/
W122<=outEW812;
S124<=outNS1312;
/*13*/
W132<=outEW913;
N133<=outSN1213;
S134<=outNS1413;
/*14*/
W142<=outEW1014;
N143<=outSN1314;
S144<=outNS1514;
/*13*/
W152<=outEW1115;
N153<=outSN1415;
end 
endmodule
