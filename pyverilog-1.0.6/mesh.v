module mesh (
local_in00,local_out00,
local_in01,local_out01,
local_in02,local_out02,
local_in03,local_out03,
local_in10,local_out10,
local_in11,local_out11,
local_in12,local_out12,
local_in13,local_out13,
local_in20,local_out20,
local_in21,local_out21,
local_in22,local_out22,
local_in23,local_out23,
local_in30,local_out30,
local_in31,local_out31,
local_in32,local_out32,
local_in33,local_out33,
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
input [DATAWID-1:0] local_in10;
output [DATAWID-1:0] local_out10;
input [DATAWID-1:0] local_in11;
output [DATAWID-1:0] local_out11;
input [DATAWID-1:0] local_in12;
output [DATAWID-1:0] local_out12;
input [DATAWID-1:0] local_in13;
output [DATAWID-1:0] local_out13;
input [DATAWID-1:0] local_in20;
output [DATAWID-1:0] local_out20;
input [DATAWID-1:0] local_in21;
output [DATAWID-1:0] local_out21;
input [DATAWID-1:0] local_in22;
output [DATAWID-1:0] local_out22;
input [DATAWID-1:0] local_in23;
output [DATAWID-1:0] local_out23;
input [DATAWID-1:0] local_in30;
output [DATAWID-1:0] local_out30;
input [DATAWID-1:0] local_in31;
output [DATAWID-1:0] local_out31;
input [DATAWID-1:0] local_in32;
output [DATAWID-1:0] local_out32;
input [DATAWID-1:0] local_in33;
output [DATAWID-1:0] local_out33;
reg [DATAWID-1:0] east_in00;
reg [DATAWID-1:0] south_in00;
reg [DATAWID-1:0] southeast_in00;
reg [DATAWID-1:0] west_in03;
reg [DATAWID-1:0] south_in03;
reg [DATAWID-1:0] southwest_in03;
reg [DATAWID-1:0] east_in30;
reg [DATAWID-1:0] north_in30;
reg [DATAWID-1:0] northeast_in30;
reg [DATAWID-1:0] west_in33;
reg [DATAWID-1:0] north_in33;
reg [DATAWID-1:0] northwest_in33;
reg [DATAWID-1:0] east_in10;
reg [DATAWID-1:0] north_in10;
reg [DATAWID-1:0] south_in10;
reg [DATAWID-1:0] northeast_in10;
reg [DATAWID-1:0] southeast_in10;
reg [DATAWID-1:0] east_in20;
reg [DATAWID-1:0] north_in20;
reg [DATAWID-1:0] south_in20;
reg [DATAWID-1:0] northeast_in20;
reg [DATAWID-1:0] southeast_in20;
reg [DATAWID-1:0] west_in13;
reg [DATAWID-1:0] north_in13;
reg [DATAWID-1:0] south_in13;
reg [DATAWID-1:0] northwest_in13;
reg [DATAWID-1:0] southwest_in13;
reg [DATAWID-1:0] west_in23;
reg [DATAWID-1:0] north_in23;
reg [DATAWID-1:0] south_in23;
reg [DATAWID-1:0] northwest_in23;
reg [DATAWID-1:0] southwest_in23;
reg [DATAWID-1:0] east_in01;
reg [DATAWID-1:0] west_in01;
reg [DATAWID-1:0] south_in01;
reg [DATAWID-1:0] southeast_in01;
reg [DATAWID-1:0] southwest_in01;
reg [DATAWID-1:0] east_in02;
reg [DATAWID-1:0] west_in02;
reg [DATAWID-1:0] south_in02;
reg [DATAWID-1:0] southeast_in02;
reg [DATAWID-1:0] southwest_in02;
reg [DATAWID-1:0] east_in31;
reg [DATAWID-1:0] west_in31;
reg [DATAWID-1:0] north_in31;
reg [DATAWID-1:0] northeast_in31;
reg [DATAWID-1:0] northwest_in31;
reg [DATAWID-1:0] east_in32;
reg [DATAWID-1:0] west_in32;
reg [DATAWID-1:0] north_in32;
reg [DATAWID-1:0] northeast_in32;
reg [DATAWID-1:0] northwest_in32;
reg [DATAWID-1:0] east_in11;
reg [DATAWID-1:0] west_in11;
reg [DATAWID-1:0] north_in11;
reg [DATAWID-1:0] south_in11;
reg [DATAWID-1:0] northeast_in11;
reg [DATAWID-1:0] northwest_in11;
reg [DATAWID-1:0] southeast_in11;
reg [DATAWID-1:0] southwest_in11;
reg [DATAWID-1:0] east_in12;
reg [DATAWID-1:0] west_in12;
reg [DATAWID-1:0] north_in12;
reg [DATAWID-1:0] south_in12;
reg [DATAWID-1:0] northeast_in12;
reg [DATAWID-1:0] northwest_in12;
reg [DATAWID-1:0] southeast_in12;
reg [DATAWID-1:0] southwest_in12;
reg [DATAWID-1:0] east_in21;
reg [DATAWID-1:0] west_in21;
reg [DATAWID-1:0] north_in21;
reg [DATAWID-1:0] south_in21;
reg [DATAWID-1:0] northeast_in21;
reg [DATAWID-1:0] northwest_in21;
reg [DATAWID-1:0] southeast_in21;
reg [DATAWID-1:0] southwest_in21;
reg [DATAWID-1:0] east_in22;
reg [DATAWID-1:0] west_in22;
reg [DATAWID-1:0] north_in22;
reg [DATAWID-1:0] south_in22;
reg [DATAWID-1:0] northeast_in22;
reg [DATAWID-1:0] northwest_in22;
reg [DATAWID-1:0] southeast_in22;
reg [DATAWID-1:0] southwest_in22;
wire [DATAWID-1:0] east_out00;
wire [DATAWID-1:0] south_out00;
wire [DATAWID-1:0] southeast_out00;
wire [DATAWID-1:0] west_out03;
wire [DATAWID-1:0] south_out03;
wire [DATAWID-1:0] southwest_out03;
wire [DATAWID-1:0] east_out30;
wire [DATAWID-1:0] north_out30;
wire [DATAWID-1:0] northeast_out30;
wire [DATAWID-1:0] west_out33;
wire [DATAWID-1:0] north_out33;
wire [DATAWID-1:0] northwest_out33;
wire [DATAWID-1:0] east_out01;
wire [DATAWID-1:0] west_out01;
wire [DATAWID-1:0] south_out01;
wire [DATAWID-1:0] southeast_out01;
wire [DATAWID-1:0] southwest_out01;
wire [DATAWID-1:0] east_out02;
wire [DATAWID-1:0] west_out02;
wire [DATAWID-1:0] south_out02;
wire [DATAWID-1:0] southeast_out02;
wire [DATAWID-1:0] southwest_out02;
wire [DATAWID-1:0] west_out13;
wire [DATAWID-1:0] north_out13;
wire [DATAWID-1:0] south_out13;
wire [DATAWID-1:0] northwest_out13;
wire [DATAWID-1:0] southwest_out13;
wire [DATAWID-1:0] west_out23;
wire [DATAWID-1:0] north_out23;
wire [DATAWID-1:0] south_out23;
wire [DATAWID-1:0] northwest_out23;
wire [DATAWID-1:0] southwest_out23;
wire [DATAWID-1:0] east_out10;
wire [DATAWID-1:0] north_out10;
wire [DATAWID-1:0] south_out10;
wire [DATAWID-1:0] northeast_out10;
wire [DATAWID-1:0] southeast_out10;
wire [DATAWID-1:0] east_out20;
wire [DATAWID-1:0] north_out20;
wire [DATAWID-1:0] south_out20;
wire [DATAWID-1:0] northeast_out20;
wire [DATAWID-1:0] southeast_out20;
wire [DATAWID-1:0] east_out31;
wire [DATAWID-1:0] west_out31;
wire [DATAWID-1:0] north_out31;
wire [DATAWID-1:0] northeast_out31;
wire [DATAWID-1:0] northwest_out31;
wire [DATAWID-1:0] east_out32;
wire [DATAWID-1:0] west_out32;
wire [DATAWID-1:0] north_out32;
wire [DATAWID-1:0] northeast_out32;
wire [DATAWID-1:0] northwest_out32;
wire [DATAWID-1:0] east_out11;
wire [DATAWID-1:0] west_out11;
wire [DATAWID-1:0] north_out11;
wire [DATAWID-1:0] south_out11;
wire [DATAWID-1:0] northeast_out11;
wire [DATAWID-1:0] northwest_out11;
wire [DATAWID-1:0] southeast_out11;
wire [DATAWID-1:0] southwest_out11;
wire [DATAWID-1:0] east_out12;
wire [DATAWID-1:0] west_out12;
wire [DATAWID-1:0] north_out12;
wire [DATAWID-1:0] south_out12;
wire [DATAWID-1:0] northeast_out12;
wire [DATAWID-1:0] northwest_out12;
wire [DATAWID-1:0] southeast_out12;
wire [DATAWID-1:0] southwest_out12;
wire [DATAWID-1:0] east_out21;
wire [DATAWID-1:0] west_out21;
wire [DATAWID-1:0] north_out21;
wire [DATAWID-1:0] south_out21;
wire [DATAWID-1:0] northeast_out21;
wire [DATAWID-1:0] northwest_out21;
wire [DATAWID-1:0] southeast_out21;
wire [DATAWID-1:0] southwest_out21;
wire [DATAWID-1:0] east_out22;
wire [DATAWID-1:0] west_out22;
wire [DATAWID-1:0] north_out22;
wire [DATAWID-1:0] south_out22;
wire [DATAWID-1:0] northeast_out22;
wire [DATAWID-1:0] northwest_out22;
wire [DATAWID-1:0] southeast_out22;
wire [DATAWID-1:0] southwest_out22;
router r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(),
.i03(),.i04(south_in00),.i05(),.i06().i07(southeast_in00),.i08(),.o00(local_out00),.o01(east_out00),
.o02(),.o03(),.o04(south_out00),.o05(),.o06(),.o07(southeast_out00),.o08(),.Write(Write),.Read(Read));
router r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(east_in01),.i02(west_in01),
.i03(),.i04(south_in01),.i05(),.i06(),.i07(southeast_in01),.i08(southwest_in01),.o00(local_out01),.o01(east_out01),
.o02(west_out01),.o03(),.o04(south_out01),.o05(),.o06(),.o07(southeast_out01),.o08(southwest_out01),.Write(Write),.Read(Read));
router r_$02( .clk(clk), .rst(reset),.i00(local_in02),.i01(east_in02),.i02(west_in02),
.i03(),.i04(south_in02),.i05(),.i06(),.i07(southeast_in02),.i08(southwest_in02),.o00(local_out02),.o01(east_out02),
.o02(west_out02),.o03(),.o04(south_out02),.o05(),.o06(),.o07(southeast_out02),.o08(southwest_out02),.Write(Write),.Read(Read));
router r_$03( .clk(clk), .rst(reset),.i00(local_in03),.i01(),.i02(west_in03),.i03(),
.i04(south_in03),.i05(),,.i06(),.i07(),.i08(southwest_in03),.o00(local_out03),.o01(),.o02(west_out03),.o03(),
.o04(south_out03),.o05(),.o06(),.o07(),.o08(southwest_out03),.Write(Write),.Read(Read));
router r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in11),.i02(),
.i03(north_in10),.i04(south_in10),.i05(northeast_in10),.i06(),.i07(southeast_in10),,.i08(),.o00(local_out10),.o01(east_out10),
.o02(),.o03(north_out10),.o04(south_out10),.o05(northeast_out10),.o06(),.o07(southeast_out10),.o08(),.Write(Write),.Read(Read));
router r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(east_in11),.i02(west_in11),
.i03(north_in11),.i04(south_in11),.i05(northeast_in11),.i06(northwest_in11),.i07(southeast_in11),.i08(southwest_in11),.o00(local_out11),.o01(east_out11),
.o02(west_out11),.o03(north_out11),.o04(south_out11),.o05(northeast_out11),.o06(northwest_out11),.o07(southeast_out11),.o08(southwest_out11),.Write(Write),.Read(Read));
router r_$12( .clk(clk), .rst(reset),.i00(local_in12),.i01(east_in12),.i02(west_in12),
.i03(north_in12),.i04(south_in12),.i05(northeast_in12),.i06(northwest_in12),.i07(southeast_in12),.i08(southwest_in12),.o00(local_out12),.o01(east_out12),
.o02(west_out12),.o03(north_out12),.o04(south_out12),.o05(northeast_out12),.o06(northwest_out12),.o07(southeast_out12),.o08(southwest_out12),.Write(Write),.Read(Read));
router r_$13( .clk(clk), .rst(reset),.i00(local_in13),.i01(),.i02(west_in13),
.i03(north_in13),.i04(south_in13),.i05(),.i06(northwest_in13),.i07(),.i08(southwest_in13),.o00(local_out13),.o01(),
.o02(west_out13),.o03(north_out13),.o04(south_out13),.o05(),.o06(northwest_out13),.o07(),.o08(southwest_out13),.Write(Write),.Read(Read));
router r_$20( .clk(clk), .rst(reset),.i00(local_in20),.i01(east_in21),.i02(),
.i03(north_in20),.i04(south_in20),.i05(northeast_in20),.i06(),.i07(southeast_in20),,.i08(),.o00(local_out20),.o01(east_out20),
.o02(),.o03(north_out20),.o04(south_out20),.o05(northeast_out20),.o06(),.o07(southeast_out20),.o08(),.Write(Write),.Read(Read));
router r_$21( .clk(clk), .rst(reset),.i00(local_in21),.i01(east_in21),.i02(west_in21),
.i03(north_in21),.i04(south_in21),.i05(northeast_in21),.i06(northwest_in21),.i07(southeast_in21),.i08(southwest_in21),.o00(local_out21),.o01(east_out21),
.o02(west_out21),.o03(north_out21),.o04(south_out21),.o05(northeast_out21),.o06(northwest_out21),.o07(southeast_out21),.o08(southwest_out21),.Write(Write),.Read(Read));
router r_$22( .clk(clk), .rst(reset),.i00(local_in22),.i01(east_in22),.i02(west_in22),
.i03(north_in22),.i04(south_in22),.i05(northeast_in22),.i06(northwest_in22),.i07(southeast_in22),.i08(southwest_in22),.o00(local_out22),.o01(east_out22),
.o02(west_out22),.o03(north_out22),.o04(south_out22),.o05(northeast_out22),.o06(northwest_out22),.o07(southeast_out22),.o08(southwest_out22),.Write(Write),.Read(Read));
router r_$23( .clk(clk), .rst(reset),.i00(local_in23),.i01(),.i02(west_in23),
.i03(north_in23),.i04(south_in23),.i05(),.i06(northwest_in23),.i07(),.i08(southwest_in23),.o00(local_out23),.o01(),
.o02(west_out23),.o03(north_out23),.o04(south_out23),.o05(),.o06(northwest_out23),.o07(),.o08(southwest_out23),.Write(Write),.Read(Read));
router r_$30( .clk(clk), .rst(reset),.i00(local_in30),.i01(east_in30),.i02(),
.i03(north_in30),.i04(),.i05(northeast_in30),.i06(),.i07(),.i08(),.o00(local_out30),.o01(east_out30),.o02(),
.o03(north_out30),.o04(),.o05(northeast_in30),.o06(),.o07(),.o08(),.Write(Write),.Read(Read));
router r_$31( .clk(clk), .rst(reset),.i00(local_in31),.i01(east_in31),.i02(west_in31),
.i03(north_in31),.i04(),.i05(northeast_in31),.i06(northwest_in31),,.i07(),,.i08(),.o00(local_out31),.o01(east_out31),
.o02(west_out31),.o03(north_out31),.o04(),.o05(northeast_out31),.o06(northwest_out31),.o07(),.o08(),.Write(Write),.Read(Read));
router r_$32( .clk(clk), .rst(reset),.i00(local_in32),.i01(east_in32),.i02(west_in32),
.i03(north_in32),.i04(),.i05(northeast_in32),.i06(northwest_in32),,.i07(),,.i08(),.o00(local_out32),.o01(east_out32),
.o02(west_out32),.o03(north_out32),.o04(),.o05(northeast_out32),.o06(northwest_out32),.o07(),.o08(),.Write(Write),.Read(Read));
router r_$33( .clk(clk), .rst(reset),.i00(local_in33),.i01(),.i02(west_in33),
.i03(north_in33),.i04(),.i05(),.i06(northwest_in33),.o00(local_out33),.o01(),.o02(west_out33),
.o03(north_out33),.o04(),.o05(),.o06(northwest_out33),.o07(),.o08(),.Write(Write),.Read(Read));
always @ ( posedge clk)
begin
west_in01<=east_out00;
north_in10<=south_out00;
northwest_in11<=southeast_out00;
 west_in02<=east_out01;
 east_in00<=west_out01;
 north_in11<=south_out01;
 northwest_in12<=southeast_out01;
 northeast_in10<=southwest_out01;
 west_in03<=east_out02;
 east_in01<=west_out02;
 north_in12<=south_out02;
 northwest_in13<=southeast_out02;
 northeast_in11<=southwest_out02;
 east_in02<=west_out03;
 north_in13<=south_out03;
 northeast_in12<=southwest_out03;
 west_in11<=east_out10;
 south_in00<=north_out10;
 north_in20<=south_out10;
 southwest_in01<=northeast_out10;
 northwest_in21<=southeast_out10;
 west_in12<=east_out11;
 east_in10<=west_out11;
 south_in01<=north_out11;
 north_in21<=south_out11;
 northeast_in20<=southwest_out11;
 northwest_in22<=southeast_out11;
 southeast_in00<=northwest_out11;
 southwest_in02<=northeast_out11;
 west_in13<=east_out12;
 east_in11<=west_out12;
 south_in02<=north_out12;
 north_in22<=south_out12;
 northeast_in21<=southwest_out12;
 northwest_in23<=southeast_out12;
 southeast_in01<=northwest_out12;
 southwest_in03<=northeast_out12;
 east_in12<=west_out13;
 south_in03<=north_out13;
 north_in23<=south_out13;
 southeast_in02<=northwest_out13;
 northeast_in22<=southwest_out13;
 west_in21<=east_out20;
 south_in10<=north_out20;
 north_in30<=south_out20;
 southwest_in11<=northeast_out20;
 northwest_in31<=southeast_out20;
 west_in22<=east_out21;
 east_in20<=west_out21;
 south_in11<=north_out21;
 north_in31<=south_out21;
 northeast_in30<=southwest_out21;
 northwest_in32<=southeast_out21;
 southeast_in10<=northwest_out21;
 southwest_in12<=northeast_out21;
 west_in23<=east_out22;
 east_in21<=west_out22;
 south_in12<=north_out22;
 north_in32<=south_out22;
 northeast_in31<=southwest_out22;
 northwest_in33<=southeast_out22;
 southeast_in11<=northwest_out22;
 southwest_in13<=northeast_out22;
 east_in22<=west_out23;
 south_in13<=north_out23;
 north_in33<=south_out23;
 southeast_in12<=northwest_out23;
 northeast_in32<=southwest_out23;
 west_in31<=east_out30;
 south_in20<=north_out30;
 southwest_in21<=northeast_out30;
 west_in32<=east_out31;
 east_in30<=west_out31;
 south_in21<=north_out31;
 southeast_in20<=northwest_out31;
 southwest_in22<=northeast_out31;
 west_in33<=east_out32;
 east_in31<=west_out32;
 south_in22<=north_out32;
 southeast_in21<=northwest_out32;
 southwest_in23<=northeast_out32;
 east_in32<=west_out33;
 south_in23<=north_out33;
 southeast_in22<=northwest_out33;
end
endmodule
