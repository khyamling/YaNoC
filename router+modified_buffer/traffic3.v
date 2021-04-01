`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:38 09/16/2016 
// Design Name: 
// Module Name:    traffic3 
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
module traffic3(
out             ,  // Output of the counter
enable          ,  // Enable  for counter
clk             ,  // clock input
reset              // reset input
);

//----------Output Ports--------------
output [7:0] out;
//------------Input Ports--------------
//input [7:0] data;
input enable, clk, reset;
//------------Internal Variables--------
reg [7:0] out;
wire        linear_feedback;

//-------------Code Starts Here-------
assign linear_feedback = !(out[7]^out[3]^out[2]^out[1]);


always @(posedge clk)
if (reset) begin // active high reset
  out <= 8'b0 ;
end else if (enable) begin
  out <= {out[6],out[5],
          out[4],out[3],
          out[2],out[1],
          out[0], linear_feedback};
end 


endmodule
