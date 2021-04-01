`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:22:21 05/15/2017
// Design Name:   mesh
// Module Name:   /diagnolmesh/mesh_xy/mesh_tb.v
// Project Name:  mesh_xy
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
	wire [7:0] t1;
/*	wire [2:0] t2;
	wire [2:0] t3;
	wire [2:0] t4;
	wire [2:0] t5;
	wire [2:0] t6;
	wire [2:0] t7;
	wire [2:0] t8;
	wire [2:0] t9;
	wire [2:0] t10;
	wire [2:0] t11;
	wire [2:0] t12;
	wire [2:0] t13;
	wire [2:0] t14;
	wire [2:0] t15;
	wire [2:0] t16; */
	wire [7:0] t17;
/*	wire [2:0] t18;
	wire [2:0] t19;
	wire [2:0] t20;
	wire [2:0] t21;
	wire [2:0] t22;
	wire [2:0] t23;
	wire [2:0] t24;
	wire [2:0] t25;
	wire [2:0] t26;
	wire [2:0] t27;
	wire [2:0] t28;
	wire [2:0] t29;
	wire [2:0] t30;
	wire [2:0] t31;
	wire [2:0] t32;
	wire [2:0] t33;
	wire [2:0] t34;
	wire [2:0] t35;
	wire [2:0] t36; */
//	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	mesh uut (
	  //  .count(count),
	    .clk(clk), 
		.reset(reset), 
		.Write(Write),
		.t1(t1), 
	/*	.t2(t2), 
		.t3(t3), 
		.t4(t4), 
		.t5(t5), 
		.t6(t6), 
		.t7(t7), 
		.t8(t8), 
		.t9(t9), 
		.t10(t10), 
		.t11(t11), 
		.t12(t12), 
		.t13(t13), 
		.t14(t14), 
		.t15(t15), 
		.t16(t16), */
		.t17(t17)
	/*	.t18(t18), 
		.t19(t19), 
		.t20(t20), 
		.t21(t21), 
		.t22(t22), 
		.t23(t23), 
		.t24(t24), 
		.t25(t25), 
		.t26(t26), 
		.t27(t27), 
		.t28(t28), 
		.t29(t29), 
		.t30(t30), 
		.t31(t31), 
		.t32(t32), 
		.t33(t33), 
		.t34(t34), 
		.t35(t35), 
		.t36(t36) */
		
	);

	initial begin
        clk = 0;
        reset = 1;
   //    Read = 0;
        Write = 0;
        //tempdata = 0;
      //  fifo_in = {NUM_BITS{1'bx}};
        #1 reset = 0;
        #1 reset = 1;
    #1;
		clk = 1;
		reset=0;
	//    Read = 1;
      Write = 1;
		#100000;
		$finish;
	 end
    // Create clock
   always begin #10 clk=~clk;
	end
endmodule


