`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:01 08/27/2016 
// Design Name: 
// Module Name:    fifo0 
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
module fifo(out, clk, rst, read, write);
input clk, rst, read, write;

output[3:0] out;
wire[3:0] L0;

lfsr l(.clk(clk), .rst(rst), .out1(L0));
fifo0 f0(.rst_n(rst), .clk(clk), .rd_en(Read), .wr_en(Write), .fifo_in(L0), .fifo_out(out), .empty(), .full(), .fifo_counter());

endmodule
