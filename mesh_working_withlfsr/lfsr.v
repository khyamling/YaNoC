`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:10 04/25/2017 
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
module lfsr(out1,  // Output of the counter
//enable,  // Enable  for counter
clk,  // clock input
reset              // reset input
);

//----------Output Ports--------------
output [31:0] out1;
//------------Input Ports--------------
//input [7:0] data;
input clk, reset;
parameter n=2;
//------------Internal Variables--------
reg [31:0] out1;
reg [31:0] out;
wire        linear_feedback;
//wire [3:0] source_address;
wire [1:0] flit_type;
wire [1:0] flit_type1;
wire [1:0] flit_type2;
//wire [7:0] destination_adress;
(* KEEP = "TRUE" *) reg[3:0] destx=4'b0;
(* KEEP = "TRUE" *) reg[3:0] desty=4'b0;
(* KEEP = "TRUE" *) reg [7:0] count1=8'b0;
(* KEEP = "TRUE" *) reg [13:0] count2=14'b0;
(* KEEP = "TRUE" *) reg [7:0] pid=8'b0;
//reg [21:0] time_stamp;
(* KEEP = "TRUE" *) reg [7:0] count=8'b00;
(* KEEP = "TRUE" *) reg [7:0] count3=8'b00;
(* KEEP = "TRUE" *) integer g=0;
//(* KEEP = "TRUE" *) reg[6:0] count3=0;
//wire soure_port;
//wire dest_port;

//-------------Code Starts Here-------

assign flit_type=2'b01;
assign flit_type1=2'b00;
assign flit_type2=2'b10;
//assign destination_adress=8'b00000001;
//assign time_stamp=$time;

always @(posedge clk)
begin
if(reset)
begin
count1=8'b0;
count=8'b0;
end
else if(count1<=n*n)
begin
count1=count1+1'b1;
count=count+1'b1;
end
else 
begin
count1=8'b0;
count=8'b0;
end
end

always @(posedge clk)
begin
if(reset)
begin
destx=4'b0;
desty=4'b0;
pid=8'b0;
end
else 
begin
destx=count1[3:0];
desty=count1[7:4];
pid=count[7:0];
end
end

assign linear_feedback = !(out[31]^ out[22]);
always @(posedge clk, posedge reset)
if (reset) 
begin // active high reset
out <= 32'b00000000 ;
count2<=14'b00000000;
// count3<= 4'b0;
  //time_stamp<=21'b000000000000000001010;
end 
else 
 begin
  out <= {out[30:0], linear_feedback}; //, source_address, destination_adress };
  //time_stamp<=$time;
 // $display(" decimal %d", time_stamp);
 // $display("binary out1 from lfsr %b", out1);
  count2<=count2+1'b1;
 // count3<=4'b0;
end 

/*
always @(*) begin
 counter_next = counter_next + 1;
end */

always @(posedge clk)
if (reset) 
begin
out1<=32'b0000;
count3<=8'b0;
end 
else if(count3==8'b01100100)
begin 
if(g==0)
begin 
out1<={flit_type, count2, destx, desty, pid}; 
//$display("head generated type %b pid %b desty %b destx %b count2 %b out1 %b", flit_type, pid, desty, destx, count2, out1);
//$display("head number %b", out[63:62]);
g=g+1;
//$display("first count value %b", count);
end
else if(g!=3)
begin
out1<={flit_type1, out[29:0]}; 
//$display("body generated  type %b out1 %b  out %b", flit_type1, out1,  out[15:0]);
//$display(" last 63 62 61 bits number %b", out[63:62]);
g=g+1;
//$display("value of g %d", g);
//counter_next=counter;
//$display("second count value %b", count);
end 
else if(g==3)
begin
out1<={flit_type2, count2, out[15:0]}; 
//$display("tail generated type %b out1 %b count2 %b  out %b", flit_type2,  out1, count2, out[15:0]);
//$display("count3 tail %b", time_stamp);
//$display("value of in tail g %d", g);
//$display(" last 63 62 61 bits number %b", out[63:62]);
g=0;
count3<=8'b0;
end
end
else 
begin
g=0;
count3<=count3+1'b1;
//#30; $finish;
//break;
end
endmodule // End Of Module counter


