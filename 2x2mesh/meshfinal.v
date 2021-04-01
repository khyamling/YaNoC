`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:41:08 08/31/2016 
// Design Name: 
// Module Name:    meshfinal 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
/*module meshfinal(in00, in01, in02, in03, in04,  in10, in11, in12, in13, in14,
clk, rst, Write, Read, L00, E01, W02, N03, S04, L10, E11, W12, N13, S14
    );
input[7:0] in00, in10;
output[7:0] L00, L10;
inout wire [7:0] in01, in02, in03, in04;
inout wire [7:0] in11, in12, in13, in14;
inout wire [7:0] E01, W02, N03, S04;
inout wire[7:0]  E11, W12, N13, S14;
input clk, rst, Write, Read;

wire [7:0] outEW01, outWE10;

router0 r0(.i00(in00), .i01(outWE10), .i02(), .i03(), .i04(), .clk(clk), .rst(rst), .o00(L00), .o01(outEW01), .o02(), .o03(), .o04(), .Write(Write), .Read(Read) );

router1 r1(.i10(in10), .i11(), .i12(outEW01), .i13(), .i14(), .clk(clk), .rst(rst), .o10(L10), .o11(E11), .o12(outWE10), .o13(), .o14(), .Write(Write), .Read(Read));


endmodule */

module meshfinal(in00, in10,
clk, rst, Write, Read, L00, L10
    );
input[7:0] in00, in10;
output[7:0] L00, L10;
//wire [7:0] in01, in02, in03, in04;
//wire [7:0] in11, in12, in13, in14;
reg [7:0] E01, W02, N03, S04;
reg [7:0]  E11, W12, N13, S14;
input clk, rst, Write, Read;

wire [7:0] outEW01, outWE10;

router0 r0(.i00(in00), .i01(E01), .i02(W02), .i03(N03), .i04(S04), .clk(clk), .rst(rst), .o00(L00), .o01(outEW01), .o02(), .o03(), .o04(), .Write(Write), .Read(Read) );

router1 r1(.i10(in10), .i11(E11), .i12(W12), .i13(N13), .i14(S14), .clk(clk), .rst(rst), .o10(L10), .o11(), .o12(outWE10), .o13(), .o14(), .Write(Write), .Read(Read));

always @(posedge clk )
begin
E01<=outWE10;
W12<=outEW01;
end

endmodule 
