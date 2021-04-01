module mesh (
//local_in00,
local_out00,
//local_in01,
local_out01,
//local_in10,
local_out10,
//local_in11,
local_out11,
clk, reset,  Write, Read);
input clk, reset, Write, Read; 
wire[3:0] r00, r01, r02, r03;
//localparam id00=4'b0000;
//localparam id01=4'b0001;
//localparam id10=4'b0010;
//localparam id11=4'b0011;
parameter DATAWID =4;
assign r00=4'b0000;
assign r01=4'b0001;
assign r02=4'b1000;
assign r03=4'b1001;
//input [DATAWID-1:0] local_in00;
output [DATAWID-1:0] local_out00;
//input [DATAWID-1:0] local_in01;
output [DATAWID-1:0] local_out01;
//input [DATAWID-1:0] local_in10;
output [DATAWID-1:0] local_out10;
//input [DATAWID-1:0] local_in11;
output [DATAWID-1:0] local_out11;
wire [DATAWID-1:0] local_in00;
wire [DATAWID-1:0] local_in01;
wire [DATAWID-1:0] local_in10;
wire [DATAWID-1:0] local_in11;
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
/*reg[7:0] ticks0;
reg[7:0] ticks1;
reg[7:0] ticks2;
reg[7:0] ticks3;
reg[7:0] ticks;
reg[7:0] diff0;
reg[7:0] diff1;
reg[7:0] diff2;
reg[7:0] diff3;*/
lfsr l0(.clk(clk), .rst(reset), .out1(local_in00));
router r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(),
.i03(),.i04(south_in00),.o00(local_out00),.o01(east_out00),
.o02(),.o03(),.o04(south_out00),.Write(Write),.Read(Read), .r1(r00));
lfsr l1(.clk(clk), .rst(reset), .out1(local_in01));
router r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(),.i02(west_in01),.i03(),
.i04(south_in01),.o00(local_out01),.o01(),.o02(west_out01),.o03(),
.o04(south_out01),.Write(Write),.Read(Read),.r1(r01));
lfsr l2(.clk(clk), .rst(reset), .out1(local_in10));
router r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in10),.i02(),
.i03(north_in10),.i04(),.o00(local_out10),.o01(east_out10),.o02(),
.o03(north_out10),.o04(),.Write(Write),.Read(Read),.r1(r02));
lfsr l3(.clk(clk), .rst(reset), .out1(local_in11));
router r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(),.i02(west_in11),
.i03(north_in11),.i04(),.o00(local_out11),.o01(),.o02(west_out11),
.o03(north_out11),.o04(),.Write(Write),.Read(Read), .r1(r03));
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
//ticks0<=local_out00[7:4];
//ticks1<=local_out01[7:4];
//ticks2<=local_out10[7:4];
//ticks3<=local_out11[7:4];
//diff0<=ticks0-ticks;
//diff1<=ticks1-ticks;
//diff2<=ticks2-ticks;
//diff3<=ticks3-ticks;
/*$display("R0 latency %d", diff0);
$display("R1 latency %d", diff1);
$display("R2 latency %d", diff2);
$display("R3 latency %d", diff3); */
end

endmodule