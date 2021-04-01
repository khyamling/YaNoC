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
input_R11,output_R11,
input_R12,output_R12,
input_R13,output_R13,
input_R14,output_R14,
input_R15,output_R15,
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
input [DATAWID-1:0] input_R11;
output [DATAWID-1:0] output_R11;
input [DATAWID-1:0] input_R12;
output [DATAWID-1:0] output_R12;
input [DATAWID-1:0] input_R13;
output [DATAWID-1:0] output_R13;
input [DATAWID-1:0] input_R14;
output [DATAWID-1:0] output_R14;
input [DATAWID-1:0] input_R15;
output [DATAWID-1:0] output_R15;
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
reg [DATAWID-1:0] R0_in10;
wire [DATAWID-1:0] R0_out10;
reg [DATAWID-1:0] R0_in11;
wire [DATAWID-1:0] R0_out11;
reg [DATAWID-1:0] R0_in12;
wire [DATAWID-1:0] R0_out12;
reg [DATAWID-1:0] R0_in13;
wire [DATAWID-1:0] R0_out13;
reg [DATAWID-1:0] R0_in14;
wire [DATAWID-1:0] R0_out14;
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
reg [DATAWID-1:0] port1_inR11;
reg [DATAWID-1:0] port1_inR12;
reg [DATAWID-1:0] port1_inR13;
reg [DATAWID-1:0] port1_inR14;
reg [DATAWID-1:0] port1_inR15;
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
wire [DATAWID-1:0] port1_outR11;
wire [DATAWID-1:0] port1_outR12;
wire [DATAWID-1:0] port1_outR13;
wire [DATAWID-1:0] port1_outR14;
wire [DATAWID-1:0] port1_outR15;
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
.i0010(R0_in10),
.i0110(R0_out10),
.i0011(R0_in11),
.i0111(R0_out11),
.i0012(R0_in12),
.i0112(R0_out12),
.i0013(R0_in13),
.i0113(R0_out13),
.i0014(R0_in14),
.i0114(R0_out14),
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
router r11
( .clk(clk), .rst(reset),
.i00(input_R10),
.i01(port1_inR10),
.o00(output_R10),
.o01(port1_outR10),.Write(Write),.Read(Read)
);
router r12
( .clk(clk), .rst(reset),
.i00(input_R11),
.i01(port1_inR11),
.o00(output_R11),
.o01(port1_outR11),.Write(Write),.Read(Read)
);
router r13
( .clk(clk), .rst(reset),
.i00(input_R12),
.i01(port1_inR12),
.o00(output_R12),
.o01(port1_outR12),.Write(Write),.Read(Read)
);
router r14
( .clk(clk), .rst(reset),
.i00(input_R13),
.i01(port1_inR13),
.o00(output_R13),
.o01(port1_outR13),.Write(Write),.Read(Read)
);
router r15
( .clk(clk), .rst(reset),
.i00(input_R14),
.i01(port1_inR14),
.o00(output_R14),
.o01(port1_outR14),.Write(Write),.Read(Read)
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
port1_inR11<=R0_out10;
port1_inR12<=R0_out11;
port1_inR13<=R0_out12;
port1_inR14<=R0_out13;
port1_inR15<=R0_out14;
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
R0_in10<=port1_outR11;
R0_in11<=port1_outR12;
R0_in12<=port1_outR13;
R0_in13<=port1_outR14;
R0_in14<=port1_outR15;
end
endmodule
