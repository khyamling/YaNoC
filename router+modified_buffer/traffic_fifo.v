`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:27:56 09/16/2016
// Design Name:   main
// Module Name:   /buffermodi/traffic_fifo.v
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

module traffic_fifo;

	// Inputs
	reg rst_n;
	reg clk;
	//reg in;
	reg rd_en;
	reg wr_en;
	reg enable;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.rst_n(rst_n), 
		.clk(clk), 
		//.in(in), 
		.out(out), 
		.rd_en(rd_en), 
		.wr_en(wr_en), 
		.enable(enable)
	);
always #50 clk=~clk;

	initial begin
		// Initialize Inputs
		rst_n = 1;
		clk = 0;
	//	in = 0;
		rd_en = 0;
		wr_en = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 0;
		wr_en = 1;
		enable = 1;
		#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
			#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
			#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
			#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
			#100;
	  rst_n = 0;
		clk = 1;
	//	in = 0;
		rd_en = 1;
		wr_en = 1;
		enable = 1;
		#100;
		$finish;
		
        
		// Add stimulus here

	end
      
endmodule

