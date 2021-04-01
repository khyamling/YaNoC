`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:18 08/27/2016 
// Design Name: 
// Module Name:    arbiter2 
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
module arbiterR42(gnt24,gnt23,gnt22,gnt21,gnt20,req24,req23,req22,req21,req20,clk,rst);

   output reg gnt24,gnt23,gnt22,gnt21,gnt20;
   input      req24,req23,req22,req21,req20;
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

   always @ (state,req24,req23,req22,req21,req20)
     begin
    next_state=0;

    case (state)

      idle:begin

         if(req20)
           next_state=GNT0;
         else if(req21)
           next_state=GNT1;
         else if(req22)
           next_state=GNT2;
         else if(req23)
           next_state=GNT3;
			else if(req24)
           next_state=GNT4;
         else
           next_state=idle;
      end // case: idle

      GNT0:begin

         if(req20)
           next_state=GNT0;
         else
           next_state=idle;
      end

      GNT1:begin
         if(req21)
           next_state=GNT1;
         else
           next_state=idle;
      end

      GNT2:begin
         if(req22)
           next_state=GNT2;
         else
           next_state=idle;
      end

      GNT3:begin
         if(req23)
           next_state=GNT3;
         else
           next_state=idle;
      end
		
		 GNT4:begin
         if(req24)
           next_state=GNT4;
         else
           next_state=idle;
      end
		
    endcase // case (state)
     end // always @ (state,req3,req2,req1,req0)

always @ (state)
  begin
     if(state==idle)
       begin
		 gnt24=0;
      gnt23=0;
      gnt22=0;
      gnt21=0;
      gnt20=0;
       end
     else if(state==GNT0)
       begin
      gnt24=0;
		gnt23=0;
      gnt22=0;
      gnt21=0;
      gnt20=1;
       end
     else if(state==GNT1)
       begin
      gnt24=0;
		gnt23=0;
      gnt22=0;
      gnt21=1;
      gnt20=0;
       end
     else if(state==GNT2)
       begin
      gnt24=0;
		gnt23=0;
      gnt22=1;
      gnt21=0;
      gnt20=0;
       end
     else if(state==GNT3)
       begin
      gnt24=0;
		gnt23=1;
      gnt22=0;
      gnt21=0;
      gnt20=0;
     end
	  else if(state==GNT4)
       begin
      gnt24=1;
		gnt23=0;
      gnt22=0;
      gnt21=0;
      gnt20=0;
     end
	  
  end // always @ (state)



endmodule
