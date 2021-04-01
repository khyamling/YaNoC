`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:47 09/06/2016 
// Design Name: 
// Module Name:    traffic1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module traffic1(
  send, recieve, clk, reset, ticks
	);
	input[63:0] send;
	input clk, reset;
	output reg [63:0] recieve;
	output reg [31:0] ticks;
	reg [21:0] ticks0;
	reg[21:0] ticks1;
	reg [21:0] myfunction;

	always @ (posedge clk)
	begin
	recieve<=send;
$display("latecny %d", $time);
	end
	//assign ticks1=run(ticks, ticks0, myfunction);
/*always @(posedge clk or posedge reset) begin
        if (reset) begin
            ticks <= 32'b00000000;
        end 
        else begin
            ticks <= myfunction + 32'b00000001;
				$display("myfunction %d", myfunction);
        end	
    end */
 //assign ticks0=32'b000000000;
 //assign  ticks1=myfunction(ticks, ticks0);
 /*
 task run;
  input ticks, ticks0, myfunction;
 //fork
 forever @(posedge clk)
		begin: myticks
		myfunction= ticks-ticks0;
		#3 assign  ticks1=myfunction;
	//	$monitor("latecny1 %d", ticks1);
		$display("latecny %d", $time);
		disable myticks;
		end
	//	join
		endtask */
	
	always @ (posedge clk) begin
 if(recieve[63:62]==2'b01)
	begin
	$display("time befor taken head %b", recieve[53:32]);
	$display("time befor taken head %d", recieve[53:32]);
	ticks0<=recieve[53:32];
	$display("time after taken head %b", ticks0);
	$display("time after taken head %d", ticks0);
	end
	else if(recieve[63:62]==2'b10)
	begin 
	$display("time taken tail %b", recieve[53:32]);
	$display("time taken tail %d", recieve[53:32]);
	ticks1<=recieve[53:32];
	$display("time taken tail %b", ticks1);
	$display("time taken tail %d", ticks1);
	end
	myfunction<=ticks1-ticks0;
	//always @ (posedge clk)
	//begin
	//myfunction<=2'b10-2'b01;
	//$display("time binaryk take %b", myfunction);
//$display("time binaryk take %d", myfunction);
end 

//assign myfunction=ticks1-ticks0;

always @(myfunction) 
       begin
            ticks <= myfunction;
				$display("myfunction %d", myfunction);
        end
/*function integer Delay_calculation;
input [63:0] recieve;
reg [21:0] myfunction;
begin
begin
 if(recieve[63:62]==2'b01)
   ticks0=recieve[53:32]; 
 else  if(recieve[63:62]==2'b10)
  ticks1=recieve[53:32];
  end
   myfunction=ticks1-ticks0;
  Delay_calculation=myfunction;	
  $display("value of function %d",Delay_calculation);
	end
endfunction
assign ticks=Delay_calculation;
//assign
//always @(*) begin
//ticks = myfunction;
//end 	*/
 /*function integer clogb2;
    input [31:0] depth;
        begin
            depth = depth - 1;
            for(clogb2=0; depth>0; clogb2=clogb2+1)
                depth = depth >> 1;
        end
    endfunction */
	  
endmodule