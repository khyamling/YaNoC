`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:50 09/06/2016 
// Design Name: 
// Module Name:    mainsource 
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
module mainsource(
enable, clk, reset, out, ticks
    );
input enable;
input clk, reset;
output [63:0] out;
output [31:0] ticks;
wire [63:0] r1;

traffic t1( .enable(enable), .clk(clk), .reset(reset), .out(r1)); 
traffic1 t2 ( .send(r1), .recieve(out), .clk(clk), .reset(reset), .ticks(ticks));

endmodule
