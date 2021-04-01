`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:31:16 08/25/2016
// Design Name:   cross
// Module Name:   /selector/cross_tb.v
// Project Name:  selector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cross
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cross_tb;

	// Inputs
	reg[7:0] i0;
	reg[7:0] i1;
	reg[7:0] i2;
	reg[7:0] i3;
	reg[7:0] i4;
	reg clk; 
	reg rst;
	reg Write;
	reg Read;

	// Outputs
	wire[7:0] o0;
	wire[7:0] o1;
	wire[7:0] o2;
	wire[7:0] o3;
	wire[7:0] o4;

	// Instantiate the Unit Under Test (UUT)
	cross uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.o0(o0),
		.o1(o1),
		.o2(o2),
		.o3(o3),
		.o4(o4),
		.clk(clk),
		.rst(rst),
		.Write(Write),
		.Read(Read)		

	);
initial begin
i0 = 0;
i1 = 0;
i2 = 0;
i3 = 0;
i4 = 0;
rst = 1;
Read = 0;
Write = 0;
clk = 0;
end

	always #10 clk=~clk;
	initial begin
#20;
rst=0;
Read = 1;
i0 = 8'b11111111;
i1 = 8'b11100000;
i2 = 8'b00111100;
i3 = 8'b01010100;
i4 = 8'b01011110;
#10;
Read=0;
Write =1;
#20;
Read=1;
Write=0;
i0 = 8'b00000111;
#20;
Write=1;
#20;
#10;
Read=0;
Write =1;
#20;
Read=1;
Write=0;
i1 = 8'b00001101;
#20;
Write=1;
#20;
#10;
Read=0;
Write =1;
#20;
Read=1;
Write=0;
i2 = 8'b00000000;
#20;
Write=1;
#20;
  $finish;

	end
      
endmodule

