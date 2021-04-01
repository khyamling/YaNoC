module mesh (
local_in00,local_out00,
local_in01,local_out01,
local_in02,local_out02,
local_in03,local_out03,
local_in04,local_out04,
local_in05,local_out05,
local_in10,local_out10,
local_in11,local_out11,
local_in12,local_out12,
local_in13,local_out13,
local_in14,local_out14,
local_in15,local_out15,
local_in20,local_out20,
local_in21,local_out21,
local_in22,local_out22,
local_in23,local_out23,
local_in24,local_out24,
local_in25,local_out25,
local_in30,local_out30,
local_in31,local_out31,
local_in32,local_out32,
local_in33,local_out33,
local_in34,local_out34,
local_in35,local_out35,
local_in40,local_out40,
local_in41,local_out41,
local_in42,local_out42,
local_in43,local_out43,
local_in44,local_out44,
local_in45,local_out45,
local_in50,local_out50,
local_in51,local_out51,
local_in52,local_out52,
local_in53,local_out53,
local_in54,local_out54,
local_in55,local_out55,
clk, reset,  Write, Read);
input clk, reset, Write, Read; 
parameter DATAWID = 8;
input [DATAWID-1:0] local_in00;
output [DATAWID-1:0] local_out00;
input [DATAWID-1:0] local_in01;
output [DATAWID-1:0] local_out01;
input [DATAWID-1:0] local_in02;
output [DATAWID-1:0] local_out02;
input [DATAWID-1:0] local_in03;
output [DATAWID-1:0] local_out03;
input [DATAWID-1:0] local_in04;
output [DATAWID-1:0] local_out04;
input [DATAWID-1:0] local_in05;
output [DATAWID-1:0] local_out05;
input [DATAWID-1:0] local_in10;
output [DATAWID-1:0] local_out10;
input [DATAWID-1:0] local_in11;
output [DATAWID-1:0] local_out11;
input [DATAWID-1:0] local_in12;
output [DATAWID-1:0] local_out12;
input [DATAWID-1:0] local_in13;
output [DATAWID-1:0] local_out13;
input [DATAWID-1:0] local_in14;
output [DATAWID-1:0] local_out14;
input [DATAWID-1:0] local_in15;
output [DATAWID-1:0] local_out15;
input [DATAWID-1:0] local_in20;
output [DATAWID-1:0] local_out20;
input [DATAWID-1:0] local_in21;
output [DATAWID-1:0] local_out21;
input [DATAWID-1:0] local_in22;
output [DATAWID-1:0] local_out22;
input [DATAWID-1:0] local_in23;
output [DATAWID-1:0] local_out23;
input [DATAWID-1:0] local_in24;
output [DATAWID-1:0] local_out24;
input [DATAWID-1:0] local_in25;
output [DATAWID-1:0] local_out25;
input [DATAWID-1:0] local_in30;
output [DATAWID-1:0] local_out30;
input [DATAWID-1:0] local_in31;
output [DATAWID-1:0] local_out31;
input [DATAWID-1:0] local_in32;
output [DATAWID-1:0] local_out32;
input [DATAWID-1:0] local_in33;
output [DATAWID-1:0] local_out33;
input [DATAWID-1:0] local_in34;
output [DATAWID-1:0] local_out34;
input [DATAWID-1:0] local_in35;
output [DATAWID-1:0] local_out35;
input [DATAWID-1:0] local_in40;
output [DATAWID-1:0] local_out40;
input [DATAWID-1:0] local_in41;
output [DATAWID-1:0] local_out41;
input [DATAWID-1:0] local_in42;
output [DATAWID-1:0] local_out42;
input [DATAWID-1:0] local_in43;
output [DATAWID-1:0] local_out43;
input [DATAWID-1:0] local_in44;
output [DATAWID-1:0] local_out44;
input [DATAWID-1:0] local_in45;
output [DATAWID-1:0] local_out45;
input [DATAWID-1:0] local_in50;
output [DATAWID-1:0] local_out50;
input [DATAWID-1:0] local_in51;
output [DATAWID-1:0] local_out51;
input [DATAWID-1:0] local_in52;
output [DATAWID-1:0] local_out52;
input [DATAWID-1:0] local_in53;
output [DATAWID-1:0] local_out53;
input [DATAWID-1:0] local_in54;
output [DATAWID-1:0] local_out54;
input [DATAWID-1:0] local_in55;
output [DATAWID-1:0] local_out55;
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
router r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(),
.i03(),.i04(south_in00),.o00(local_out00),.o01(east_out00),
.o02(),.o03(),.o04(south_out00),.Write(Write),.Read(Read));
router r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(east_in01),.i02(west_in01),.i03(),.i04(south_in01),.o00(local_out01),.o01(east_out01),.o02(west_out01),.o03(),.o04(south_out01),.Write(Write),.Read(Read));
router r_$02( .clk(clk), .rst(reset),.i00(local_in02),.i01(east_in02),.i02(west_in02),.i03(),.i04(south_in02),.o00(local_out02),.o01(east_out02),.o02(west_out02),.o03(),.o04(south_out02),.Write(Write),.Read(Read));
router r_$03( .clk(clk), .rst(reset),.i00(local_in03),.i01(east_in03),.i02(west_in03),.i03(),.i04(south_in03),.o00(local_out03),.o01(east_out03),.o02(west_out03),.o03(),.o04(south_out03),.Write(Write),.Read(Read));
router r_$04( .clk(clk), .rst(reset),.i00(local_in04),.i01(east_in04),.i02(west_in04),.i03(),.i04(south_in04),.o00(local_out04),.o01(east_out04),.o02(west_out04),.o03(),.o04(south_out04),.Write(Write),.Read(Read));
router r_$05( .clk(clk), .rst(reset),.i00(local_in05),.i01(),.i02(west_in05),.i03(),
.i04(south_in05),.o00(local_out05),.o01(),.o02(west_out05),.o03(),.o04(south_out05),.Write(Write),.Read(Read));
router r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in10),.i02(),
.i03(north_in10),.i04(south_in10),.o00(local_out10),.o01(east_out10),.o02(),.o03(north_out10),.o04(south_out10),.Write(Write),.Read(Read));
router r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(east_in11),.i02(west_in11),.i03(north_in11),.i04(south_in11),.o00(local_out11),.o01(east_out11),.o02(west_out11),.o03(north_out11),.o04(south_out11),.Write(Write),.Read(Read));
router r_$12( .clk(clk), .rst(reset),.i00(local_in12),.i01(east_in12),.i02(west_in12),.i03(north_in12),.i04(south_in12),.o00(local_out12),.o01(east_out12),.o02(west_out12),.o03(north_out12),.o04(south_out12),.Write(Write),.Read(Read));
router r_$13( .clk(clk), .rst(reset),.i00(local_in13),.i01(east_in13),.i02(west_in13),.i03(north_in13),.i04(south_in13),.o00(local_out13),.o01(east_out13),.o02(west_out13),.o03(north_out13),.o04(south_out13),.Write(Write),.Read(Read));
router r_$14( .clk(clk), .rst(reset),.i00(local_in14),.i01(east_in14),.i02(west_in14),.i03(north_in14),.i04(south_in14),.o00(local_out14),.o01(east_out14),.o02(west_out14),.o03(north_out14),.o04(south_out14),.Write(Write),.Read(Read));
router r_$15( .clk(clk), .rst(reset),.i00(local_in15),.i01(),.i02(west_in15),
.i03(north_in15),.i04(south_in15),.o00(local_out15),.o01(),
.o02(west_out15),.o03(north_out15),.o04(south_out15),.Write(Write),.Read(Read));
router r_$20( .clk(clk), .rst(reset),.i00(local_in20),.i01(east_in20),.i02(),
.i03(north_in20),.i04(south_in20),.o00(local_out20),.o01(east_out20),.o02(),.o03(north_out20),.o04(south_out20),.Write(Write),.Read(Read));
router r_$21( .clk(clk), .rst(reset),.i00(local_in21),.i01(east_in21),.i02(west_in21),.i03(north_in21),.i04(south_in21),.o00(local_out21),.o01(east_out21),.o02(west_out21),.o03(north_out21),.o04(south_out21),.Write(Write),.Read(Read));
router r_$22( .clk(clk), .rst(reset),.i00(local_in22),.i01(east_in22),.i02(west_in22),.i03(north_in22),.i04(south_in22),.o00(local_out22),.o01(east_out22),.o02(west_out22),.o03(north_out22),.o04(south_out22),.Write(Write),.Read(Read));
router r_$23( .clk(clk), .rst(reset),.i00(local_in23),.i01(east_in23),.i02(west_in23),.i03(north_in23),.i04(south_in23),.o00(local_out23),.o01(east_out23),.o02(west_out23),.o03(north_out23),.o04(south_out23),.Write(Write),.Read(Read));
router r_$24( .clk(clk), .rst(reset),.i00(local_in24),.i01(east_in24),.i02(west_in24),.i03(north_in24),.i04(south_in24),.o00(local_out24),.o01(east_out24),.o02(west_out24),.o03(north_out24),.o04(south_out24),.Write(Write),.Read(Read));
router r_$25( .clk(clk), .rst(reset),.i00(local_in25),.i01(),.i02(west_in25),
.i03(north_in25),.i04(south_in25),.o00(local_out25),.o01(),
.o02(west_out25),.o03(north_out25),.o04(south_out25),.Write(Write),.Read(Read));
router r_$30( .clk(clk), .rst(reset),.i00(local_in30),.i01(east_in30),.i02(),
.i03(north_in30),.i04(south_in30),.o00(local_out30),.o01(east_out30),.o02(),.o03(north_out30),.o04(south_out30),.Write(Write),.Read(Read));
router r_$31( .clk(clk), .rst(reset),.i00(local_in31),.i01(east_in31),.i02(west_in31),.i03(north_in31),.i04(south_in31),.o00(local_out31),.o01(east_out31),.o02(west_out31),.o03(north_out31),.o04(south_out31),.Write(Write),.Read(Read));
router r_$32( .clk(clk), .rst(reset),.i00(local_in32),.i01(east_in32),.i02(west_in32),.i03(north_in32),.i04(south_in32),.o00(local_out32),.o01(east_out32),.o02(west_out32),.o03(north_out32),.o04(south_out32),.Write(Write),.Read(Read));
router r_$33( .clk(clk), .rst(reset),.i00(local_in33),.i01(east_in33),.i02(west_in33),.i03(north_in33),.i04(south_in33),.o00(local_out33),.o01(east_out33),.o02(west_out33),.o03(north_out33),.o04(south_out33),.Write(Write),.Read(Read));
router r_$34( .clk(clk), .rst(reset),.i00(local_in34),.i01(east_in34),.i02(west_in34),.i03(north_in34),.i04(south_in34),.o00(local_out34),.o01(east_out34),.o02(west_out34),.o03(north_out34),.o04(south_out34),.Write(Write),.Read(Read));
router r_$35( .clk(clk), .rst(reset),.i00(local_in35),.i01(),.i02(west_in35),
.i03(north_in35),.i04(south_in35),.o00(local_out35),.o01(),
.o02(west_out35),.o03(north_out35),.o04(south_out35),.Write(Write),.Read(Read));
router r_$40( .clk(clk), .rst(reset),.i00(local_in40),.i01(east_in40),.i02(),
.i03(north_in40),.i04(south_in40),.o00(local_out40),.o01(east_out40),.o02(),.o03(north_out40),.o04(south_out40),.Write(Write),.Read(Read));
router r_$41( .clk(clk), .rst(reset),.i00(local_in41),.i01(east_in41),.i02(west_in41),.i03(north_in41),.i04(south_in41),.o00(local_out41),.o01(east_out41),.o02(west_out41),.o03(north_out41),.o04(south_out41),.Write(Write),.Read(Read));
router r_$42( .clk(clk), .rst(reset),.i00(local_in42),.i01(east_in42),.i02(west_in42),.i03(north_in42),.i04(south_in42),.o00(local_out42),.o01(east_out42),.o02(west_out42),.o03(north_out42),.o04(south_out42),.Write(Write),.Read(Read));
router r_$43( .clk(clk), .rst(reset),.i00(local_in43),.i01(east_in43),.i02(west_in43),.i03(north_in43),.i04(south_in43),.o00(local_out43),.o01(east_out43),.o02(west_out43),.o03(north_out43),.o04(south_out43),.Write(Write),.Read(Read));
router r_$44( .clk(clk), .rst(reset),.i00(local_in44),.i01(east_in44),.i02(west_in44),.i03(north_in44),.i04(south_in44),.o00(local_out44),.o01(east_out44),.o02(west_out44),.o03(north_out44),.o04(south_out44),.Write(Write),.Read(Read));
router r_$45( .clk(clk), .rst(reset),.i00(local_in45),.i01(),.i02(west_in45),
.i03(north_in45),.i04(south_in45),.o00(local_out45),.o01(),
.o02(west_out45),.o03(north_out45),.o04(south_out45),.Write(Write),.Read(Read));
router r_$50( .clk(clk), .rst(reset),.i00(local_in50),.i01(east_in50),.i02(),
.i03(north_in50),.i04(),.o00(local_out50),.o01(east_out50),.o02(),.o03(north_out50),.o04(),.Write(Write),.Read(Read));
router r_$51( .clk(clk), .rst(reset),.i00(local_in51),.i01(east_in51),.i02(west_in51),.i03(north_in51),.i04(),.o00(local_out51),.o01(east_out51),.o02(west_out51),.o03(north_out51),.o04(),.Write(Write),.Read(Read));
router r_$52( .clk(clk), .rst(reset),.i00(local_in52),.i01(east_in52),.i02(west_in52),.i03(north_in52),.i04(),.o00(local_out52),.o01(east_out52),.o02(west_out52),.o03(north_out52),.o04(),.Write(Write),.Read(Read));
router r_$53( .clk(clk), .rst(reset),.i00(local_in53),.i01(east_in53),.i02(west_in53),.i03(north_in53),.i04(),.o00(local_out53),.o01(east_out53),.o02(west_out53),.o03(north_out53),.o04(),.Write(Write),.Read(Read));
router r_$54( .clk(clk), .rst(reset),.i00(local_in54),.i01(east_in54),.i02(west_in54),.i03(north_in54),.i04(),.o00(local_out54),.o01(east_out54),.o02(west_out54),.o03(north_out54),.o04(),.Write(Write),.Read(Read));
router r_$55( .clk(clk), .rst(reset),.i00(local_in55),.i01(),.i02(west_in55),
.i03(north_in55),.i04(),.o00(local_out55),.o01(),.o02(west_out55),.o03(north_out55),.o04(),.Write(Write),.Read(Read));
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
endmodule
