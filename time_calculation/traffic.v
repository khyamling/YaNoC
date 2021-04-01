`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:08:50 09/06/2016 
// Design Name: 
// Module Name:    traffic 
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
module traffic(out             ,  // Output of the counter
enable          ,  // Enable  for counter
clk             ,  // clock input
reset              // reset input
);

//----------Output Ports--------------
output [63:0] out;
//------------Input Ports--------------
//input [7:0] data;
input enable, clk, reset;
//------------Internal Variables--------
reg [63:0] out;
reg [31:0] out1;
wire        linear_feedback;
//wire [3:0] source_address;
wire [1:0] flit_type;
wire [1:0] flit_type1;
wire [1:0] flit_type2;
wire [7:0] destination_adress;
reg [21:0] time_stamp;
reg [1:0] count=2'b00;
integer g=0;
//wire soure_port;
//wire dest_port;

//-------------Code Starts Here-------
assign linear_feedback = !(out1[31]^out1[29]^out1[26]^out1[23]^out1[22]);
assign flit_type=2'b01;
assign flit_type1=2'b00;
assign flit_type2=2'b10;
assign destination_adress=8'b00000001;
//assign time_stamp=$time;

always @(posedge clk)
if (reset) begin // active high reset
  out1 <= 32'b00000000 ;
  time_stamp<=21'b000000000000000001010;
end else if (enable) begin
  out1 <= {out1[30:0], linear_feedback}; //, source_address, destination_adress };
  time_stamp<=$time;
  $display(" decimal %d", time_stamp);
  $display("binary %b", time_stamp);
end 
/*
always @(*) begin
 counter_next = counter_next + 1;
end */

always @(posedge clk)
if (reset) begin
out<=64'b0000000000000000000000;
end
else if(g==0)
begin 
out<={flit_type, destination_adress, time_stamp, out1}; 
$display("head generated %b", flit_type);
//$display("head number %b", out[63:62]);
g=g+1;
//$display("first count value %b", count);
end
else if(g!=10) begin
out<={flit_type1, destination_adress, time_stamp, out1}; 
$display("body generated %b", flit_type1);
//$display(" last 63 62 61 bits number %b", out[63:62]);
g=g+1;
//$display("value of g %d", g);
//counter_next=counter;
//$display("second count value %b", count);
end 
else if(g==10)
begin
out<={flit_type2, destination_adress, time_stamp, out1}; 
$display("tail generated %b", flit_type2);
//$display("count3 tail %b", time_stamp);
//$display("value of in tail g %d", g);
//$display(" last 63 62 61 bits number %b", out[63:62]);
g=0;
//#30; $finish;
//break;
end
endmodule // End Of Module counter



