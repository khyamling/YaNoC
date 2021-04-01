`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:24 08/31/2016
// Design Name:   meshfinal
// Module Name:   /finalmesh/mesh_tb.v
// Project Name:  finalmesh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: meshfinal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mesh_tb;

	// Inputs
	reg [7:0] in00;
	reg [7:0] in10;
   reg [7:0] in20;
	reg [7:0] in30;
	reg clk;
	reg rst;
	reg Write;
	reg Read;

	// Outputs
	wire [7:0] L00;
	wire [7:0] L10;
   wire [7:0] L20;
   wire [7:0] L30;

	// Bidirs
	/*wire [7:0] in01;
	wire [7:0] in02;
	wire [7:0] in03;
	wire [7:0] in04;
	wire [7:0] in11;
	wire [7:0] in12;
	wire [7:0] in13;
	wire [7:0] in14;
	wire [7:0] E01;
	wire [7:0] W02;
	wire [7:0] N03;
	wire [7:0] S04;
	wire [7:0] E11;
	wire [7:0] W12;
	wire [7:0] N13;
	wire [7:0] S14; */

	// Instantiate the Unit Under Test (UUT)
	meshfinal uut (
		.in00(in00), 
		.in10(in10), 
		.in20(in20), 
		.in30(in30), 
		.clk(clk), 
		.rst(rst), 
		.Write(Write), 
		.Read(Read), 
		.L00(L00), 
		.L10(L10),
		.L20(L20),
		.L30(L30)
	
	);
always #25 clk=~clk;
	initial begin
		// Initialize Inputs
	   in00 = 8'b00000000;
		in10 = 8'b00000000;
		in20 = 8'b00000000;
		in30 = 8'b00000000;
		clk = 0;
		rst = 1;
		Write = 1;
		Read = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in00 = 8'b10100001;
		in10 = 8'b10000000;
   	in20 = 8'b10000101;
		in30 = 8'b10000100;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
		#100;
		in00 = 8'b10000100;
		in10 = 8'b10000001;
		in20 = 8'b10000100;
		in30 = 8'b10000101;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
		#100;
	   in00 = 8'b10000001;
		in10 = 8'b10000001;
		in20 = 8'b10000100;
		in30 = 8'b10000101;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
	#100;
	   in00 = 8'b10000001;
		in10 = 8'b10000000;
		in20 = 8'b10000001;
		in30 = 8'b10000100;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
#100;
	   in00 = 8'b10000100;
		in10 = 8'b10000101;
		in20 = 8'b10100101;
		in30 = 8'b11010100;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
#100;
      in00 = 8'b10000101;
		in10 = 8'b01100100;
		in20 = 8'b00110101;
		in30 = 8'b01010101;
		Write = 0;
		Read = 1;
		clk = 1;
		rst = 0;
#100;
     in00 = 8'b00000001;
		in10 = 8'b01000000;
		in20 = 8'b01001001;
    	in30 = 8'b01001010;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
#100;
      in00 = 8'b10000100;
		in10 = 8'b10100101;
		in20 = 8'b10100001;
		in30 = 8'b10110000;
		Write = 1;
		Read = 1;
		clk = 1;
		rst = 0;
#100;
      in00 = 8'b10000101;
		in10 = 8'b01110001;
		in20 = 8'b00100100;
		in30 = 8'b01110000;
		Write = 1;
		Read = 1; 
		clk = 1;
		rst = 0;
#100; 
 $finish;
		// Add stimulus here

	end
      
endmodule

