`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:50:45 09/15/2016
// Design Name:   fifo
// Module Name:   /buffermodi/fifo_tb.v
// Project Name:  buffermodi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fifo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fifo_tb;

	// Inputs
	reg rst_n;
	reg clk;
	reg rd_en;
	reg wr_en;
	reg [7:0] fifo_in;

	// Outputs
	wire [7:0] fifo_out;
	wire empty;
	wire full;
	wire [3:0] fifo_counter;

	// Instantiate the Unit Under Test (UUT)
	fifo uut (
		.rst_n(rst_n), 
		.clk(clk), 
		.rd_en(rd_en), 
		.wr_en(wr_en), 
		.fifo_in(fifo_in), 
		.fifo_out(fifo_out), 
		.empty(empty), 
		.full(full), 
		.fifo_counter(fifo_counter)
	);
always #10 clk=~clk;
	initial begin
		// Initialize Inputs
		rst_n = 1;
		clk = 0;
		rd_en = 1'b0;
		wr_en = 1'b0;
		fifo_in = 0;

		// Wait 100 ns for global reset to finish
		#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00000001;
		#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00000010;
		#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00000011;
		#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00000100;
			#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00000101;
			#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00000110;
			#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1;
		wr_en = 1'b0;
		fifo_in = 8'b00000111;
			#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b0;
		fifo_in = 8'b00001000;
			#100;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b0;
		fifo_in = 8'b00001001;
	#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b0;
		fifo_in = 8'b00001001;
	
		#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b1;
		fifo_in = 8'b00001001;
		
		#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b1;
		fifo_in = 8'b00001001;
		
	#20;
	   rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b1;
		fifo_in = 8'b00001101;
		
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b1;
		fifo_in = 8'b00001111;
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00001011;
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00001001;
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00001101;
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00001111;
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b0;
		wr_en = 1'b1;
		fifo_in = 8'b00011111;
#20;
		rst_n = 0;
		clk = 1;
		rd_en = 1'b1;
		wr_en = 1'b1;
		fifo_in = 8'b00101111;
		
		
#20;

	$finish;
        
		// Add stimulus here

	end
      
endmodule

