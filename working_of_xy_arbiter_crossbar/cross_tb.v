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
		.rst(rst)
	);

	always #50 clk=~clk;
	initial begin
	 clk=0;
	 rst=0;
	 i0=8'b00000000;
	 i1=8'b00000000;
	 i2=8'b00000000;
	 i3=8'b00000000;
	 i4=8'b00000000;
#100;	 
	
	 i0=8'b00000001;
	 i1=8'b00010100;
	 i2=8'b00010101;
	 i3=8'b00010110;
	 i4=8'b00011001;
#100;

	 i0=8'b10000101;
	 i1=8'b01010110;
	 i2=8'b00010111;
	 i3=8'b00011110;
	 i4=8'b00011011;
	
  #100;
  
	 i0=8'b00100111;
	 i1=8'b01011111;
	 i2=8'b10011111;
	 i3=8'b00011111;
	 i4=8'b10111111;
#100;
    i0=8'b00100111;
	 i1=8'b01011111;
	 i2=8'b10010111;
	 i3=8'b00011111;
	 i4=8'b10110111;
#100;
  $finish;

	end
      
endmodule

