module ring (
local_in0,local_out0,
local_in1,local_out1,
local_in2,local_out2,
local_in3,local_out3,
local_in4,local_out4,
local_in5,local_out5,
local_in6,local_out6,
local_in7,local_out7,
clk, reset,  Write, Read);
input clk, rst, Write, Read; 
parameter DATAWID = 8;
input [DATAWID-1:0] local_in0;
output [DATAWID-1:0] local_out0;
input [DATAWID-1:0] local_in1;
output [DATAWID-1:0] local_out1;
input [DATAWID-1:0] local_in2;
output [DATAWID-1:0] local_out2;
input [DATAWID-1:0] local_in3;
output [DATAWID-1:0] local_out3;
input [DATAWID-1:0] local_in4;
output [DATAWID-1:0] local_out4;
input [DATAWID-1:0] local_in5;
output [DATAWID-1:0] local_out5;
input [DATAWID-1:0] local_in6;
output [DATAWID-1:0] local_out6;
input [DATAWID-1:0] local_in7;
output [DATAWID-1:0] local_out7;
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
router r0
( .clk(clk), .rst(reset),
.i00(local_in0),
.i01(east_in0),
.i02(west_in0),
.o00(local_out0),
.o01(east_out0),
.o02(west_out0)
);
router r1
( .clk(clk), .rst(reset),
.i00(local_in1),
.i01(east_in1),
.i02(west_in1),
.o00(local_out1),
.o01(east_out1),
.o02(west_out1)
);
router r2
( .clk(clk), .rst(reset),
.i00(local_in2),
.i01(east_in2),
.i02(west_in2),
.o00(local_out2),
.o01(east_out2),
.o02(west_out2)
);
router r3
( .clk(clk), .rst(reset),
.i00(local_in3),
.i01(east_in3),
.i02(west_in3),
.o00(local_out3),
.o01(east_out3),
.o02(west_out3)
);
router r4
( .clk(clk), .rst(reset),
.i00(local_in4),
.i01(east_in4),
.i02(west_in4),
.o00(local_out4),
.o01(east_out4),
.o02(west_out4)
);
router r5
( .clk(clk), .rst(reset),
.i00(local_in5),
.i01(east_in5),
.i02(west_in5),
.o00(local_out5),
.o01(east_out5),
.o02(west_out5)
);
router r6
( .clk(clk), .rst(reset),
.i00(local_in6),
.i01(east_in6),
.i02(west_in6),
.o00(local_out6),
.o01(east_out6),
.o02(west_out6)
);
router r7
( .clk(clk), .rst(reset),
.i00(local_in7),
.i01(east_in7),
.i02(west_in7),
.o00(local_out7),
.o01(east_out7),
.o02(west_out7)
);
always @ ( posedge clk)
begin
west_in1<=east_out0;
south_in7<=north_out0;
west_in2<=east_out1;
east_in0<=west_out1;
west_in3<=east_out2;
east_in1<=west_out2;
east_in2<=west_out3;
south_in4<=north_out3;
east_in5<=west_out4;
north_in3<=south_out4;
west_in4<=east_out5;
east_in6<=west_out5;
west_in5<=east_out6;
east_in7<=west_out6;
west_in6<=east_out7;
north_in0<=south_out7;
end
endmodule
