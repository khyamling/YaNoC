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
	reg i0;
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg req00;
	reg req01;
	reg req02;
	reg req03;
	reg req04;
	reg req10;
	reg req11;
	reg req12;
	reg req13;
	reg req14;
	reg req20;
	reg req21;
	reg req22;
	reg req23;
	reg req24;
	reg req30;
	reg req31;
	reg req32;
	reg req33;
	reg req34;
	reg req40;
	reg req41;
	reg req42;
	reg req43;
	reg req44;
	reg clk; 
	reg rst;

	// Outputs
	wire o0;
	wire o1;
	wire o2;
	wire o3;
	wire o4;

	// Instantiate the Unit Under Test (UUT)
	cross uut (
		.i0(i0), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.req00(req00), 
		.req01(req01), 
		.req02(req02), 
		.req03(req03), 
		.req04(req04), 
		.req10(req10), 
		.req11(req11), 
		.req12(req12), 
		.req13(req13), 
		.req14(req14), 
		.req20(req20), 
		.req21(req21), 
		.req22(req22), 
		.req23(req23), 
		.req24(req24), 
		.req30(req30), 
		.req31(req31), 
		.req32(req32), 
		.req33(req33), 
		.req34(req34), 
		.req40(req40), 
		.req41(req41), 
		.req42(req42), 
		.req43(req43), 
		.req44(req44), 
		.o0(o0),
		.o1(o1),
		.o2(o2),
		.o3(o3),
		.o4(o4),
		.clk(clk),
		.rst(rst)
	);

	always #1 clk=~clk;
	initial begin
		// Initialize Inputs
		i0 = 0;
		i1=0;
		i2=0;
		i3=0;
		i4=0;
		req00 = 0;
		req01 = 0;
		req02 = 0;
		req03 = 0;
		req04 = 0;
		req10 = 0;
		req11 = 0;
		req12 = 0;
		req13 = 0;
		req14 = 0;
		req20 = 0;
		req21 = 0;
		req22 = 0;
		req23 = 0;
		req24 = 0;
		req30 = 0;
		req31 = 0;
		req32 = 0;
		req33 = 0;
		req34 = 0;
		req40 = 0;
		req41 = 0;
		req42 = 0;
		req43 = 0;
		req44 = 0;
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
 i0 = 1;
		i1=1;
		i2=1;
		i3=1;
		i4=1;
req00 <= 1;
req10 <= 1;
req20 <= 1;
req30 <= 1;
req40 <= 1;
repeat (1) @ (posedge clk);
     i0 = 1;
		i1=1;
		i2=1;
		i3=1;
		i4=1;
req01 <= 1;
req11 <= 1;
req21 <= 1;
req31 <= 1;
req41 <= 1;
//  
repeat (1) @ (posedge clk);
     i0 = 1;
		i1=1;
		i2=1;
		i3=1;
		i4=1;
req01 <= 0;
req11 <= 0;
req21 <= 0;
req31 <= 0;
req41 <= 0;
req02 <= 1;
req12 <= 1;
req22 <= 1;
req32 <= 1;
req42 <= 1;

repeat (1) @ (posedge clk);
i0 = 1;
		i1=1;
		i2=1;
		i3=1;
		i4=0;
req03 <= 0;
req13 <= 0;
req23 <= 0;
req33 <= 0;
req43 <= 0;
req04 <= 1;
req14 <= 1;
req24 <= 1;
req34 <= 1;
req44 <= 1;
repeat (1) @ (posedge clk);
i0 = 1;
		i1=1;
		i2=1;
		i3=1;
		i4=1;
req04 <= 0;
req14 <= 0;
req24 <= 0;
req34 <= 0;
req44 <= 0;
req00 <= 1;
req10 <= 1;
req20 <= 1;
req30 <= 1;
req40 <= 1;
repeat (1) @ (posedge clk);
i0 = 0;
		i1=0;
		i2=0;
		i3=0;
		i4=0;
req00 <= 0;
req10 <= 0;
req20 <= 0;
req30 <= 0;
req40 <= 0;
req01 <= 1;
req11 <= 1;
req21 <= 1;
req31 <= 1;
req41 <= 1;
/*repeat (1) @ (posedge clk);
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
//  */
repeat (1) @ (posedge clk);
  
  #40 $finish;

	end
      
endmodule

