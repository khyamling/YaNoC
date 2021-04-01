`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    18:21:47 08/18/2016
// Design Name:
// Module Name:    lsfr
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
module lfsr(out1, clk, rst);

  output reg [3:0] out1;
  input clk, rst;

  wire feedback;

  assign feedback = ~(out1[3] ^ out1[0]);

always @(posedge clk, posedge rst)
  begin
    if (rst)
      out1 = 4'b0;
    else
      out1 = {out1[2:0],feedback};
  end
endmodule