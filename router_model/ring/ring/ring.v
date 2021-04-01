module ring (
local_in0,local_out0,
/*local_in1,local_out1,
local_in2,local_out2,
local_in3,local_out3,
local_in4,local_out4,
local_in5,local_out5,
local_in6,local_out6,
local_in7,local_out7,
local_in8,local_out8,
local_in9,local_out9,
local_in10,local_out10,
local_in11,local_out11,
local_in12,local_out12,
local_in13,local_out13,
local_in14,local_out14,*/
local_in15,local_out15,
clk, rst,  Write, Read);
input clk, rst, Write, Read; 
parameter DATAWID = 8;
input [DATAWID-1:0] local_in0;
output[DATAWID-1:0] local_out0;
wire [DATAWID-1:0] local_in1;
wire [DATAWID-1:0] local_out1;
wire [DATAWID-1:0] local_in2;
wire [DATAWID-1:0] local_out2;
wire [DATAWID-1:0] local_in3;
wire [DATAWID-1:0] local_out3;
wire [DATAWID-1:0] local_in4;
wire [DATAWID-1:0] local_out4;
wire [DATAWID-1:0] local_in5;
wire [DATAWID-1:0] local_out5;
wire [DATAWID-1:0] local_in6;
wire [DATAWID-1:0] local_out6;
wire [DATAWID-1:0] local_in7;
wire [DATAWID-1:0] local_out7;
wire [DATAWID-1:0] local_in8;
wire [DATAWID-1:0] local_out8;
wire [DATAWID-1:0] local_in9;
wire [DATAWID-1:0] local_out9;
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
input[DATAWID-1:0] local_in15;
output[DATAWID-1:0] local_out15;
reg [DATAWID-1:0] east_in0;
reg [DATAWID-1:0] west_in0;
reg [DATAWID-1:0] east_in1;
reg [DATAWID-1:0] west_in1;
reg [DATAWID-1:0] east_in2;
reg [DATAWID-1:0] west_in2;
reg [DATAWID-1:0] east_in3;
reg [DATAWID-1:0] west_in3;
reg [DATAWID-1:0] east_in4;
reg [DATAWID-1:0] west_in4;
reg [DATAWID-1:0] east_in5;
reg [DATAWID-1:0] west_in5;
reg [DATAWID-1:0] east_in6;
reg [DATAWID-1:0] west_in6;
reg [DATAWID-1:0] east_in7;
reg [DATAWID-1:0] west_in7;
reg [DATAWID-1:0] east_in8;
reg [DATAWID-1:0] west_in8;
reg [DATAWID-1:0] east_in9;
reg [DATAWID-1:0] west_in9;
reg [DATAWID-1:0] east_in10;
reg [DATAWID-1:0] west_in10;
reg [DATAWID-1:0] east_in11;
reg [DATAWID-1:0] west_in11;
reg [DATAWID-1:0] east_in12;
reg [DATAWID-1:0] west_in12;
reg [DATAWID-1:0] east_in13;
reg [DATAWID-1:0] west_in13;
reg [DATAWID-1:0] east_in14;
reg [DATAWID-1:0] west_in14;
reg [DATAWID-1:0] east_in15;
reg [DATAWID-1:0] west_in15;
wire [DATAWID-1:0] east_out0;
wire [DATAWID-1:0] west_out0;
wire [DATAWID-1:0] east_out1;
wire [DATAWID-1:0] west_out1;
wire [DATAWID-1:0] east_out2;
wire [DATAWID-1:0] west_out2;
wire [DATAWID-1:0] east_out3;
wire [DATAWID-1:0] west_out3;
wire [DATAWID-1:0] east_out4;
wire [DATAWID-1:0] west_out4;
wire [DATAWID-1:0] east_out5;
wire [DATAWID-1:0] west_out5;
wire [DATAWID-1:0] east_out6;
wire [DATAWID-1:0] west_out6;
wire [DATAWID-1:0] east_out7;
wire [DATAWID-1:0] west_out7;
wire [DATAWID-1:0] east_out8;
wire [DATAWID-1:0] west_out8;
wire [DATAWID-1:0] east_out9;
wire [DATAWID-1:0] west_out9;
wire [DATAWID-1:0] east_out10;
wire [DATAWID-1:0] west_out10;
wire [DATAWID-1:0] east_out11;
wire [DATAWID-1:0] west_out11;
wire [DATAWID-1:0] east_out12;
wire [DATAWID-1:0] west_out12;
wire [DATAWID-1:0] east_out13;
wire [DATAWID-1:0] west_out13;
wire [DATAWID-1:0] east_out14;
wire [DATAWID-1:0] west_out14;
wire [DATAWID-1:0] east_out15;
wire [DATAWID-1:0] west_out15;
router r0
( .clk(clk), .rst(reset),
.i00(local_in0),
.i01(east_in0),
.i02(west_in0),
.o00(local_out0),
.o01(east_out0),
.o02(west_out0),.Write(Write),.Read(Read)
);
router r1
( .clk(clk), .rst(reset),
.i00(local_in1),
.i01(east_in1),
.i02(west_in1),
.o00(local_out1),
.o01(east_out1),
.o02(west_out1),.Write(Write),.Read(Read)
);
router r2
( .clk(clk), .rst(reset),
.i00(local_in2),
.i01(east_in2),
.i02(west_in2),
.o00(local_out2),
.o01(east_out2),
.o02(west_out2),.Write(Write),.Read(Read)
);
router r3
( .clk(clk), .rst(reset),
.i00(local_in3),
.i01(east_in3),
.i02(west_in3),
.o00(local_out3),
.o01(east_out3),
.o02(west_out3),.Write(Write),.Read(Read)
);
router r4
( .clk(clk), .rst(reset),
.i00(local_in4),
.i01(east_in4),
.i02(west_in4),
.o00(local_out4),
.o01(east_out4),
.o02(west_out4),.Write(Write),.Read(Read)
);
router r5
( .clk(clk), .rst(reset),
.i00(local_in5),
.i01(east_in5),
.i02(west_in5),
.o00(local_out5),
.o01(east_out5),
.o02(west_out5),.Write(Write),.Read(Read)
);
router r6
( .clk(clk), .rst(reset),
.i00(local_in6),
.i01(east_in6),
.i02(west_in6),
.o00(local_out6),
.o01(east_out6),
.o02(west_out6),.Write(Write),.Read(Read)
);
router r7
( .clk(clk), .rst(reset),
.i00(local_in7),
.i01(east_in7),
.i02(west_in7),
.o00(local_out7),
.o01(east_out7),
.o02(west_out7),.Write(Write),.Read(Read)
);
router r8
( .clk(clk), .rst(reset),
.i00(local_in8),
.i01(east_in8),
.i02(west_in8),
.o00(local_out8),
.o01(east_out8),
.o02(west_out8),.Write(Write),.Read(Read)
);
router r9
( .clk(clk), .rst(reset),
.i00(local_in9),
.i01(east_in9),
.i02(west_in9),
.o00(local_out9),
.o01(east_out9),
.o02(west_out9),.Write(Write),.Read(Read)
);
router r10
( .clk(clk), .rst(reset),
.i00(local_in10),
.i01(east_in10),
.i02(west_in10),
.o00(local_out10),
.o01(east_out10),
.o02(west_out10),.Write(Write),.Read(Read)
);
router r11
( .clk(clk), .rst(reset),
.i00(local_in11),
.i01(east_in11),
.i02(west_in11),
.o00(local_out11),
.o01(east_out11),
.o02(west_out11),.Write(Write),.Read(Read)
);
router r12
( .clk(clk), .rst(reset),
.i00(local_in12),
.i01(east_in12),
.i02(west_in12),
.o00(local_out12),
.o01(east_out12),
.o02(west_out12),.Write(Write),.Read(Read)
);
router r13
( .clk(clk), .rst(reset),
.i00(local_in13),
.i01(east_in13),
.i02(west_in13),
.o00(local_out13),
.o01(east_out13),
.o02(west_out13),.Write(Write),.Read(Read)
);
router r14
( .clk(clk), .rst(reset),
.i00(local_in14),
.i01(east_in14),
.i02(west_in14),
.o00(local_out14),
.o01(east_out14),
.o02(west_out14),.Write(Write),.Read(Read)
);
router r15
( .clk(clk), .rst(reset),
.i00(local_in15),
.i01(east_in15),
.i02(west_in15),
.o00(local_out15),
.o01(east_out15),
.o02(west_out15),.Write(Write),.Read(Read)
);
always @ ( posedge clk)
begin
west_in1<=east_out0;
east_in15<=west_out0;
west_in2<=east_out1;
east_in0<=west_out1;
west_in3<=east_out2;
east_in1<=west_out2;
west_in4<=east_out3;
east_in2<=west_out3;
west_in5<=east_out4;
east_in3<=west_out4;
west_in6<=east_out5;
east_in4<=west_out5;
west_in7<=east_out6;
east_in5<=west_out6;
west_in8<=east_out7;
east_in6<=west_out7;
west_in9<=east_out8;
east_in7<=west_out8;
west_in10<=east_out9;
east_in8<=west_out9;
west_in11<=east_out10;
east_in9<=west_out10;
west_in12<=east_out11;
east_in10<=west_out11;
west_in13<=east_out12;
east_in11<=west_out12;
west_in14<=east_out13;
east_in12<=west_out13;
west_in15<=east_out14;
east_in13<=west_out14;
west_in0<=east_out15;
east_in14<=west_out15;
end
endmodule