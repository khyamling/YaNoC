`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:25:10 05/12/2017
// Design Name:   mesh
// Module Name:   /diagnolmesh/mesh/mesh_tb.v
// Project Name:  mesh
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mesh
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
	reg clk;
	reg reset;
	reg Write;

	// Outputs
	wire [2:0] t1;
	wire [2:0] t2;
	wire [2:0] t3;
	wire [2:0] t4;

	// Instantiate the Unit Under Test (UUT)
	mesh uut (
		.t1(t1), 
		.t2(t2), 
		.t3(t3), 
		.t4(t4), 
		.clk(clk), 
		.reset(reset), 
		.Write(Write)
	);

always #5 clk=~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Write = 0;
		#1;
		reset=1;
		#1;

		// Wait 100 ns for global reset to finish
		#10;
		clk = 1;
		reset = 0;
		Write = 1;
		#10;
		  clk = 1;
		   reset = 0;
			Write = 1;
		#10;
		   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
		   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
			   clk = 1;
		  reset = 0;
			Write = 1;
		#10;
		$finish;
        
		// Add stimulus here

	end
      
endmodule

