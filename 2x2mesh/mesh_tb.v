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
	reg clk;
	reg rst;
	reg Write;
	reg Read;

	// Outputs
	wire [7:0] L00;
	wire [7:0] L10;

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
		//.in01(in01), 
		//.in02(in02), 
		//.in03(in03), 
	//	.in04(in04), 
		.in10(in10), 
		//.in11(in11), 
	//	.in12(in12), 
	//	.in13(in13), 
	//	.in14(in14), 
		.clk(clk), 
		.rst(rst), 
		.Write(Write), 
		.Read(Read), 
		.L00(L00), 
	//	.E01(E01), 
	//	.W02(W02), 
	//	.N03(N03), 
	//	.S04(S04), 
		.L10(L10)
	//	.E11(E11), 
	//	.W12(W12), 
		//.N13(N13), 
	//	.S14(S14)
	);
always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		in00 = 8'b00000000;
		in10 = 8'b00000001;
		clk = 0;
		rst = 0;
		Write = 1;
		Read = 1;

		// Wait 100 ns for global reset to finish
		#100;
		in00 = 8'b00001100;
		in10 = 8'b00000000;
		Write = 1;
		Read = 1;
		#100;
		in00 = 8'b00000000;
		in10 = 8'b00000111;
		Write = 1;
		Read = 1;
#100;
	   in00 = 8'b00000001;
		in10 = 8'b01000000;
		Write = 1;
		Read = 1;
#100;
      in00 = 8'b00000001;
		in10 = 8'b01000000;
		Write = 1;
		Read = 1;
#100;
      in00 = 8'b00000001;
		in10 = 8'b01000000;
		Write = 1;
		Read = 1;
   in00 = 8'b10000111;
		in10 = 8'b11000000;
		Write = 1;
		Read = 1;
#100;
      in00 = 8'b10000111;
		in10 = 8'b01110111;
		Write = 1;
		Read = 1;
#800;

$finish;
		// Add stimulus here

	end
      
endmodule

