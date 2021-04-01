`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:22 04/27/2017 
// Design Name: 
// Module Name:    routec 
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
`define NULL 0
module routec (clk, reset, Li, e1, e2, e3, e4, e5);
input clk;
input reset;
//input wire [3:0] r1;
//input [1:0] desty;
//integer data_file ; // file handler
//integer scan_file ; // file handler
reg [3:0] port_num_next;
output reg e1, e2, e3, e4, e5;
reg [3:0] compare [15:0]; //for comparing the contents of the routing table.
input wire [3:0] Li;
//wire [1:0] xc;
//wire [3:2] yc;

//assign xc=Li[1:0];
//assign yc=Li[3:2];

parameter file="";


//reg [3:0] dest;
reg eof;
integer line, i;
//reg [3:0] test [4:0]; //just example
//reg [3:0] test_counter;

initial begin
$readmemb(file, compare);
end
 
always @(posedge clk)
begin
if(reset) begin
port_num_next <=4'b1111;
end
else begin
port_num_next <= compare[Li];
$display("destination is %b", Li);
$display("outport is %b", port_num_next);
end
end

always  @(posedge clk)
begin
if(reset)
begin
e1=0;
e2=0;
e3=0;
e4=0;
e5=0;
end
else if(port_num_next == 0)
begin
e1=1;
e2=0;
e3=0;
e4=0;
e5=0;
end
else if(port_num_next == 1)
begin
e1=0;
e2=1;
e3=0;
e4=0;
e5=0;
end
else if(port_num_next == 2)
begin
e1=0;
e2=0;
e3=1;
e4=0;
e5=0;
end
else if(port_num_next == 3)
begin
e1=0;
e2=0;
e3=0;
e4=1;
e5=0;
end
else if(port_num_next == 4)
begin
e1=0;
e2=0;
e3=0;
e4=0;
e5=1;
end
else
begin
e1=0;
e2=0;
e3=0;
e4=0;
e5=0;
end
end//always
endmodule

