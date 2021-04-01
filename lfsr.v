`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:40:29 09/29/2016 
// Design Name: 
// Module Name:    lfsr 
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
module lfsr(
out             ,  // Output of the counter
enable          ,  // Enable  for counter
clk             ,  // clock input
reset              // reset input
);

reg [24:0] counter;
reg clk_out;

//----------Output Ports--------------
//output [31:0] out;
output [3:0] out;

//------------Input Ports--------------
//input [31:0] data;
input enable, clk, reset;
//------------Internal Variables--------
//reg [31:0] out;
reg [3:0] out;
wire        linear_feedback;

//-------------Code Starts Here-------


assign linear_feedback = !(out[3]^out[2]);

initial
counter <=24'd0;


always @(posedge clk or posedge reset)
begin
if(reset)
 begin
 counter <=24'd0;
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


always @(posedge clk_out,posedge reset)
if (reset) begin // active high reset
  out <= 4'b0 ;
end else if (enable) begin
  out <= {out[2:0], linear_feedback};
end 

endmodule // End Of Module counter


