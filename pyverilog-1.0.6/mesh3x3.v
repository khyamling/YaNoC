module mesh (
local_in00,local_out00,
local_in01,local_out01,
local_in02,local_out02,
local_in10,local_out10,
local_in11,local_out11,
local_in12,local_out12,
local_in20,local_out20,
local_in21,local_out21,
local_in22,local_out22,
clk, reset,  Write, Read);
input clk, reset, Write, Read; 
parameter DATAWID = 8;
input [DATAWID-1:0] local_in00;
output [DATAWID-1:0] local_out00;
input [DATAWID-1:0] local_in01;
output [DATAWID-1:0] local_out01;
input [DATAWID-1:0] local_in02;
output [DATAWID-1:0] local_out02;
input [DATAWID-1:0] local_in10;
output [DATAWID-1:0] local_out10;
input [DATAWID-1:0] local_in11;
output [DATAWID-1:0] local_out11;
input [DATAWID-1:0] local_in12;
output [DATAWID-1:0] local_out12;
input [DATAWID-1:0] local_in20;
output [DATAWID-1:0] local_out20;
input [DATAWID-1:0] local_in21;
output [DATAWID-1:0] local_out21;
input [DATAWID-1:0] local_in22;
output [DATAWID-1:0] local_out22;
reg [DATAWID-1:0] east_in00;
reg [DATAWID-1:0] south_in00;
reg [DATAWID-1:0] west_in02;
reg [DATAWID-1:0] south_in02;
reg [DATAWID-1:0] east_in20;
reg [DATAWID-1:0] north_in20;
reg [DATAWID-1:0] west_in22;
reg [DATAWID-1:0] north_in22;
reg [DATAWID-1:0] east_in10;
reg [DATAWID-1:0] north_in10;
reg [DATAWID-1:0] south_in10;
reg [DATAWID-1:0] west_in12;
reg [DATAWID-1:0] north_in12;
reg [DATAWID-1:0] south_in12;
reg [DATAWID-1:0] east_in01;
reg [DATAWID-1:0] west_in01;
reg [DATAWID-1:0] south_in01;
reg [DATAWID-1:0] east_in21;
reg [DATAWID-1:0] west_in21;
reg [DATAWID-1:0] north_in21;
reg [DATAWID-1:0] east_in11;
reg [DATAWID-1:0] west_in11;
reg [DATAWID-1:0] north_in11;
reg [DATAWID-1:0] south_in11;
wire [DATAWID-1:0] east_out00;
wire [DATAWID-1:0] south_out00;
wire [DATAWID-1:0] west_out02;
wire [DATAWID-1:0] south_out02;
wire [DATAWID-1:0] east_out20;
wire [DATAWID-1:0] north_out20;
wire [DATAWID-1:0] west_out22;
wire [DATAWID-1:0] north_out22;
wire [DATAWID-1:0] east_out10;
wire [DATAWID-1:0] north_out10;
wire [DATAWID-1:0] south_out10;
wire [DATAWID-1:0] west_out12;
wire [DATAWID-1:0] north_out12;
wire [DATAWID-1:0] south_out12;
wire [DATAWID-1:0] east_out01;
wire [DATAWID-1:0] west_out01;
wire [DATAWID-1:0] south_out01;
wire [DATAWID-1:0] east_out21;
wire [DATAWID-1:0] west_out21;
wire [DATAWID-1:0] north_out21;
wire [DATAWID-1:0] east_out11;
wire [DATAWID-1:0] west_out11;
wire [DATAWID-1:0] north_out11;
wire [DATAWID-1:0] south_out11;
router r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(),
.i03(),.i04(south_in00),.o00(local_out00),.o01(east_out00),
.o02(),.o03(),.o04(south_out00),.Write(Write),.Read(Read));
router r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(east_in01),.i02(west_in01),.i03(),.i04(south_in01),.o00(local_out01),.o01(east_out01),.o02(west_out01),.o03(),.o04(south_out01),.Write(Write),.Read(Read));
router r_$02( .clk(clk), .rst(reset),.i00(local_in02),.i01(),.i02(west_in02),.i03(),
.i04(south_in02),.o00(local_out02),.o01(),.o02(west_out02),.o03(),.o04(south_out02),.Write(Write),.Read(Read));
router r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in10),.i02(),
.i03(north_in10),.i04(south_in10),.o00(local_out10),.o01(east_out10),.o02(),.o03(north_out10),.o04(south_out10),.Write(Write),.Read(Read));
router r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(east_in11),.i02(west_in11),.i03(north_in11),.i04(south_in11),.o00(local_out11),.o01(east_out11),.o02(west_out11),.o03(north_out11),.o04(south_out11),.Write(Write),.Read(Read));
router r_$12( .clk(clk), .rst(reset),.i00(local_in12),.i01(),.i02(west_in12),
.i03(north_in12),.i04(south_in12),.o00(local_out12),.o01(),
.o02(west_out12),.o03(north_out12),.o04(south_out12),.Write(Write),.Read(Read));
router r_$20( .clk(clk), .rst(reset),.i00(local_in20),.i01(east_in20),.i02(),
.i03(north_in20),.i04(),.o00(local_out20),.o01(east_out20),.o02(),.o03(north_out20),.o04(),.Write(Write),.Read(Read));
router r_$21( .clk(clk), .rst(reset),.i00(local_in21),.i01(east_in21),.i02(west_in21),.i03(north_in21),.i04(),.o00(local_out21),.o01(east_out21),.o02(west_out21),.o03(north_out21),.o04(),.Write(Write),.Read(Read));
router r_$22( .clk(clk), .rst(reset),.i00(local_in22),.i01(),.i02(west_in22),
.i03(north_in22),.i04(),.o00(local_out22),.o01(),.o02(west_out22),.o03(north_out22),.o04(),.Write(Write),.Read(Read));
always @ ( posedge clk)
begin
west_in01<=east_out00;
north_in10<=south_out00;
west_in02<=east_out01;
east_in00<=west_out01;
north_in11<=south_out01;
east_in01<=west_out02;
north_in12<=south_out02;
west_in11<=east_out10;
south_in00<=north_out10;
north_in20<=south_out10;
west_in12<=east_out11;
east_in10<=west_out11;
south_in01<=north_out11;
north_in21<=south_out11;
east_in11<=west_out12;
south_in02<=north_out12;
north_in22<=south_out12;
west_in21<=east_out20;
south_in10<=north_out20;
west_in22<=east_out21;
east_in20<=west_out21;
south_in11<=north_out21;
east_in21<=west_out22;
south_in12<=north_out22;
end
endmodule
