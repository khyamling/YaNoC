`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:23:53 08/27/2016 
// Design Name: 
// Module Name:    arbiter1 
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
module arbiterR31(gnt14,gnt13,gnt12,gnt11,gnt10,req14,req13,req12,req11,req10,clk,rst);

   output reg gnt14,gnt13,gnt12,gnt11,gnt10;
   input      req14,req13,req12,req11,req10;
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

   always @(state,req14,req13,req12,req11,req10)
     begin
    next_state=0;

    case (state)

      idle:begin

         if(req10)
           next_state=GNT0;
         else if(req11)
           next_state=GNT1;
         else if(req12)
           next_state=GNT2;
         else if(req13)
           next_state=GNT3;
			else if(req14)
           next_state=GNT4;
         else
           next_state=idle;
      end // case: idle

      GNT0:begin

         if(req10)
           next_state=GNT0;
         else
           next_state=idle;
      end

      GNT1:begin
         if(req11)
           next_state=GNT1;
         else
           next_state=idle;
      end

      GNT2:begin
         if(req12)
           next_state=GNT2;
         else
           next_state=idle;
      end

      GNT3:begin
         if(req13)
           next_state=GNT3;
         else
           next_state=idle;
      end
		
		 GNT4:begin
         if(req14)
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
		 gnt14=0;
      gnt13=0;
      gnt12=0;
      gnt11=0;
      gnt10=0;
       end
     else if(state==GNT0)
       begin
      gnt14=0;
		gnt13=0;
      gnt12=0;
      gnt11=0;
      gnt10=1;
       end
     else if(state==GNT1)
       begin
      gnt14=0;
		gnt13=0;
      gnt12=0;
      gnt11=1;
      gnt10=0;
       end
     else if(state==GNT2)
       begin
      gnt14=0;
		gnt13=0;
      gnt12=1;
      gnt11=0;
      gnt10=0;
       end
     else if(state==GNT3)
       begin
      gnt14=0;
		gnt13=1;
      gnt12=0;
      gnt11=0;
      gnt10=0;
     end
	  else if(state==GNT4)
       begin
      gnt14=1;
		gnt13=0;
      gnt12=0;
      gnt11=0;
      gnt10=0;
     end
	  
  end // always @ (state)



endmodule
