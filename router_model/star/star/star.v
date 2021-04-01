module star (
input_R1,output_R1,
input_R2,output_R2,
input_R3,output_R3,
input_R4,output_R4,
input_R5,output_R5,
input_R6,output_R6,
input_R7,output_R7,
input_R8,output_R8,
input_R9,output_R9,
input_R10,output_R10,
clk, rst,  Write, Read);
input clk, rst, Write, Read; 
parameter DATAWID = 8;
input [DATAWID-1:0] input_R1;
output [DATAWID-1:0] output_R1;
input [DATAWID-1:0] input_R2;
output [DATAWID-1:0] output_R2;
input [DATAWID-1:0] input_R3;
output [DATAWID-1:0] output_R3;
input [DATAWID-1:0] input_R4;
output [DATAWID-1:0] output_R4;
input [DATAWID-1:0] input_R5;
output [DATAWID-1:0] output_R5;
input [DATAWID-1:0] input_R6;
output [DATAWID-1:0] output_R6;
input [DATAWID-1:0] input_R7;
output [DATAWID-1:0] output_R7;
input [DATAWID-1:0] input_R8;
output [DATAWID-1:0] output_R8;
input [DATAWID-1:0] input_R9;
output [DATAWID-1:0] output_R9;
input [DATAWID-1:0] input_R10;
output [DATAWID-1:0] output_R10;
reg [DATAWID-1:0] R0_in0;
wire [DATAWID-1:0] R0_out0;
reg [DATAWID-1:0] R0_in1;
wire [DATAWID-1:0] R0_out1;
reg [DATAWID-1:0] R0_in2;
wire [DATAWID-1:0] R0_out2;
reg [DATAWID-1:0] R0_in3;
wire [DATAWID-1:0] R0_out3;
reg [DATAWID-1:0] R0_in4;
wire [DATAWID-1:0] R0_out4;
reg [DATAWID-1:0] R0_in5;
wire [DATAWID-1:0] R0_out5;
reg [DATAWID-1:0] R0_in6;
wire [DATAWID-1:0] R0_out6;
reg [DATAWID-1:0] R0_in7;
wire [DATAWID-1:0] R0_out7;
reg [DATAWID-1:0] R0_in8;
wire [DATAWID-1:0] R0_out8;
reg [DATAWID-1:0] R0_in9;
wire [DATAWID-1:0] R0_out9;
reg [DATAWID-1:0] port1_inR1;
reg [DATAWID-1:0] port1_inR2;
reg [DATAWID-1:0] port1_inR3;
reg [DATAWID-1:0] port1_inR4;
reg [DATAWID-1:0] port1_inR5;
reg [DATAWID-1:0] port1_inR6;
reg [DATAWID-1:0] port1_inR7;
reg [DATAWID-1:0] port1_inR8;
reg [DATAWID-1:0] port1_inR9;
reg [DATAWID-1:0] port1_inR10;
wire [DATAWID-1:0] port1_outR1;
wire [DATAWID-1:0] port1_outR2;
wire [DATAWID-1:0] port1_outR3;
wire [DATAWID-1:0] port1_outR4;
wire [DATAWID-1:0] port1_outR5;
wire [DATAWID-1:0] port1_outR6;
wire [DATAWID-1:0] port1_outR7;
wire [DATAWID-1:0] port1_outR8;
wire [DATAWID-1:0] port1_outR9;
wire [DATAWID-1:0] port1_outR10;
router0 r
( .clk(clk), .rst(reset),
.i000(R0_in0),
.i010(R0_out0),
.i001(R0_in1),
.i011(R0_out1),
.i002(R0_in2),
.i012(R0_out2),
.i003(R0_in3),
.i013(R0_out3),
.i004(R0_in4),
.i014(R0_out4),
.i005(R0_in5),
.i015(R0_out5),
.i006(R0_in6),
.i016(R0_out6),
.i007(R0_in7),
.i017(R0_out7),
.i008(R0_in8),
.i018(R0_out8),
.i009(R0_in9),
.i019(R0_out9),
.Write(Write),.Read(Read));
router r1
( .clk(clk), .rst(reset),
.i00(input_R0),
.i01(port1_inR0),
.o00(output_R0),
.o01(port1_outR0),.Write(Write),.Read(Read)
);
router r2
( .clk(clk), .rst(reset),
.i00(input_R1),
.i01(port1_inR1),
.o00(output_R1),
.o01(port1_outR1),.Write(Write),.Read(Read)
);
router r3
( .clk(clk), .rst(reset),
.i00(input_R2),
.i01(port1_inR2),
.o00(output_R2),
.o01(port1_outR2),.Write(Write),.Read(Read)
);
router r4
( .clk(clk), .rst(reset),
.i00(input_R3),
.i01(port1_inR3),
.o00(output_R3),
.o01(port1_outR3),.Write(Write),.Read(Read)
);
router r5
( .clk(clk), .rst(reset),
.i00(input_R4),
.i01(port1_inR4),
.o00(output_R4),
.o01(port1_outR4),.Write(Write),.Read(Read)
);
router r6
( .clk(clk), .rst(reset),
.i00(input_R5),
.i01(port1_inR5),
.o00(output_R5),
.o01(port1_outR5),.Write(Write),.Read(Read)
);
router r7
( .clk(clk), .rst(reset),
.i00(input_R6),
.i01(port1_inR6),
.o00(output_R6),
.o01(port1_outR6),.Write(Write),.Read(Read)
);
router r8
( .clk(clk), .rst(reset),
.i00(input_R7),
.i01(port1_inR7),
.o00(output_R7),
.o01(port1_outR7),.Write(Write),.Read(Read)
);
router r9
( .clk(clk), .rst(reset),
.i00(input_R8),
.i01(port1_inR8),
.o00(output_R8),
.o01(port1_outR8),.Write(Write),.Read(Read)
);
router r10
( .clk(clk), .rst(reset),
.i00(input_R9),
.i01(port1_inR9),
.o00(output_R9),
.o01(port1_outR9),.Write(Write),.Read(Read)
);
always @ ( posedge clk)
begin
port1_inR1<=R0_out0;
port1_inR2<=R0_out1;
port1_inR3<=R0_out2;
port1_inR4<=R0_out3;
port1_inR5<=R0_out4;
port1_inR6<=R0_out5;
port1_inR7<=R0_out6;
port1_inR8<=R0_out7;
port1_inR9<=R0_out8;
port1_inR10<=R0_out9;
R0_in0<=port1_outR1;
R0_in1<=port1_outR2;
R0_in2<=port1_outR3;
R0_in3<=port1_outR4;
R0_in4<=port1_outR5;
R0_in5<=port1_outR6;
R0_in6<=port1_outR7;
R0_in7<=port1_outR8;
R0_in8<=port1_outR9;
R0_in9<=port1_outR10;
end
endmodule
