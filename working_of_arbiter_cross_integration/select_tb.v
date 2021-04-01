`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:53 08/25/2016
// Design Name:   selector
// Module Name:   /selector/select_tb.v
// Project Name:  selector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: selector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module select_tb;

	// Inputs
	reg g00;
	reg g01;
	reg g02;
	reg g03;
	reg g04;

	// Outputs
	wire [4:0] select;

	// Instantiate the Unit Under Test (UUT)
	selector uut (
		.g00(g00), 
		.g01(g01), 
		.g02(g02), 
		.g03(g03), 
		.g04(g04), 
		.select(select)
	);

	initial begin
		// Initialize Inputs
		g00 = 0;
		g01 = 0;
		g02 = 0;
		g03 = 0;
		g04 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		g00 = 1;
		g01 = 0;
		g02 = 0;
		g03 = 0;
		g04 = 0;
    #100;
	   g00 = 0;
		g01 = 1;
		g02 = 0;
		g03 = 0;
		g04 = 0;    
		// Add stimulus here
#100;
      g00 = 0;
		g01 = 0;
		g02 = 1;
		g03 = 0;
		g04 = 0; 
#100;
      g00 = 0;
		g01 = 0;
		g02 = 1;
		g03 = 0;
		g04 = 0; 
#100;
      g00 = 0;
		g01 = 0;
		g02 = 0;
		g03 = 1;
		g04 = 0; 
#100;
      g00 = 0;
		g01 = 0;
		g02 = 0;
		g03 = 0;
		g04 = 1;
#100;	
      g00 = 0;
		g01 = 0;
		g02 = 1;
		g03 = 0;
		g04 = 1;	
#100;
      g00 = 0;
		g01 = 0;
		g02 = 0;
		g03 = 0;
		g04 = 0;	
#100;
$finish;
	end
      
endmodule

