`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:27:55 09/16/2016
// Design Name:   main
// Module Name:   /buffermodi/test_tb.v
// Project Name:  buffermodi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_tb;

	// Inputs
	reg rst_n;
	reg clk;
	reg rd_en;
	reg wr_en;
	reg enable;

	// Outputs
	wire [7:0] out;
	wire [7:0] out1;
	wire [7:0] out2;
	wire [7:0] out3;
	wire [7:0] out4;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.rst_n(rst_n), 
		.clk(clk), 
		.out(out), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4), 
		.rd_en(rd_en), 
		.wr_en(wr_en), 
		.enable(enable)
	);
	
always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		rst_n = 1;
		clk = 0;
		rd_en = 0;
		wr_en = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
	#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
$finish;
        
		// Add stimulus here

	end
      
endmodule

