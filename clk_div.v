`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:13 03/08/2017 
// Design Name: 
// Module Name:    clk_div 
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
module clk_div(clk,rst,clk_out);
input clk,rst;
output reg clk_out;
reg [24:0] counter;

always @(posedge clk or posedge rst)
begin
if(rst)
begin
counter<=24'd0;
clk_out <= 1'b0;
end
else
//if(counter==19'd1000000000000000)
if(counter[24] == 1)
begin
counter<=24'd0;
clk_out <= ~clk_out;
end
else
begin
counter<=counter+1;
end
end

endmodule
