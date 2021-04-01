`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:33 08/27/2016 
// Design Name: 
// Module Name:    fifo1 
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
module fifoR41(clk, rst, write,data_in, read, data_out);
input clk, rst, write,read;
input[7:0] data_in;
output[7:0] data_out;
reg[2:0] read_ptr=3'b000;
reg[2:0] write_ptr=3'b000;
reg[3:0] count=4'b0000;
reg[7:0] data_out;
reg stack_full=1'b0;
reg stack_empty=1'b1;
reg[7:0] stack[7:0];
always @(posedge clk)
begin
case(count)
4'b0000:stack_empty=1'b1;
4'b1000: stack_full=1'b1;
default: begin
stack_empty=1'b0;
stack_full=1'b0;
end
endcase
end
always @(posedge clk or posedge rst)
begin
if(rst==1)
begin
data_out<=0;
read_ptr<=0;
write_ptr<=0;
count<=0;
end
else if(write&&(!read)&&(!stack_full)&&(count<0111))
begin
stack[write_ptr]<=data_in;
if(write_ptr<3'b111)
write_ptr<=write_ptr+1'b1;
else
write_ptr<=3'b000;
count<=count+1'b1;
end
else if(!write&& read &&(!stack_empty)&&(count<0111))
begin
data_out<=stack[read_ptr];
if(read_ptr<3'b111)
read_ptr<=read_ptr+1'b1;
else
read_ptr<=3'b000;
count<=count-1'b1;
end
else if(write&&read&&stack_empty&&(count<0111))
begin
stack[write_ptr]<=data_in;
if(write_ptr<3'b111)
write_ptr<=write_ptr+1'b1;
else
write_ptr<=3'b000;
count<=count+1'b1;
end
else if(write&&read&&stack_full&&(count<0111))
begin
data_out<=stack[read_ptr];
if(read_ptr<3'b111)
read_ptr<=read_ptr+1'b1;
else
read_ptr<=3'b000;
count<=count-1'b1;
end
else if(write&&read&&(!stack_empty)&&(!stack_full)&&(count<0111))
begin
stack[write_ptr]<=data_in;
if(write_ptr<3'b111)
write_ptr<=write_ptr+1'b1;
else
write_ptr<=3'b000;
data_out<=stack[read_ptr];
if(read_ptr<3'b111)
read_ptr<=read_ptr+1'b1;
else
read_ptr<=3'b000;
end
end



endmodule
