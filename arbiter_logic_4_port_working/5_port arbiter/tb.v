`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:13:46 08/25/2016
// Design Name:   arbiter
// Module Name:   /fiveportarb-2/tb.v
// Project Name:  fiveportarb-2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: arbiter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg req4;
	reg req3;
	reg req2;
	reg req1;
	reg req0;
	reg clk;
	reg rst;

	// Outputs
	wire gnt4;
	wire gnt3;
	wire gnt2;
	wire gnt1;
	wire gnt0;

	// Instantiate the Unit Under Test (UUT)
	arbiter uut (
		.gnt4(gnt4), 
		.gnt3(gnt3), 
		.gnt2(gnt2), 
		.gnt1(gnt1), 
		.gnt0(gnt0), 
		.req4(req4), 
		.req3(req3), 
		.req2(req2), 
		.req1(req1), 
		.req0(req0), 
		.clk(clk), 
		.rst(rst)
	);
always #1 clk=~clk;
	initial begin
		// Initialize Inputs
		req4 = 0;
		req3 = 0;
		req2 = 0;
		req1 = 0;
		req0 = 0;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
//		#10;
//		req4 = 1;
//		req3 = 1;
//		req2 = 1;
//		req1 = 1;
//		req0 = 1;
//		
//		#10;
//		req4 = 1;
//		req3 = 1;
//		req2 = 1;
//		req1 = 1;
//		req0 = 0;
//		
//		#10;
//		req4 = 1;
//		req3 = 1;
//		req2 = 1;
//		req1 = 0;
//				
//		#10;
//		req4 = 1;
//		req3 = 1;
//		req2 = 0;
//		
//		#10;
//		req4 = 1;
//		req3 = 0;
//		
//		#10;
//		req4 = 0;
//		
//		#40;
//		$finish;
//		
//		// Add stimulus here
 repeat (1) @ (posedge clk);
req1 <= 1;

repeat (1) @ (posedge clk);
req1 <= 0;
req2 <= 1;
//  
repeat (1) @ (posedge clk);
req2 <= 0;
req3 <= 1;
repeat (1) @ (posedge clk);
req3 <= 0;


repeat (1) @ (posedge clk);
req0 <= 0;
req1 <= 0;
req2 <= 1;

repeat (1) @ (posedge clk);
req0 <= 0;
req1 <= 0;
req2 <= 0;
req3 <= 1;
// 
repeat (1) @ (posedge clk);
req0 <= 0;
req1 <= 0;
req2 <= 0;
req3 <= 0;
req4 <= 1;
//  
repeat (1) @ (posedge clk);
req0 <= 0;
req1 <= 0;
req2 <= 0;
req3 <= 0;
req4 <= 0;
////
repeat (1) @ (posedge clk);
req2 <= 0;
req1 <= 1;
//  
repeat (1) @ (posedge clk);
req1 <= 0;
req3 <= 1;

repeat (1) @ (posedge clk);
req3 <= 0;

repeat (1) @ (posedge clk);
req0 <= 1;

repeat (1) @ (posedge clk);
req0 <= 0;
//  
repeat (1) @ (posedge clk);
req0 <= 1;
req1 <= 1;
//  
repeat (1) @ (posedge clk);
req2 <= 0;
req1 <= 0;
//  
repeat (1) @ (posedge clk);
req3 <= 1;
req2 <= 0;
//  
repeat (1) @ (posedge clk);
req3 <= 0;
//  
repeat (1) @ (posedge clk);
req0 <= 0;
//  
repeat (1) @ (posedge clk);
  
  #40 $finish;











	end
      
endmodule

