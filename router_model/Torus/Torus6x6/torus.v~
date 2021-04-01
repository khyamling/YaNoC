module torus (
local0_in00,local0_out00,
local0_in01,local0_out01,
local0_in02,local0_out02,
local0_in03,local0_out03,
local0_in04,local0_out04,
local0_in05,local0_out05,
local1_in10,local1_out10,
local1_in11,local1_out11,
local1_in12,local1_out12,
local1_in13,local1_out13,
local1_in14,local1_out14,
local1_in15,local1_out15,
local2_in20,local2_out20,
local2_in21,local2_out21,
local2_in22,local2_out22,
local2_in23,local2_out23,
local2_in24,local2_out24,
local2_in25,local2_out25,
local3_in30,local3_out30,
local3_in31,local3_out31,
local3_in32,local3_out32,
local3_in33,local3_out33,
local3_in34,local3_out34,
local3_in35,local3_out35,
local4_in40,local4_out40,
local4_in41,local4_out41,
local4_in42,local4_out42,
local4_in43,local4_out43,
local4_in44,local4_out44,
local4_in45,local4_out45,
local5_in50,local5_out50,
local5_in51,local5_out51,
local5_in52,local5_out52,
local5_in53,local5_out53,
local5_in54,local5_out54,
local5_in55,local5_out55,
clk, reset,  Write, Read);
input clk, reset, Write, Read; 
parameter DATAWID = 32;
input [DATAWID-1:0] local0_in00;
output [DATAWID-1:0] local0_out00;
input [DATAWID-1:0] local0_in01;
output [DATAWID-1:0] local0_out01;
input [DATAWID-1:0] local0_in02;
output [DATAWID-1:0] local0_out02;
input [DATAWID-1:0] local0_in03;
output [DATAWID-1:0] local0_out03;
input [DATAWID-1:0] local0_in04;
output [DATAWID-1:0] local0_out04;
input [DATAWID-1:0] local0_in05;
output [DATAWID-1:0] local0_out05;
input [DATAWID-1:0] local1_in10;
output [DATAWID-1:0] local1_out10;
input [DATAWID-1:0] local1_in11;
output [DATAWID-1:0] local1_out11;
input [DATAWID-1:0] local1_in12;
output [DATAWID-1:0] local1_out12;
input [DATAWID-1:0] local1_in13;
output [DATAWID-1:0] local1_out13;
input [DATAWID-1:0] local1_in14;
output [DATAWID-1:0] local1_out14;
input [DATAWID-1:0] local1_in15;
output [DATAWID-1:0] local1_out15;
input [DATAWID-1:0] local2_in20;
output [DATAWID-1:0] local2_out20;
input [DATAWID-1:0] local2_in21;
output [DATAWID-1:0] local2_out21;
input [DATAWID-1:0] local2_in22;
output [DATAWID-1:0] local2_out22;
input [DATAWID-1:0] local2_in23;
output [DATAWID-1:0] local2_out23;
input [DATAWID-1:0] local2_in24;
output [DATAWID-1:0] local2_out24;
input [DATAWID-1:0] local2_in25;
output [DATAWID-1:0] local2_out25;
input [DATAWID-1:0] local3_in30;
output [DATAWID-1:0] local3_out30;
input [DATAWID-1:0] local3_in31;
output [DATAWID-1:0] local3_out31;
input [DATAWID-1:0] local3_in32;
output [DATAWID-1:0] local3_out32;
input [DATAWID-1:0] local3_in33;
output [DATAWID-1:0] local3_out33;
input [DATAWID-1:0] local3_in34;
output [DATAWID-1:0] local3_out34;
input [DATAWID-1:0] local3_in35;
output [DATAWID-1:0] local3_out35;
input [DATAWID-1:0] local4_in40;
output [DATAWID-1:0] local4_out40;
input [DATAWID-1:0] local4_in41;
output [DATAWID-1:0] local4_out41;
input [DATAWID-1:0] local4_in42;
output [DATAWID-1:0] local4_out42;
input [DATAWID-1:0] local4_in43;
output [DATAWID-1:0] local4_out43;
input [DATAWID-1:0] local4_in44;
output [DATAWID-1:0] local4_out44;
input [DATAWID-1:0] local4_in45;
output [DATAWID-1:0] local4_out45;
input [DATAWID-1:0] local5_in50;
output [DATAWID-1:0] local5_out50;
input [DATAWID-1:0] local5_in51;
output [DATAWID-1:0] local5_out51;
input [DATAWID-1:0] local5_in52;
output [DATAWID-1:0] local5_out52;
input [DATAWID-1:0] local5_in53;
output [DATAWID-1:0] local5_out53;
input [DATAWID-1:0] local5_in54;
output [DATAWID-1:0] local5_out54;
input [DATAWID-1:0] local5_in55;
output [DATAWID-1:0] local5_out55;
reg [DATAWID-1:0] east0_in00;
reg [DATAWID-1:0] west0_in00;
reg [DATAWID-1:0] north0_in00;
reg [DATAWID-1:0] south0_in00;
reg [DATAWID-1:0] east0_in01;
reg [DATAWID-1:0] west0_in01;
reg [DATAWID-1:0] north0_in01;
reg [DATAWID-1:0] south0_in01;
reg [DATAWID-1:0] east0_in02;
reg [DATAWID-1:0] west0_in02;
reg [DATAWID-1:0] north0_in02;
reg [DATAWID-1:0] south0_in02;
reg [DATAWID-1:0] east0_in03;
reg [DATAWID-1:0] west0_in03;
reg [DATAWID-1:0] north0_in03;
reg [DATAWID-1:0] south0_in03;
reg [DATAWID-1:0] east0_in04;
reg [DATAWID-1:0] west0_in04;
reg [DATAWID-1:0] north0_in04;
reg [DATAWID-1:0] south0_in04;
reg [DATAWID-1:0] east0_in05;
reg [DATAWID-1:0] west0_in05;
reg [DATAWID-1:0] north0_in05;
reg [DATAWID-1:0] south0_in05;
reg [DATAWID-1:0] east1_in10;
reg [DATAWID-1:0] west1_in10;
reg [DATAWID-1:0] north1_in10;
reg [DATAWID-1:0] south1_in10;
reg [DATAWID-1:0] east1_in11;
reg [DATAWID-1:0] west1_in11;
reg [DATAWID-1:0] north1_in11;
reg [DATAWID-1:0] south1_in11;
reg [DATAWID-1:0] east1_in12;
reg [DATAWID-1:0] west1_in12;
reg [DATAWID-1:0] north1_in12;
reg [DATAWID-1:0] south1_in12;
reg [DATAWID-1:0] east1_in13;
reg [DATAWID-1:0] west1_in13;
reg [DATAWID-1:0] north1_in13;
reg [DATAWID-1:0] south1_in13;
reg [DATAWID-1:0] east1_in14;
reg [DATAWID-1:0] west1_in14;
reg [DATAWID-1:0] north1_in14;
reg [DATAWID-1:0] south1_in14;
reg [DATAWID-1:0] east1_in15;
reg [DATAWID-1:0] west1_in15;
reg [DATAWID-1:0] north1_in15;
reg [DATAWID-1:0] south1_in15;
reg [DATAWID-1:0] east2_in20;
reg [DATAWID-1:0] west2_in20;
reg [DATAWID-1:0] north2_in20;
reg [DATAWID-1:0] south2_in20;
reg [DATAWID-1:0] east2_in21;
reg [DATAWID-1:0] west2_in21;
reg [DATAWID-1:0] north2_in21;
reg [DATAWID-1:0] south2_in21;
reg [DATAWID-1:0] east2_in22;
reg [DATAWID-1:0] west2_in22;
reg [DATAWID-1:0] north2_in22;
reg [DATAWID-1:0] south2_in22;
reg [DATAWID-1:0] east2_in23;
reg [DATAWID-1:0] west2_in23;
reg [DATAWID-1:0] north2_in23;
reg [DATAWID-1:0] south2_in23;
reg [DATAWID-1:0] east2_in24;
reg [DATAWID-1:0] west2_in24;
reg [DATAWID-1:0] north2_in24;
reg [DATAWID-1:0] south2_in24;
reg [DATAWID-1:0] east2_in25;
reg [DATAWID-1:0] west2_in25;
reg [DATAWID-1:0] north2_in25;
reg [DATAWID-1:0] south2_in25;
reg [DATAWID-1:0] east3_in30;
reg [DATAWID-1:0] west3_in30;
reg [DATAWID-1:0] north3_in30;
reg [DATAWID-1:0] south3_in30;
reg [DATAWID-1:0] east3_in31;
reg [DATAWID-1:0] west3_in31;
reg [DATAWID-1:0] north3_in31;
reg [DATAWID-1:0] south3_in31;
reg [DATAWID-1:0] east3_in32;
reg [DATAWID-1:0] west3_in32;
reg [DATAWID-1:0] north3_in32;
reg [DATAWID-1:0] south3_in32;
reg [DATAWID-1:0] east3_in33;
reg [DATAWID-1:0] west3_in33;
reg [DATAWID-1:0] north3_in33;
reg [DATAWID-1:0] south3_in33;
reg [DATAWID-1:0] east3_in34;
reg [DATAWID-1:0] west3_in34;
reg [DATAWID-1:0] north3_in34;
reg [DATAWID-1:0] south3_in34;
reg [DATAWID-1:0] east3_in35;
reg [DATAWID-1:0] west3_in35;
reg [DATAWID-1:0] north3_in35;
reg [DATAWID-1:0] south3_in35;
reg [DATAWID-1:0] east4_in40;
reg [DATAWID-1:0] west4_in40;
reg [DATAWID-1:0] north4_in40;
reg [DATAWID-1:0] south4_in40;
reg [DATAWID-1:0] east4_in41;
reg [DATAWID-1:0] west4_in41;
reg [DATAWID-1:0] north4_in41;
reg [DATAWID-1:0] south4_in41;
reg [DATAWID-1:0] east4_in42;
reg [DATAWID-1:0] west4_in42;
reg [DATAWID-1:0] north4_in42;
reg [DATAWID-1:0] south4_in42;
reg [DATAWID-1:0] east4_in43;
reg [DATAWID-1:0] west4_in43;
reg [DATAWID-1:0] north4_in43;
reg [DATAWID-1:0] south4_in43;
reg [DATAWID-1:0] east4_in44;
reg [DATAWID-1:0] west4_in44;
reg [DATAWID-1:0] north4_in44;
reg [DATAWID-1:0] south4_in44;
reg [DATAWID-1:0] east4_in45;
reg [DATAWID-1:0] west4_in45;
reg [DATAWID-1:0] north4_in45;
reg [DATAWID-1:0] south4_in45;
reg [DATAWID-1:0] east5_in50;
reg [DATAWID-1:0] west5_in50;
reg [DATAWID-1:0] north5_in50;
reg [DATAWID-1:0] south5_in50;
reg [DATAWID-1:0] east5_in51;
reg [DATAWID-1:0] west5_in51;
reg [DATAWID-1:0] north5_in51;
reg [DATAWID-1:0] south5_in51;
reg [DATAWID-1:0] east5_in52;
reg [DATAWID-1:0] west5_in52;
reg [DATAWID-1:0] north5_in52;
reg [DATAWID-1:0] south5_in52;
reg [DATAWID-1:0] east5_in53;
reg [DATAWID-1:0] west5_in53;
reg [DATAWID-1:0] north5_in53;
reg [DATAWID-1:0] south5_in53;
reg [DATAWID-1:0] east5_in54;
reg [DATAWID-1:0] west5_in54;
reg [DATAWID-1:0] north5_in54;
reg [DATAWID-1:0] south5_in54;
reg [DATAWID-1:0] east5_in55;
reg [DATAWID-1:0] west5_in55;
reg [DATAWID-1:0] north5_in55;
reg [DATAWID-1:0] south5_in55;
wire [DATAWID-1:0] east0_out00;
wire [DATAWID-1:0] west0_out00;
wire [DATAWID-1:0] north0_out00;
wire [DATAWID-1:0] south0_out00;
wire [DATAWID-1:0] east0_out01;
wire [DATAWID-1:0] west0_out01;
wire [DATAWID-1:0] north0_out01;
wire [DATAWID-1:0] south0_out01;
wire [DATAWID-1:0] east0_out02;
wire [DATAWID-1:0] west0_out02;
wire [DATAWID-1:0] north0_out02;
wire [DATAWID-1:0] south0_out02;
wire [DATAWID-1:0] east0_out03;
wire [DATAWID-1:0] west0_out03;
wire [DATAWID-1:0] north0_out03;
wire [DATAWID-1:0] south0_out03;
wire [DATAWID-1:0] east0_out04;
wire [DATAWID-1:0] west0_out04;
wire [DATAWID-1:0] north0_out04;
wire [DATAWID-1:0] south0_out04;
wire [DATAWID-1:0] east0_out05;
wire [DATAWID-1:0] west0_out05;
wire [DATAWID-1:0] north0_out05;
wire [DATAWID-1:0] south0_out05;
wire [DATAWID-1:0] east1_out10;
wire [DATAWID-1:0] west1_out10;
wire [DATAWID-1:0] north1_out10;
wire [DATAWID-1:0] south1_out10;
wire [DATAWID-1:0] east1_out11;
wire [DATAWID-1:0] west1_out11;
wire [DATAWID-1:0] north1_out11;
wire [DATAWID-1:0] south1_out11;
wire [DATAWID-1:0] east1_out12;
wire [DATAWID-1:0] west1_out12;
wire [DATAWID-1:0] north1_out12;
wire [DATAWID-1:0] south1_out12;
wire [DATAWID-1:0] east1_out13;
wire [DATAWID-1:0] west1_out13;
wire [DATAWID-1:0] north1_out13;
wire [DATAWID-1:0] south1_out13;
wire [DATAWID-1:0] east1_out14;
wire [DATAWID-1:0] west1_out14;
wire [DATAWID-1:0] north1_out14;
wire [DATAWID-1:0] south1_out14;
wire [DATAWID-1:0] east1_out15;
wire [DATAWID-1:0] west1_out15;
wire [DATAWID-1:0] north1_out15;
wire [DATAWID-1:0] south1_out15;
wire [DATAWID-1:0] east2_out20;
wire [DATAWID-1:0] west2_out20;
wire [DATAWID-1:0] north2_out20;
wire [DATAWID-1:0] south2_out20;
wire [DATAWID-1:0] east2_out21;
wire [DATAWID-1:0] west2_out21;
wire [DATAWID-1:0] north2_out21;
wire [DATAWID-1:0] south2_out21;
wire [DATAWID-1:0] east2_out22;
wire [DATAWID-1:0] west2_out22;
wire [DATAWID-1:0] north2_out22;
wire [DATAWID-1:0] south2_out22;
wire [DATAWID-1:0] east2_out23;
wire [DATAWID-1:0] west2_out23;
wire [DATAWID-1:0] north2_out23;
wire [DATAWID-1:0] south2_out23;
wire [DATAWID-1:0] east2_out24;
wire [DATAWID-1:0] west2_out24;
wire [DATAWID-1:0] north2_out24;
wire [DATAWID-1:0] south2_out24;
wire [DATAWID-1:0] east2_out25;
wire [DATAWID-1:0] west2_out25;
wire [DATAWID-1:0] north2_out25;
wire [DATAWID-1:0] south2_out25;
wire [DATAWID-1:0] east3_out30;
wire [DATAWID-1:0] west3_out30;
wire [DATAWID-1:0] north3_out30;
wire [DATAWID-1:0] south3_out30;
wire [DATAWID-1:0] east3_out31;
wire [DATAWID-1:0] west3_out31;
wire [DATAWID-1:0] north3_out31;
wire [DATAWID-1:0] south3_out31;
wire [DATAWID-1:0] east3_out32;
wire [DATAWID-1:0] west3_out32;
wire [DATAWID-1:0] north3_out32;
wire [DATAWID-1:0] south3_out32;
wire [DATAWID-1:0] east3_out33;
wire [DATAWID-1:0] west3_out33;
wire [DATAWID-1:0] north3_out33;
wire [DATAWID-1:0] south3_out33;
wire [DATAWID-1:0] east3_out34;
wire [DATAWID-1:0] west3_out34;
wire [DATAWID-1:0] north3_out34;
wire [DATAWID-1:0] south3_out34;
wire [DATAWID-1:0] east3_out35;
wire [DATAWID-1:0] west3_out35;
wire [DATAWID-1:0] north3_out35;
wire [DATAWID-1:0] south3_out35;
wire [DATAWID-1:0] east4_out40;
wire [DATAWID-1:0] west4_out40;
wire [DATAWID-1:0] north4_out40;
wire [DATAWID-1:0] south4_out40;
wire [DATAWID-1:0] east4_out41;
wire [DATAWID-1:0] west4_out41;
wire [DATAWID-1:0] north4_out41;
wire [DATAWID-1:0] south4_out41;
wire [DATAWID-1:0] east4_out42;
wire [DATAWID-1:0] west4_out42;
wire [DATAWID-1:0] north4_out42;
wire [DATAWID-1:0] south4_out42;
wire [DATAWID-1:0] east4_out43;
wire [DATAWID-1:0] west4_out43;
wire [DATAWID-1:0] north4_out43;
wire [DATAWID-1:0] south4_out43;
wire [DATAWID-1:0] east4_out44;
wire [DATAWID-1:0] west4_out44;
wire [DATAWID-1:0] north4_out44;
wire [DATAWID-1:0] south4_out44;
wire [DATAWID-1:0] east4_out45;
wire [DATAWID-1:0] west4_out45;
wire [DATAWID-1:0] north4_out45;
wire [DATAWID-1:0] south4_out45;
wire [DATAWID-1:0] east5_out50;
wire [DATAWID-1:0] west5_out50;
wire [DATAWID-1:0] north5_out50;
wire [DATAWID-1:0] south5_out50;
wire [DATAWID-1:0] east5_out51;
wire [DATAWID-1:0] west5_out51;
wire [DATAWID-1:0] north5_out51;
wire [DATAWID-1:0] south5_out51;
wire [DATAWID-1:0] east5_out52;
wire [DATAWID-1:0] west5_out52;
wire [DATAWID-1:0] north5_out52;
wire [DATAWID-1:0] south5_out52;
wire [DATAWID-1:0] east5_out53;
wire [DATAWID-1:0] west5_out53;
wire [DATAWID-1:0] north5_out53;
wire [DATAWID-1:0] south5_out53;
wire [DATAWID-1:0] east5_out54;
wire [DATAWID-1:0] west5_out54;
wire [DATAWID-1:0] north5_out54;
wire [DATAWID-1:0] south5_out54;
wire [DATAWID-1:0] east5_out55;
wire [DATAWID-1:0] west5_out55;
wire [DATAWID-1:0] north5_out55;
wire [DATAWID-1:0] south5_out55;
router r000
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in00),
.i01(east0_in00),
.i02(west0_in00),
.i03(north0_in00),
.i04(south0_in00),
.o00(local0_out00),
.o01(east0_out00),
.o02(west0_out00),
.o03(north0_out00),
.o04(south0_out00)
);
router r001
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in01),
.i01(east0_in01),
.i02(west0_in01),
.i03(north0_in01),
.i04(south0_in01),
.o00(local0_out01),
.o01(east0_out01),
.o02(west0_out01),
.o03(north0_out01),
.o04(south0_out01)
);
router r002
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in02),
.i01(east0_in02),
.i02(west0_in02),
.i03(north0_in02),
.i04(south0_in02),
.o00(local0_out02),
.o01(east0_out02),
.o02(west0_out02),
.o03(north0_out02),
.o04(south0_out02)
);
router r003
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in03),
.i01(east0_in03),
.i02(west0_in03),
.i03(north0_in03),
.i04(south0_in03),
.o00(local0_out03),
.o01(east0_out03),
.o02(west0_out03),
.o03(north0_out03),
.o04(south0_out03)
);
router r004
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in04),
.i01(east0_in04),
.i02(west0_in04),
.i03(north0_in04),
.i04(south0_in04),
.o00(local0_out04),
.o01(east0_out04),
.o02(west0_out04),
.o03(north0_out04),
.o04(south0_out04)
);
router r005
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in05),
.i01(east0_in05),
.i02(west0_in05),
.i03(north0_in05),
.i04(south0_in05),
.o00(local0_out05),
.o01(east0_out05),
.o02(west0_out05),
.o03(north0_out05),
.o04(south0_out05)
);
router r110
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in10),
.i01(east1_in10),
.i02(west1_in10),
.i03(north1_in10),
.i04(south1_in10),
.o00(local1_out10),
.o01(east1_out10),
.o02(west1_out10),
.o03(north1_out10),
.o04(south1_out10)
);
router r111
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in11),
.i01(east1_in11),
.i02(west1_in11),
.i03(north1_in11),
.i04(south1_in11),
.o00(local1_out11),
.o01(east1_out11),
.o02(west1_out11),
.o03(north1_out11),
.o04(south1_out11)
);
router r112
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in12),
.i01(east1_in12),
.i02(west1_in12),
.i03(north1_in12),
.i04(south1_in12),
.o00(local1_out12),
.o01(east1_out12),
.o02(west1_out12),
.o03(north1_out12),
.o04(south1_out12)
);
router r113
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in13),
.i01(east1_in13),
.i02(west1_in13),
.i03(north1_in13),
.i04(south1_in13),
.o00(local1_out13),
.o01(east1_out13),
.o02(west1_out13),
.o03(north1_out13),
.o04(south1_out13)
);
router r114
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in14),
.i01(east1_in14),
.i02(west1_in14),
.i03(north1_in14),
.i04(south1_in14),
.o00(local1_out14),
.o01(east1_out14),
.o02(west1_out14),
.o03(north1_out14),
.o04(south1_out14)
);
router r115
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in15),
.i01(east1_in15),
.i02(west1_in15),
.i03(north1_in15),
.i04(south1_in15),
.o00(local1_out15),
.o01(east1_out15),
.o02(west1_out15),
.o03(north1_out15),
.o04(south1_out15)
);
router r220
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in20),
.i01(east2_in20),
.i02(west2_in20),
.i03(north2_in20),
.i04(south2_in20),
.o00(local2_out20),
.o01(east2_out20),
.o02(west2_out20),
.o03(north2_out20),
.o04(south2_out20)
);
router r221
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in21),
.i01(east2_in21),
.i02(west2_in21),
.i03(north2_in21),
.i04(south2_in21),
.o00(local2_out21),
.o01(east2_out21),
.o02(west2_out21),
.o03(north2_out21),
.o04(south2_out21)
);
router r222
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in22),
.i01(east2_in22),
.i02(west2_in22),
.i03(north2_in22),
.i04(south2_in22),
.o00(local2_out22),
.o01(east2_out22),
.o02(west2_out22),
.o03(north2_out22),
.o04(south2_out22)
);
router r223
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in23),
.i01(east2_in23),
.i02(west2_in23),
.i03(north2_in23),
.i04(south2_in23),
.o00(local2_out23),
.o01(east2_out23),
.o02(west2_out23),
.o03(north2_out23),
.o04(south2_out23)
);
router r224
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in24),
.i01(east2_in24),
.i02(west2_in24),
.i03(north2_in24),
.i04(south2_in24),
.o00(local2_out24),
.o01(east2_out24),
.o02(west2_out24),
.o03(north2_out24),
.o04(south2_out24)
);
router r225
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in25),
.i01(east2_in25),
.i02(west2_in25),
.i03(north2_in25),
.i04(south2_in25),
.o00(local2_out25),
.o01(east2_out25),
.o02(west2_out25),
.o03(north2_out25),
.o04(south2_out25)
);
router r330
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in30),
.i01(east3_in30),
.i02(west3_in30),
.i03(north3_in30),
.i04(south3_in30),
.o00(local3_out30),
.o01(east3_out30),
.o02(west3_out30),
.o03(north3_out30),
.o04(south3_out30)
);
router r331
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in31),
.i01(east3_in31),
.i02(west3_in31),
.i03(north3_in31),
.i04(south3_in31),
.o00(local3_out31),
.o01(east3_out31),
.o02(west3_out31),
.o03(north3_out31),
.o04(south3_out31)
);
router r332
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in32),
.i01(east3_in32),
.i02(west3_in32),
.i03(north3_in32),
.i04(south3_in32),
.o00(local3_out32),
.o01(east3_out32),
.o02(west3_out32),
.o03(north3_out32),
.o04(south3_out32)
);
router r333
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in33),
.i01(east3_in33),
.i02(west3_in33),
.i03(north3_in33),
.i04(south3_in33),
.o00(local3_out33),
.o01(east3_out33),
.o02(west3_out33),
.o03(north3_out33),
.o04(south3_out33)
);
router r334
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in34),
.i01(east3_in34),
.i02(west3_in34),
.i03(north3_in34),
.i04(south3_in34),
.o00(local3_out34),
.o01(east3_out34),
.o02(west3_out34),
.o03(north3_out34),
.o04(south3_out34)
);
router r335
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in35),
.i01(east3_in35),
.i02(west3_in35),
.i03(north3_in35),
.i04(south3_in35),
.o00(local3_out35),
.o01(east3_out35),
.o02(west3_out35),
.o03(north3_out35),
.o04(south3_out35)
);
router r440
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in40),
.i01(east4_in40),
.i02(west4_in40),
.i03(north4_in40),
.i04(south4_in40),
.o00(local4_out40),
.o01(east4_out40),
.o02(west4_out40),
.o03(north4_out40),
.o04(south4_out40)
);
router r441
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in41),
.i01(east4_in41),
.i02(west4_in41),
.i03(north4_in41),
.i04(south4_in41),
.o00(local4_out41),
.o01(east4_out41),
.o02(west4_out41),
.o03(north4_out41),
.o04(south4_out41)
);
router r442
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in42),
.i01(east4_in42),
.i02(west4_in42),
.i03(north4_in42),
.i04(south4_in42),
.o00(local4_out42),
.o01(east4_out42),
.o02(west4_out42),
.o03(north4_out42),
.o04(south4_out42)
);
router r443
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in43),
.i01(east4_in43),
.i02(west4_in43),
.i03(north4_in43),
.i04(south4_in43),
.o00(local4_out43),
.o01(east4_out43),
.o02(west4_out43),
.o03(north4_out43),
.o04(south4_out43)
);
router r444
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in44),
.i01(east4_in44),
.i02(west4_in44),
.i03(north4_in44),
.i04(south4_in44),
.o00(local4_out44),
.o01(east4_out44),
.o02(west4_out44),
.o03(north4_out44),
.o04(south4_out44)
);
router r445
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in45),
.i01(east4_in45),
.i02(west4_in45),
.i03(north4_in45),
.i04(south4_in45),
.o00(local4_out45),
.o01(east4_out45),
.o02(west4_out45),
.o03(north4_out45),
.o04(south4_out45)
);
router r550
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in50),
.i01(east5_in50),
.i02(west5_in50),
.i03(north5_in50),
.i04(south5_in50),
.o00(local5_out50),
.o01(east5_out50),
.o02(west5_out50),
.o03(north5_out50),
.o04(south5_out50)
);
router r551
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in51),
.i01(east5_in51),
.i02(west5_in51),
.i03(north5_in51),
.i04(south5_in51),
.o00(local5_out51),
.o01(east5_out51),
.o02(west5_out51),
.o03(north5_out51),
.o04(south5_out51)
);
router r552
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in52),
.i01(east5_in52),
.i02(west5_in52),
.i03(north5_in52),
.i04(south5_in52),
.o00(local5_out52),
.o01(east5_out52),
.o02(west5_out52),
.o03(north5_out52),
.o04(south5_out52)
);
router r553
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in53),
.i01(east5_in53),
.i02(west5_in53),
.i03(north5_in53),
.i04(south5_in53),
.o00(local5_out53),
.o01(east5_out53),
.o02(west5_out53),
.o03(north5_out53),
.o04(south5_out53)
);
router r554
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in54),
.i01(east5_in54),
.i02(west5_in54),
.i03(north5_in54),
.i04(south5_in54),
.o00(local5_out54),
.o01(east5_out54),
.o02(west5_out54),
.o03(north5_out54),
.o04(south5_out54)
);
router r555
( .clk(clk), .rst(reset),
.Read(Read),.Write(Write),.i00(local_in55),
.i01(east5_in55),
.i02(west5_in55),
.i03(north5_in55),
.i04(south5_in55),
.o00(local5_out55),
.o01(east5_out55),
.o02(west5_out55),
.o03(north5_out55),
.o04(south5_out55)
);
always @ ( posedge clk)
begin
west0_in01<=east0_out00;
east0_in05<=west0_out00;
south5_in50<=north0_out00;
north1_in10<=south0_out00;
west0_in02<=east0_out01;
east0_in00<=west0_out01;
north1_in11<=south0_out01;
south5_in51<=north0_out01;
west0_in03<=east0_out02;
east0_in01<=west0_out02;
north1_in12<=south0_out02;
south5_in52<=north0_out02;
west0_in04<=east0_out03;
east0_in02<=west0_out03;
north1_in13<=south0_out03;
south5_in53<=north0_out03;
west0_in05<=east0_out04;
east0_in03<=west0_out04;
north1_in14<=south0_out04;
south5_in54<=north0_out04;
west0_in00<=east0_out05;
east0_in04<=west0_out05;
north1_in15<=south0_out05;
south5_in55<=north0_out05;
west1_in11<=east1_out10;
east1_in15<=west1_out10;
north2_in20<=south1_out10;
south0_in00<=north1_out10;
west1_in12<=east1_out11;
east1_in10<=west1_out11;
south0_in01<=north1_out11;
north2_in21<=south1_out11;
west1_in13<=east1_out12;
east1_in11<=west1_out12;
south0_in02<=north1_out12;
north2_in22<=south1_out12;
west1_in14<=east1_out13;
east1_in12<=west1_out13;
south0_in03<=north1_out13;
north2_in23<=south1_out13;
west1_in15<=east1_out14;
east1_in13<=west1_out14;
south0_in04<=north1_out14;
north2_in24<=south1_out14;
west1_in10<=east1_out15;
east1_in14<=west1_out15;
north2_in25<=south1_out15;
south0_in05<=north1_out15;
west2_in21<=east2_out20;
east2_in25<=west2_out20;
north3_in30<=south2_out20;
south1_in10<=north2_out20;
west2_in22<=east2_out21;
east2_in20<=west2_out21;
south1_in11<=north2_out21;
north3_in31<=south2_out21;
west2_in23<=east2_out22;
east2_in21<=west2_out22;
south1_in12<=north2_out22;
north3_in32<=south2_out22;
west2_in24<=east2_out23;
east2_in22<=west2_out23;
south1_in13<=north2_out23;
north3_in33<=south2_out23;
west2_in25<=east2_out24;
east2_in23<=west2_out24;
south1_in14<=north2_out24;
north3_in34<=south2_out24;
west2_in20<=east2_out25;
east2_in24<=west2_out25;
north3_in35<=south2_out25;
south1_in15<=north2_out25;
west3_in31<=east3_out30;
east3_in35<=west3_out30;
north4_in40<=south3_out30;
south2_in20<=north3_out30;
west3_in32<=east3_out31;
east3_in30<=west3_out31;
south2_in21<=north3_out31;
north4_in41<=south3_out31;
west3_in33<=east3_out32;
east3_in31<=west3_out32;
south2_in22<=north3_out32;
north4_in42<=south3_out32;
west3_in34<=east3_out33;
east3_in32<=west3_out33;
south2_in23<=north3_out33;
north4_in43<=south3_out33;
west3_in35<=east3_out34;
east3_in33<=west3_out34;
south2_in24<=north3_out34;
north4_in44<=south3_out34;
west3_in30<=east3_out35;
east3_in34<=west3_out35;
north4_in45<=south3_out35;
south2_in25<=north3_out35;
west4_in41<=east4_out40;
east4_in45<=west4_out40;
north5_in50<=south4_out40;
south3_in30<=north4_out40;
west4_in42<=east4_out41;
east4_in40<=west4_out41;
south3_in31<=north4_out41;
north5_in51<=south4_out41;
west4_in43<=east4_out42;
east4_in41<=west4_out42;
south3_in32<=north4_out42;
north5_in52<=south4_out42;
west4_in44<=east4_out43;
east4_in42<=west4_out43;
south3_in33<=north4_out43;
north5_in53<=south4_out43;
west4_in45<=east4_out44;
east4_in43<=west4_out44;
south3_in34<=north4_out44;
north5_in54<=south4_out44;
west4_in40<=east4_out45;
east4_in44<=west4_out45;
north5_in55<=south4_out45;
south3_in35<=north4_out45;
west5_in51<=east5_out50;
east5_in55<=west5_out50;
north0_in00<=south5_out50;
south4_in40<=north5_out50;
west5_in52<=east5_out51;
east5_in50<=west5_out51;
south0_in01<=south5_out51;
south4_in41<=north5_out51;
west5_in53<=east5_out52;
east5_in51<=west5_out52;
south0_in02<=south5_out52;
south4_in42<=north5_out52;
west5_in54<=east5_out53;
east5_in52<=west5_out53;
south0_in03<=south5_out53;
south4_in43<=north5_out53;
west5_in55<=east5_out54;
east5_in53<=west5_out54;
south0_in04<=south5_out54;
south4_in44<=north5_out54;
west5_in50<=east5_out55;
east5_in54<=west5_out55;
north0_in05<=south5_out55;
south4_in45<=north5_out55;
end
endmodule
