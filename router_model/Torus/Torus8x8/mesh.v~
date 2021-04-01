module mesh (
local_in00,local_out00,
local_in01,local_out01,
local_in10,local_out10,
local_in11,local_out11,
clk, reset,  Write, Read);
input clk, reset, Write, Read; 
parameter DATAWID = 16;
input [DATAWID-1:0] local_in00;
output [DATAWID-1:0] local_out00;
input [DATAWID-1:0] local_in01;
output [DATAWID-1:0] local_out01;
input [DATAWID-1:0] local_in10;
output [DATAWID-1:0] local_out10;
input [DATAWID-1:0] local_in11;
output [DATAWID-1:0] local_out11;
reg [DATAWID-1:0] east_in00;
reg [DATAWID-1:0] south_in00;
reg [DATAWID-1:0] west_in01;
reg [DATAWID-1:0] south_in01;
reg [DATAWID-1:0] east_in10;
reg [DATAWID-1:0] north_in10;
reg [DATAWID-1:0] west_in11;
reg [DATAWID-1:0] north_in11;
wire [DATAWID-1:0] east_out00;
wire [DATAWID-1:0] south_out00;
wire [DATAWID-1:0] west_out01;
wire [DATAWID-1:0] south_out01;
wire [DATAWID-1:0] east_out10;
wire [DATAWID-1:0] north_out10;
wire [DATAWID-1:0] west_out11;
wire [DATAWID-1:0] north_out11;
router r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(),
.i03(),.i04(south_in00),.o00(local_out00),.o01(east_out00),
.o02(),.o03(),.o04(south_out00),.Write(Write),.Read(Read));
router r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(),.i02(west_in01),.i03(),
.i04(south_in01),.o00(local_out01),.o01(),.o02(west_out01),.o03(),.o04(south_out01),.Write(Write),.Read(Read));
router r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in10),.i02(),
.i03(north_in10),.i04(),.o00(local_out10),.o01(east_out10),.o02(),.o03(north_out10),.o04(),.Write(Write),.Read(Read));
router r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(),.i02(west_in11),
.i03(north_in11),.i04(),.o00(local_out11),.o01(),.o02(west_out11),.o03(north_out11),.o04(),.Write(Write),.Read(Read));
always @ ( posedge clk)
begin
west_in01<=east_out00;
north_in10<=south_out00;
east_in00<=west_out01;
north_in11<=south_out01;
west_in11<=east_out10;
south_in00<=north_out10;
east_in10<=west_out11;
south_in01<=north_out11;
end
endmodule
