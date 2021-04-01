`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:10 04/25/2017 
// Design Name: 
// Module Name:    lfsr 
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
module mesh ( t1, t17, // t2, t3, t4,t5,  t6, t7, t8, t9, t10,
//t11, t12, t13, t14, t15, t16, t17, t18, t19, t20,
//t21, t22, t23, t24, t25, t26, t27, t28, t29, t30,
//t31, t32, t33, t34, t35, t36,
clk, reset,  Write);

input clk, reset, Write; 
wire[5:0] r00, r01, r02, r03, r04, r05; 
wire[5:0] r10, r11, r12, r13, r14, r15; 
wire[5:0] r20, r21, r22, r23, r24, r25; 
wire[5:0] r30, r31, r32, r33, r34, r35; 
wire[5:0] r40, r41, r42, r43, r44, r45; 
wire[5:0] r50, r51, r52, r53, r54, r55; 

//output reg[7:0] count=8'b00000001;
//reg[7:0] k1, k17;

output reg[7:0] t1, t17;
//output 
reg[2:0] t2, t3, t4,t5,  t6, t7, t8, t9, t10;
//output
reg[2:0] t11, t12, t13, t14, t15, t16, t18, t19, t20;
//output 
reg[2:0] t21, t22, t23, t24, t25, t26, t27, t28, t29, t30;
//output 
reg[2:0] t31, t32, t33, t34, t35, t36; 

assign r00=6'b000000;
assign r01=6'b000001;
assign r02=6'b000010;
assign r03=6'b000011;
assign r04=6'b000100;
assign r05=6'b000101;

assign r10=6'b000110;
assign r11=6'b000111;
assign r12=6'b001000;
assign r13=6'b001001;
assign r14=6'b001010;
assign r15=6'b001011;

assign r20=6'b001100;
assign r21=6'b001101;
assign r22=6'b001110;
assign r23=6'b001111;
assign r24=6'b010000;
assign r25=6'b010001;

assign r30=6'b010010;
assign r31=6'b010011;
assign r32=6'b010100;
assign r33=6'b010101;
assign r34=6'b010110;
assign r35=6'b010111;

assign r40=6'b011000;
assign r41=6'b011001;
assign r42=6'b011010;
assign r43=6'b011011;
assign r44=6'b011100;
assign r45=6'b011101;

assign r50=6'b011110;
assign r51=6'b011111;
assign r52=6'b100000;
assign r53=6'b100001;
assign r54=6'b100010;
assign r55=6'b100011;

parameter DATAWID = 32;

//input and ouput port of router

wire [DATAWID-1:0] local_in00;
wire [DATAWID-1:0] local_out00;
wire [DATAWID-1:0] local_in01;
wire [DATAWID-1:0] local_out01;
wire [DATAWID-1:0] local_in02;
wire [DATAWID-1:0] local_out02;
wire [DATAWID-1:0] local_in03;
wire [DATAWID-1:0] local_out03;
wire [DATAWID-1:0] local_in04;
wire [DATAWID-1:0] local_out04;
wire [DATAWID-1:0] local_in05;
wire [DATAWID-1:0] local_out05;
wire [DATAWID-1:0] local_in10;
wire [DATAWID-1:0] local_out10;
wire [DATAWID-1:0] local_in11;
wire [DATAWID-1:0] local_out11;
wire [DATAWID-1:0] local_in12;
wire [DATAWID-1:0] local_out12;
wire [DATAWID-1:0] local_in13;
wire [DATAWID-1:0] local_out13;
wire [DATAWID-1:0] local_in14;
wire [DATAWID-1:0] local_out14;
wire [DATAWID-1:0] local_in15;
wire [DATAWID-1:0] local_out15;
wire [DATAWID-1:0] local_in20;
wire [DATAWID-1:0] local_out20;
wire [DATAWID-1:0] local_in21;
wire [DATAWID-1:0] local_out21;
wire [DATAWID-1:0] local_in22;
wire [DATAWID-1:0] local_out22;
wire [DATAWID-1:0] local_in23;
wire [DATAWID-1:0] local_out23;
wire [DATAWID-1:0] local_in24;
wire [DATAWID-1:0] local_out24;
wire [DATAWID-1:0] local_in25;
wire [DATAWID-1:0] local_out25;
wire [DATAWID-1:0] local_in30;
wire [DATAWID-1:0] local_out30;
wire [DATAWID-1:0] local_in31;
wire [DATAWID-1:0] local_out31;
wire [DATAWID-1:0] local_in32;
wire [DATAWID-1:0] local_out32;
wire [DATAWID-1:0] local_in33;
wire [DATAWID-1:0] local_out33;
wire [DATAWID-1:0] local_in34;
wire [DATAWID-1:0] local_out34;
wire [DATAWID-1:0] local_in35;
wire [DATAWID-1:0] local_out35;
wire [DATAWID-1:0] local_in40;
wire [DATAWID-1:0] local_out40;
wire [DATAWID-1:0] local_in41;
wire [DATAWID-1:0] local_out41;
wire [DATAWID-1:0] local_in42;
wire [DATAWID-1:0] local_out42;
wire [DATAWID-1:0] local_in43;
wire [DATAWID-1:0] local_out43;
wire [DATAWID-1:0] local_in44;
wire [DATAWID-1:0] local_out44;
wire [DATAWID-1:0] local_in45;
wire [DATAWID-1:0] local_out45;
wire [DATAWID-1:0] local_in50;
wire [DATAWID-1:0] local_out50;
wire [DATAWID-1:0] local_in51;
wire [DATAWID-1:0] local_out51;
wire [DATAWID-1:0] local_in52;
wire [DATAWID-1:0] local_out52;
wire [DATAWID-1:0] local_in53;
wire [DATAWID-1:0] local_out53;
wire [DATAWID-1:0] local_in54;
wire [DATAWID-1:0] local_out54;
wire [DATAWID-1:0] local_in55;
wire [DATAWID-1:0] local_out55;

//input port of router E, W,N,S, NE,NW,SE,SW

reg [DATAWID-1:0] east_in00;
reg [DATAWID-1:0] south_in00;
reg [DATAWID-1:0] west_in05;
reg [DATAWID-1:0] south_in05;
reg [DATAWID-1:0] east_in50;
reg [DATAWID-1:0] north_in50;
reg [DATAWID-1:0] west_in55;
reg [DATAWID-1:0] north_in55;
reg [DATAWID-1:0] east_in10;
reg [DATAWID-1:0] north_in10;
reg [DATAWID-1:0] south_in10;
reg [DATAWID-1:0] east_in20;
reg [DATAWID-1:0] north_in20;
reg [DATAWID-1:0] south_in20;
reg [DATAWID-1:0] east_in30;
reg [DATAWID-1:0] north_in30;
reg [DATAWID-1:0] south_in30;
reg [DATAWID-1:0] east_in40;
reg [DATAWID-1:0] north_in40;
reg [DATAWID-1:0] south_in40;
reg [DATAWID-1:0] west_in15;
reg [DATAWID-1:0] north_in15;
reg [DATAWID-1:0] south_in15;
reg [DATAWID-1:0] west_in25;
reg [DATAWID-1:0] north_in25;
reg [DATAWID-1:0] south_in25;
reg [DATAWID-1:0] west_in35;
reg [DATAWID-1:0] north_in35;
reg [DATAWID-1:0] south_in35;
reg [DATAWID-1:0] west_in45;
reg [DATAWID-1:0] north_in45;
reg [DATAWID-1:0] south_in45;
reg [DATAWID-1:0] east_in01;
reg [DATAWID-1:0] west_in01;
reg [DATAWID-1:0] south_in01;
reg [DATAWID-1:0] east_in02;
reg [DATAWID-1:0] west_in02;
reg [DATAWID-1:0] south_in02;
reg [DATAWID-1:0] east_in03;
reg [DATAWID-1:0] west_in03;
reg [DATAWID-1:0] south_in03;
reg [DATAWID-1:0] east_in04;
reg [DATAWID-1:0] west_in04;
reg [DATAWID-1:0] south_in04;
reg [DATAWID-1:0] east_in51;
reg [DATAWID-1:0] west_in51;
reg [DATAWID-1:0] north_in51;
reg [DATAWID-1:0] east_in52;
reg [DATAWID-1:0] west_in52;
reg [DATAWID-1:0] north_in52;
reg [DATAWID-1:0] east_in53;
reg [DATAWID-1:0] west_in53;
reg [DATAWID-1:0] north_in53;
reg [DATAWID-1:0] east_in54;
reg [DATAWID-1:0] west_in54;
reg [DATAWID-1:0] north_in54;
reg [DATAWID-1:0] east_in11;
reg [DATAWID-1:0] west_in11;
reg [DATAWID-1:0] north_in11;
reg [DATAWID-1:0] south_in11;
reg [DATAWID-1:0] east_in12;
reg [DATAWID-1:0] west_in12;
reg [DATAWID-1:0] north_in12;
reg [DATAWID-1:0] south_in12;
reg [DATAWID-1:0] east_in13;
reg [DATAWID-1:0] west_in13;
reg [DATAWID-1:0] north_in13;
reg [DATAWID-1:0] south_in13;
reg [DATAWID-1:0] east_in14;
reg [DATAWID-1:0] west_in14;
reg [DATAWID-1:0] north_in14;
reg [DATAWID-1:0] south_in14;
reg [DATAWID-1:0] east_in21;
reg [DATAWID-1:0] west_in21;
reg [DATAWID-1:0] north_in21;
reg [DATAWID-1:0] south_in21;
reg [DATAWID-1:0] east_in22;
reg [DATAWID-1:0] west_in22;
reg [DATAWID-1:0] north_in22;
reg [DATAWID-1:0] south_in22;
reg [DATAWID-1:0] east_in23;
reg [DATAWID-1:0] west_in23;
reg [DATAWID-1:0] north_in23;
reg [DATAWID-1:0] south_in23;
reg [DATAWID-1:0] east_in24;
reg [DATAWID-1:0] west_in24;
reg [DATAWID-1:0] north_in24;
reg [DATAWID-1:0] south_in24;
reg [DATAWID-1:0] east_in31;
reg [DATAWID-1:0] west_in31;
reg [DATAWID-1:0] north_in31;
reg [DATAWID-1:0] south_in31;
reg [DATAWID-1:0] east_in32;
reg [DATAWID-1:0] west_in32;
reg [DATAWID-1:0] north_in32;
reg [DATAWID-1:0] south_in32;
reg [DATAWID-1:0] east_in33;
reg [DATAWID-1:0] west_in33;
reg [DATAWID-1:0] north_in33;
reg [DATAWID-1:0] south_in33;
reg [DATAWID-1:0] east_in34;
reg [DATAWID-1:0] west_in34;
reg [DATAWID-1:0] north_in34;
reg [DATAWID-1:0] south_in34;
reg [DATAWID-1:0] east_in41;
reg [DATAWID-1:0] west_in41;
reg [DATAWID-1:0] north_in41;
reg [DATAWID-1:0] south_in41;
reg [DATAWID-1:0] east_in42;
reg [DATAWID-1:0] west_in42;
reg [DATAWID-1:0] north_in42;
reg [DATAWID-1:0] south_in42;
reg [DATAWID-1:0] east_in43;
reg [DATAWID-1:0] west_in43;
reg [DATAWID-1:0] north_in43;
reg [DATAWID-1:0] south_in43;
reg [DATAWID-1:0] east_in44;
reg [DATAWID-1:0] west_in44;
reg [DATAWID-1:0] north_in44;
reg [DATAWID-1:0] south_in44;


//output port of router East, west, south, north, southeast, southwest, northeast, northwest

wire [DATAWID-1:0] east_out00;
wire [DATAWID-1:0] south_out00;
wire [DATAWID-1:0] west_out05;
wire [DATAWID-1:0] south_out05;
wire [DATAWID-1:0] east_out50;
wire [DATAWID-1:0] north_out50;
wire [DATAWID-1:0] west_out55;
wire [DATAWID-1:0] north_out55;
wire [DATAWID-1:0] east_out10;
wire [DATAWID-1:0] north_out10;
wire [DATAWID-1:0] south_out10;
wire [DATAWID-1:0] east_out20;
wire [DATAWID-1:0] north_out20;
wire [DATAWID-1:0] south_out20;
wire [DATAWID-1:0] east_out30;
wire [DATAWID-1:0] north_out30;
wire [DATAWID-1:0] south_out30;
wire [DATAWID-1:0] east_out40;
wire [DATAWID-1:0] north_out40;
wire [DATAWID-1:0] south_out40;
wire [DATAWID-1:0] west_out15;
wire [DATAWID-1:0] north_out15;
wire [DATAWID-1:0] south_out15;
wire [DATAWID-1:0] west_out25;
wire [DATAWID-1:0] north_out25;
wire [DATAWID-1:0] south_out25;
wire [DATAWID-1:0] west_out35;
wire [DATAWID-1:0] north_out35;
wire [DATAWID-1:0] south_out35;
wire [DATAWID-1:0] west_out45;
wire [DATAWID-1:0] north_out45;
wire [DATAWID-1:0] south_out45;
wire [DATAWID-1:0] east_out01;
wire [DATAWID-1:0] west_out01;
wire [DATAWID-1:0] south_out01;
wire [DATAWID-1:0] east_out02;
wire [DATAWID-1:0] west_out02;
wire [DATAWID-1:0] south_out02;
wire [DATAWID-1:0] east_out03;
wire [DATAWID-1:0] west_out03;
wire [DATAWID-1:0] south_out03;
wire [DATAWID-1:0] east_out04;
wire [DATAWID-1:0] west_out04;
wire [DATAWID-1:0] south_out04;
wire [DATAWID-1:0] east_out51;
wire [DATAWID-1:0] west_out51;
wire [DATAWID-1:0] north_out51;
wire [DATAWID-1:0] east_out52;
wire [DATAWID-1:0] west_out52;
wire [DATAWID-1:0] north_out52;
wire [DATAWID-1:0] east_out53;
wire [DATAWID-1:0] west_out53;
wire [DATAWID-1:0] north_out53;
wire [DATAWID-1:0] east_out54;
wire [DATAWID-1:0] west_out54;
wire [DATAWID-1:0] north_out54;
wire [DATAWID-1:0] east_out11;
wire [DATAWID-1:0] west_out11;
wire [DATAWID-1:0] north_out11;
wire [DATAWID-1:0] south_out11;
wire [DATAWID-1:0] east_out12;
wire [DATAWID-1:0] west_out12;
wire [DATAWID-1:0] north_out12;
wire [DATAWID-1:0] south_out12;
wire [DATAWID-1:0] east_out13;
wire [DATAWID-1:0] west_out13;
wire [DATAWID-1:0] north_out13;
wire [DATAWID-1:0] south_out13;
wire [DATAWID-1:0] east_out14;
wire [DATAWID-1:0] west_out14;
wire [DATAWID-1:0] north_out14;
wire [DATAWID-1:0] south_out14;
wire [DATAWID-1:0] east_out21;
wire [DATAWID-1:0] west_out21;
wire [DATAWID-1:0] north_out21;
wire [DATAWID-1:0] south_out21;
wire [DATAWID-1:0] east_out22;
wire [DATAWID-1:0] west_out22;
wire [DATAWID-1:0] north_out22;
wire [DATAWID-1:0] south_out22;
wire [DATAWID-1:0] east_out23;
wire [DATAWID-1:0] west_out23;
wire [DATAWID-1:0] north_out23;
wire [DATAWID-1:0] south_out23;
wire [DATAWID-1:0] east_out24;
wire [DATAWID-1:0] west_out24;
wire [DATAWID-1:0] north_out24;
wire [DATAWID-1:0] south_out24;
wire [DATAWID-1:0] east_out31;
wire [DATAWID-1:0] west_out31;
wire [DATAWID-1:0] north_out31;
wire [DATAWID-1:0] south_out31;
wire [DATAWID-1:0] east_out32;
wire [DATAWID-1:0] west_out32;
wire [DATAWID-1:0] north_out32;
wire [DATAWID-1:0] south_out32;
wire [DATAWID-1:0] east_out33;
wire [DATAWID-1:0] west_out33;
wire [DATAWID-1:0] north_out33;
wire [DATAWID-1:0] south_out33;
wire [DATAWID-1:0] east_out34;
wire [DATAWID-1:0] west_out34;
wire [DATAWID-1:0] north_out34;
wire [DATAWID-1:0] south_out34;
wire [DATAWID-1:0] east_out41;
wire [DATAWID-1:0] west_out41;
wire [DATAWID-1:0] north_out41;
wire [DATAWID-1:0] south_out41;
wire [DATAWID-1:0] east_out42;
wire [DATAWID-1:0] west_out42;
wire [DATAWID-1:0] north_out42;
wire [DATAWID-1:0] south_out42;
wire [DATAWID-1:0] east_out43;
wire [DATAWID-1:0] west_out43;
wire [DATAWID-1:0] north_out43;
wire [DATAWID-1:0] south_out43;
wire [DATAWID-1:0] east_out44;
wire [DATAWID-1:0] west_out44;
wire [DATAWID-1:0] north_out44;
wire [DATAWID-1:0] south_out44;

// first router
(* keep_hierarchy = "yes" *) lfsr l1(.clk(clk), .reset(reset), .out1(local_in00));
router r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(), .i03(),.i04(south_in00),.o00(local_out00),.o01(east_out00), .o02(),.o03(),.o04(south_out00),.Write(Write), .r1(r00));

// second router
(* keep_hierarchy = "yes" *) lfsr l2(.clk(clk), .reset(reset), .out1(local_in01));
router r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(east_in01),.i02(west_in01),.i03(),.i04(south_in01),.o00(local_out01),.o01(east_out01),.o02(west_out01),.o03(),.o04(south_out01),
.Write(Write), .r1(r01));

// 3 router
(* keep_hierarchy = "yes" *) lfsr l3(.clk(clk), .reset(reset), .out1(local_in02));
router r_$02( .clk(clk), .rst(reset),.i00(local_in02),.i01(east_in02),.i02(west_in02),.i03(),.i04(south_in02),.o00(local_out02),.o01(east_out02),.o02(west_out02),.o03(),.o04(south_out02),
.Write(Write),.r1(r02));

// 4 router
(* keep_hierarchy = "yes" *) lfsr l4(.clk(clk), .reset(reset), .out1(local_in03));
router r_$03( .clk(clk), .rst(reset),.i00(local_in03),.i01(east_in03),.i02(west_in03),.i03(),.i04(south_in03),.o00(local_out03),.o01(east_out03),.o02(west_out03),.o03(),.o04(south_out03),
.Write(Write), .r1(r03));

// 5 router
(* keep_hierarchy = "yes" *) lfsr l5(.clk(clk), .reset(reset), .out1(local_in04));
router r_$04( .clk(clk), .rst(reset),.i00(local_in04),.i01(east_in04),.i02(west_in04),.i03(),.i04(south_in04),.o00(local_out04),.o01(east_out04),.o02(west_out04),.o03(),.o04(south_out04),
.Write(Write), .r1(r04));

// 6 router
(* keep_hierarchy = "yes" *) lfsr l6(.clk(clk), .reset(reset), .out1(local_in05));
router r_$05( .clk(clk), .rst(reset),.i00(local_in05),.i01(),.i02(west_in05),.i03(), .i04(south_in05),.o00(local_out05),.o01(),.o02(west_out05),.o03(),.o04(south_out05),.Write(Write),.r1(r05));

// 7 router
(* keep_hierarchy = "yes" *) lfsr l7(.clk(clk), .reset(reset), .out1(local_in10));
router r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in10),.i02(), .i03(north_in10),.i04(south_in10),.o00(local_out10),.o01(east_out10),.o02(),.o03(north_out10),
.o04(south_out10),.Write(Write), .r1(r10));

// 8 router 
(* keep_hierarchy = "yes" *) lfsr l8(.clk(clk), .reset(reset), .out1(local_in11));
router r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(east_in11),.i02(west_in11),.i03(north_in11),.i04(south_in11),.o00(local_out11),.o01(east_out11),.o02(west_out11),.o03(north_out11),
.o04(south_out11),.Write(Write), .r1(r11));

// 9 router
(* keep_hierarchy = "yes" *) lfsr l9(.clk(clk), .reset(reset), .out1(local_in12));
router r_$12( .clk(clk), .rst(reset),.i00(local_in12),.i01(east_in12),.i02(west_in12),.i03(north_in12),.i04(south_in12),.o00(local_out12),.o01(east_out12),.o02(west_out12),.o03(north_out12),
.o04(south_out12),.Write(Write), .r1(r12));

// 10 router
(* keep_hierarchy = "yes" *) lfsr l10(.clk(clk), .reset(reset), .out1(local_in13));
router r_$13( .clk(clk), .rst(reset),.i00(local_in13),.i01(east_in13),.i02(west_in13),.i03(north_in13),.i04(south_in13),.o00(local_out13),.o01(east_out13),.o02(west_out13),.o03(north_out13),
.o04(south_out13),.Write(Write), .r1(r13));

//11 router
(* keep_hierarchy = "yes" *) lfsr l11(.clk(clk), .reset(reset), .out1(local_in14));
router r_$14( .clk(clk), .rst(reset),.i00(local_in14),.i01(east_in14),.i02(west_in14),.i03(north_in14),.i04(south_in14),.o00(local_out14),.o01(east_out14),.o02(west_out14),.o03(north_out14),
.o04(south_out14),.Write(Write), .r1(r14));

// 12 router
(* keep_hierarchy = "yes" *) lfsr l12(.clk(clk), .reset(reset), .out1(local_in15));
router r_$15( .clk(clk), .rst(reset),.i00(local_in15),.i01(),.i02(west_in15), .i03(north_in15),.i04(south_in15),.o00(local_out15),.o01(), .o02(west_out15),.o03(north_out15),
.o04(south_out15),.Write(Write), .r1(r15));

// 13 router
(* keep_hierarchy = "yes" *) lfsr l13(.clk(clk), .reset(reset), .out1(local_in20));
router r_$20( .clk(clk), .rst(reset),.i00(local_in20),.i01(east_in20),.i02(), .i03(north_in20),.i04(south_in20),.o00(local_out20),.o01(east_out20),.o02(),.o03(north_out20),
.o04(south_out20),.Write(Write), .r1(r20));

// 14 router
(* keep_hierarchy = "yes" *) lfsr l14(.clk(clk), .reset(reset), .out1(local_in21));
router r_$21( .clk(clk), .rst(reset),.i00(local_in21),.i01(east_in21),.i02(west_in21),.i03(north_in21),.i04(south_in21),.o00(local_out21),.o01(east_out21),.o02(west_out21),.o03(north_out21),
.o04(south_out21),.Write(Write), .r1(r21));

// 15 router
(* keep_hierarchy = "yes" *) lfsr l15(.clk(clk), .reset(reset), .out1(local_in22));
router r_$22( .clk(clk), .rst(reset),.i00(local_in22),.i01(east_in22),.i02(west_in22),.i03(north_in22),.i04(south_in22),.o00(local_out22),.o01(east_out22),.o02(west_out22),.o03(north_out22),
.o04(south_out22),.Write(Write), .r1(r22));

// 16 router
(* keep_hierarchy = "yes" *) lfsr l16(.clk(clk), .reset(reset), .out1(local_in23));
router r_$23( .clk(clk), .rst(reset),.i00(local_in23),.i01(east_in23),.i02(west_in23),.i03(north_in23),.i04(south_in23),.o00(local_out23),.o01(east_out23),.o02(west_out23),.o03(north_out23),
.o04(south_out23),.Write(Write), .r1(r23));

// 17 router
(* keep_hierarchy = "yes" *) lfsr l17(.clk(clk), .reset(reset), .out1(local_in24));
router r_$24( .clk(clk), .rst(reset),.i00(local_in24),.i01(east_in24),.i02(west_in24),.i03(north_in24),.i04(south_in24),.o00(local_out24),.o01(east_out24),.o02(west_out24),.o03(north_out24),
.o04(south_out24),.Write(Write),.r1(r24));


//18 router
(* keep_hierarchy = "yes" *) lfsr l18(.clk(clk), .reset(reset), .out1(local_in25));
router r_$25( .clk(clk), .rst(reset),.i00(local_in25),.i01(),.i02(west_in25), .i03(north_in25),.i04(south_in25),.o00(local_out25),.o01(), .o02(west_out25),.o03(north_out25),
.o04(south_out25),.Write(Write),.r1(r25));


//19 router
(* keep_hierarchy = "yes" *) lfsr l19(.clk(clk), .reset(reset), .out1(local_in30));
router r_$30( .clk(clk), .rst(reset),.i00(local_in30),.i01(east_in30),.i02(), .i03(north_in30),.i04(south_in30),.o00(local_out30),.o01(east_out30),.o02(),.o03(north_out30),
.o04(south_out30),.Write(Write), .r1(r30));

//20 router
(* keep_hierarchy = "yes" *) lfsr l20(.clk(clk), .reset(reset), .out1(local_in31));
router r_$31( .clk(clk), .rst(reset),.i00(local_in31),.i01(east_in31),.i02(west_in31),.i03(north_in31),.i04(south_in31),.o00(local_out31),.o01(east_out31),.o02(west_out31),.o03(north_out31),
.o04(south_out31),.Write(Write), .r1(r31));

//21 router
(* keep_hierarchy = "yes" *) lfsr l21(.clk(clk), .reset(reset), .out1(local_in32));
router r_$32( .clk(clk), .rst(reset),.i00(local_in32),.i01(east_in32),.i02(west_in32),.i03(north_in32),.i04(south_in32),.o00(local_out32),.o01(east_out32),.o02(west_out32),.o03(north_out32),
.o04(south_out32),.Write(Write), .r1(r32));

//22 router
(* keep_hierarchy = "yes" *) lfsr l22(.clk(clk), .reset(reset), .out1(local_in33));
router r_$33( .clk(clk), .rst(reset),.i00(local_in33),.i01(east_in33),.i02(west_in33),.i03(north_in33),.i04(south_in33),.o00(local_out33),.o01(east_out33),.o02(west_out33),.o03(north_out33),
.o04(south_out33),.Write(Write), .r1(r33));

//23 router
(* keep_hierarchy = "yes" *) lfsr l23(.clk(clk), .reset(reset), .out1(local_in34));
router r_$34( .clk(clk), .rst(reset),.i00(local_in34),.i01(east_in34),.i02(west_in34),.i03(north_in34),.i04(south_in34),.o00(local_out34),.o01(east_out34),.o02(west_out34),.o03(north_out34),
.o04(south_out34),.Write(Write), .r1(r34));

//24 router
(* keep_hierarchy = "yes" *) lfsr l24(.clk(clk), .reset(reset), .out1(local_in35));
router r_$35( .clk(clk), .rst(reset),.i00(local_in35),.i01(),.i02(west_in35), .i03(north_in35),.i04(south_in35),.o00(local_out35),.o01(), .o02(west_out35),.o03(north_out35),
.o04(south_out35),.Write(Write), .r1(r35));

//25 router
(* keep_hierarchy = "yes" *) lfsr l25(.clk(clk), .reset(reset), .out1(local_in40));
router r_$40( .clk(clk), .rst(reset),.i00(local_in40),.i01(east_in40),.i02(), .i03(north_in40),.i04(south_in40),.o00(local_out40),.o01(east_out40),.o02(),.o03(north_out40),.o04(south_out40),
.Write(Write), .r1(r40));

//26 router 
(* keep_hierarchy = "yes" *) lfsr l26(.clk(clk), .reset(reset), .out1(local_in41));
router r_$41( .clk(clk), .rst(reset),.i00(local_in41),.i01(east_in41),.i02(west_in41),.i03(north_in41),.i04(south_in41),.o00(local_out41),.o01(east_out41),.o02(west_out41),.o03(north_out41),
.o04(south_out41),.Write(Write), .r1(r41));

//27 router
(* keep_hierarchy = "yes" *) lfsr l27(.clk(clk), .reset(reset), .out1(local_in42));
router r_$42( .clk(clk), .rst(reset),.i00(local_in42),.i01(east_in42),.i02(west_in42),.i03(north_in42),.i04(south_in42),.o00(local_out42),.o01(east_out42),.o02(west_out42),.o03(north_out42),
.o04(south_out42),.Write(Write), .r1(r42));

//28 router 
(* keep_hierarchy = "yes" *) lfsr l28(.clk(clk), .reset(reset), .out1(local_in43));
router r_$43( .clk(clk), .rst(reset),.i00(local_in43),.i01(east_in43),.i02(west_in43),.i03(north_in43),.i04(south_in43),.o00(local_out43),.o01(east_out43),.o02(west_out43),.o03(north_out43),
.o04(south_out43),.Write(Write), .r1(r43));

//29 router
(* keep_hierarchy = "yes" *) lfsr l29(.clk(clk), .reset(reset), .out1(local_in44));
router r_$44( .clk(clk), .rst(reset),.i00(local_in44),.i01(east_in44),.i02(west_in44),.i03(north_in44),.i04(south_in44),.o00(local_out44),.o01(east_out44),.o02(west_out44),.o03(north_out44),
.o04(south_out44),.Write(Write), .r1(r44));

//30 router
(* keep_hierarchy = "yes" *) lfsr l30(.clk(clk), .reset(reset), .out1(local_in45));
router r_$45( .clk(clk), .rst(reset),.i00(local_in45),.i01(),.i02(west_in45), .i03(north_in45),.i04(south_in45),.o00(local_out45),.o01(), .o02(west_out45),.o03(north_out45),
.o04(south_out45),.Write(Write), .r1(r45));

//31 router
(* keep_hierarchy = "yes" *) lfsr l31(.clk(clk), .reset(reset), .out1(local_in50));
router r_$50( .clk(clk), .rst(reset),.i00(local_in50),.i01(east_in50),.i02(), .i03(north_in50),.i04(),.o00(local_out50),.o01(east_out50),.o02(),.o03(north_out50),.o04(),.Write(Write), .r1(r50));

//32 router
(* keep_hierarchy = "yes" *) lfsr l32(.clk(clk), .reset(reset), .out1(local_in51));
router r_$51( .clk(clk), .rst(reset),.i00(local_in51),.i01(east_in51),.i02(west_in51),.i03(north_in51),.i04(),.o00(local_out51),.o01(east_out51),.o02(west_out51),.o03(north_out51),.o04(),
.Write(Write), .r1(r51));

//33 router
(* keep_hierarchy = "yes" *) lfsr l33(.clk(clk), .reset(reset), .out1(local_in52));
router r_$52( .clk(clk), .rst(reset),.i00(local_in52),.i01(east_in52),.i02(west_in52),.i03(north_in52),.i04(),.o00(local_out52),.o01(east_out52),.o02(west_out52),.o03(north_out52),.o04(),
.Write(Write), .r1(r52));

//34 router
(* keep_hierarchy = "yes" *) lfsr l34(.clk(clk), .reset(reset), .out1(local_in53));
router r_$53( .clk(clk), .rst(reset),.i00(local_in53),.i01(east_in53),.i02(west_in53),.i03(north_in53),.i04(),.o00(local_out53),.o01(east_out53),.o02(west_out53),.o03(north_out53),.o04(),
.Write(Write), .r1(r53));

//35 router
(* keep_hierarchy = "yes" *) lfsr l35(.clk(clk), .reset(reset), .out1(local_in54));
router r_$54( .clk(clk), .rst(reset),.i00(local_in54),.i01(east_in54),.i02(west_in54),.i03(north_in54),.i04(),.o00(local_out54),.o01(east_out54),.o02(west_out54),.o03(north_out54),.o04(),
.Write(Write), .r1(r54));

//36 router
(* keep_hierarchy = "yes" *) lfsr l36(.clk(clk), .reset(reset), .out1(local_in55));
router r_$55( .clk(clk), .rst(reset),.i00(local_in55),.i01(),.i02(west_in55), .i03(north_in55),.i04(),.o00(local_out55),.o01(),.o02(west_out55),.o03(north_out55),.o04(),.Write(Write), .r1(r55));

/*
always @(posedge clk)
begin
if(reset)
begin
count=8'b0;
end
else
begin
count=count+1'b1;
end
end*/

always @ ( posedge clk)
begin
west_in01<=east_out00;
north_in10<=south_out00;
west_in02<=east_out01;
east_in00<=west_out01;
north_in11<=south_out01;
west_in03<=east_out02;
east_in01<=west_out02;
north_in12<=south_out02;
west_in04<=east_out03;
east_in02<=west_out03;
north_in13<=south_out03;
west_in05<=east_out04;
east_in03<=west_out04;
north_in14<=south_out04;
east_in04<=west_out05;
north_in15<=south_out05;
west_in11<=east_out10;
south_in00<=north_out10;
north_in20<=south_out10;
west_in12<=east_out11;
east_in10<=west_out11;
south_in01<=north_out11;
north_in21<=south_out11;
west_in13<=east_out12;
east_in11<=west_out12;
south_in02<=north_out12;
north_in22<=south_out12;
west_in14<=east_out13;
east_in12<=west_out13;
south_in03<=north_out13;
north_in23<=south_out13;
west_in15<=east_out14;
east_in13<=west_out14;
south_in04<=north_out14;
north_in24<=south_out14;
east_in14<=west_out15;
south_in05<=north_out15;
north_in25<=south_out15;
west_in21<=east_out20;
south_in10<=north_out20;
north_in30<=south_out20;
west_in22<=east_out21;
east_in20<=west_out21;
south_in11<=north_out21;
north_in31<=south_out21;
west_in23<=east_out22;
east_in21<=west_out22;
south_in12<=north_out22;
north_in32<=south_out22;
west_in24<=east_out23;
east_in22<=west_out23;
south_in13<=north_out23;
north_in33<=south_out23;
west_in25<=east_out24;
east_in23<=west_out24;
south_in14<=north_out24;
north_in34<=south_out24;
east_in24<=west_out25;
south_in15<=north_out25;
north_in35<=south_out25;
west_in31<=east_out30;
south_in20<=north_out30;
north_in40<=south_out30;
west_in32<=east_out31;
east_in30<=west_out31;
south_in21<=north_out31;
north_in41<=south_out31;
west_in33<=east_out32;
east_in31<=west_out32;
south_in22<=north_out32;
north_in42<=south_out32;
west_in34<=east_out33;
east_in32<=west_out33;
south_in23<=north_out33;
north_in43<=south_out33;
west_in35<=east_out34;
east_in33<=west_out34;
south_in24<=north_out34;
north_in44<=south_out34;
east_in34<=west_out35;
south_in25<=north_out35;
north_in45<=south_out35;
west_in41<=east_out40;
south_in30<=north_out40;
north_in50<=south_out40;
west_in42<=east_out41;
east_in40<=west_out41;
south_in31<=north_out41;
north_in51<=south_out41;
west_in43<=east_out42;
east_in41<=west_out42;
south_in32<=north_out42;
north_in52<=south_out42;
west_in44<=east_out43;
east_in42<=west_out43;
south_in33<=north_out43;
north_in53<=south_out43;
west_in45<=east_out44;
east_in43<=west_out44;
south_in34<=north_out44;
north_in54<=south_out44;
east_in44<=west_out45;
south_in35<=north_out45;
north_in55<=south_out45;
west_in51<=east_out50;
south_in40<=north_out50;
west_in52<=east_out51;
east_in50<=west_out51;
south_in41<=north_out51;
west_in53<=east_out52;
east_in51<=west_out52;
south_in42<=north_out52;
west_in54<=east_out53;
east_in52<=west_out53;
south_in43<=north_out53;
west_in55<=east_out54;
east_in53<=west_out54;
south_in44<=north_out54;
east_in54<=west_out55;
south_in45<=north_out55;

end

always @ ( posedge clk)
begin

t1<=local_out00[21:14];
t2<=local_out01[16:14];
t3<=local_out02[16:14];
t4<=local_out03[16:14];
t5<=local_out04[16:14];
t6<=local_out05[16:14];


t7<=local_out10[16:14];
t8<=local_out11[16:14];
t9<=local_out12[16:14];
t10<=local_out13[16:14];
t11<=local_out14[16:14];
t12<=local_out15[16:14];


t13<=local_out20[16:14];
t14<=local_out21[16:14];
t15<=local_out22[16:14];
t16<=local_out23[16:14];
t17<=local_out24[21:14];
t18<=local_out25[16:14];


t19<=local_out30[16:14];
t20<=local_out31[16:14];
t21<=local_out32[16:14];
t22<=local_out33[16:14];
t23<=local_out34[16:14];
t24<=local_out35[16:14];

t25<=local_out40[16:14];
t26<=local_out41[16:14];
t27<=local_out42[16:14];
t28<=local_out43[16:14];
t29<=local_out44[16:14];
t30<=local_out45[16:14];


t31<=local_out50[16:14];
t32<=local_out51[16:14];
t33<=local_out52[16:14];
t34<=local_out53[16:14];
t35<=local_out54[16:14];
t36<=local_out55[16:14];

end
/*
always @(posedge clk)
begin
if(reset)
begin
t1=0;
t17=0;
end
else
begin
t1=count-k1;
t17=count-k17;
end
end */

endmodule
