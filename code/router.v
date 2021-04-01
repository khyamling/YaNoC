`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:16 08/24/2016 
// Design Name: 
// Module Name:    router 
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
module router( in0,in1,in2,in3, in4,Rst,Clk,data_out0, data_out1,data_out2, data_out3, data_out4,Read, Write
    );
input [7:0] in0, in1,in2, in3, in4;
input Clk, Rst, Read, Write;
output data_out0, data_out1,data_out2, data_out3, data_out4;
wire[7:0] data_out0, data_out1,data_out2, data_out3, data_out4;
wire G1, G2, G3, G4, G5, E1, E2, E3, E4, E5;
wire[7:0] L0, L1, L2, L3, L4;
fifo_local f1(.rst(Rst), . clk(Clk), .read(Read), .write(Write), .data_in(in0), .data_out(L0));
fifo_east f2(.rst(Rst), . clk(Clk), .read(Read), .write(Write), .data_in(in1), .data_out(L1));
fifo_west f3(.rst(Rst), . clk(Clk), .read(Read), .write(Write), .data_in(in2), .data_out(L2));
fifo_north f4(.rst(Rst), . clk(Clk), .read(Read), .write(Write), .data_in(in3), .data_out(L3));
fifo_south f5(.rst(Rst), . clk(Clk), .read(Read), .write(Write), .data_in(in4), .data_out(L4));
rlogic_local r1(.Li(L0), .e1(E1), .e2(E2), .e3(E3), .e4(E4), .e5(E5));
rlogic_east r2(.Ei(L1), .e1(E1), .e2(E2), .e3(E3), .e4(E4), .e5(E5));
rlogic_west r3(.Wi(L2), .e1(E1), .e2(E2), .e3(E3), .e4(E4), .e5(E5));
rlogic_north r4(.Ni(L3), .e1(E1), .e2(E2), .e3(E3), .e4(E4), .e5(E5));
rlogic_south r5(.Si(L4), .e1(E1), .e2(E2), .e3(E3), .e4(E4), .e5(E5));
arbiter1 a1 (.req0(E1), .req1(E2), .req2(E3), .req3(E4), .req4(E5), .rst(Rst), .clk(Clk), .gnt0(G1), .gnt1(G2), .gnt2(G3), .gnt3(G4), .gnt4(G5)); 
arbiter2 a2  (.req0(E1), .req1(E2), .req2(E3), .req3(E4), .req4(E5), .rst(Rst), .clk(Clk), .gnt0(G1), .gnt1(G2), .gnt2(G3), .gnt3(G4), .gnt4(G5)); 
arbiter3 a3  (.req0(E1), .req1(E2), .req2(E3), .req3(E4), .req4(E5), .rst(Rst), .clk(Clk), .gnt0(G1), .gnt1(G2), .gnt2(G3), .gnt3(G4), .gnt4(G5)); 
arbiter4  a4 (.req0(E1), .req1(E2), .req2(E3), .req3(E4), .req4(E5), .rst(Rst), .clk(Clk), .gnt0(G1), .gnt1(G2), .gnt2(G3), .gnt3(G4), .gnt4(G5)); 
arbiter5 a5 (.req0(E1), .req1(E2), .req2(E3), .req3(E4), .req4(E5), .rst(Rst), .clk(Clk), .gnt0(G1), .gnt1(G2), .gnt2(G3), .gnt3(G4), .gnt4(G5)); 
crossbar c1 (.gnt1(G1),.gnt2(G2), .gnt3(G3),.gnt4(G4), .gnt5(G5), .in1(L0), .in2(L1), .in3(L2), .in4(L3), .in5(L5), .dat1(data_out0), .dat2(data_out1), .dat3(data_out2), .dat4(data_out3), .dat5(data_out4));
endmodule
