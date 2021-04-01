`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:35 08/27/2016 
// Design Name: 
// Module Name:    arbiter3 
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
module arbiterR23(gnt34,gnt33,gnt32,gnt31,gnt30,req34,req33,req32,req31,req30,clk,rst);

   output reg gnt34,gnt33,gnt32,gnt31,gnt30;
   input      req34,req33,req32,req31,req30;
   input      clk,rst;

   parameter idle=5'b00000;
   parameter GNT4=5'b10000;
	parameter GNT3=5'b01000;
   parameter GNT2=5'b00100;
   parameter GNT1=5'b00010;
   parameter GNT0=5'b00001;
	
	

   reg [4:0]  state,next_state;

   always @ (posedge clk)
     begin
    if(rst)
      state=idle;
    else
      state=next_state;
     end

   always @ (state,req34,req33,req32,req31,req30)
     begin
    next_state=0;

    case (state)

      idle:begin

         if(req30)
           next_state=GNT0;
         else if(req31)
           next_state=GNT1;
         else if(req32)
           next_state=GNT2;
         else if(req33)
           next_state=GNT3;
			else if(req34)
           next_state=GNT4;
         else
           next_state=idle;
      end // case: idle

      GNT0:begin

         if(req30)
           next_state=GNT0;
         else
           next_state=idle;
      end

      GNT1:begin
         if(req31)
           next_state=GNT1;
         else
           next_state=idle;
      end

      GNT2:begin
         if(req32)
           next_state=GNT2;
         else
           next_state=idle;
      end

      GNT3:begin
         if(req33)
           next_state=GNT3;
         else
           next_state=idle;
      end
		
		 GNT4:begin
         if(req34)
           next_state=GNT4;
         else
           next_state=idle;
      end
		
    endcase // case (state)
     end // always @ (state,req3,req2,req1,req0)

always @(state)
  begin
     if(state==idle)
       begin
		 gnt34=0;
      gnt33=0;
      gnt32=0;
      gnt31=0;
      gnt30=0;
       end
     else if(state==GNT0)
       begin
      gnt34=0;
		gnt33=0;
      gnt32=0;
      gnt31=0;
      gnt30=1;
       end
     else if(state==GNT1)
       begin
      gnt34=0;
		gnt33=0;
      gnt32=0;
      gnt31=1;
      gnt30=0;
       end
     else if(state==GNT2)
       begin
      gnt34=0;
		gnt33=0;
      gnt32=1;
      gnt31=0;
      gnt30=0;
       end
     else if(state==GNT3)
       begin
      gnt34=0;
		gnt33=1;
      gnt32=0;
      gnt31=0;
      gnt30=0;
     end
	  else if(state==GNT4)
       begin
      gnt34=1;
		gnt33=0;
      gnt32=0;
      gnt31=0;
      gnt30=0;
     end
	  
  end // always @ (state)



endmodule
