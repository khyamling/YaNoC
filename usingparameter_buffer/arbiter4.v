`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:49 08/27/2016 
// Design Name: 
// Module Name:    arbiter4 
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
module arbiter4(gnt44,gnt43,gnt42,gnt41,gnt40,req44,req43,req42,req41,req40,clk,rst);

   output reg gnt44,gnt43,gnt42,gnt41,gnt40;
   input      req44,req43,req42,req41,req40;
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

   always @ (state,req44,req43,req42,req41,req40)
     begin
    next_state=0;

    case (state)

      idle:begin

         if(req40)
           next_state=GNT0;
         else if(req41)
           next_state=GNT1;
         else if(req42)
           next_state=GNT2;
         else if(req43)
           next_state=GNT3;
			else if(req44)
           next_state=GNT4;
         else
           next_state=idle;
      end // case: idle

      GNT0:begin

         if(req40)
           next_state=GNT0;
         else
           next_state=idle;
      end

      GNT1:begin
         if(req41)
           next_state=GNT1;
         else
           next_state=idle;
      end

      GNT2:begin
         if(req42)
           next_state=GNT2;
         else
           next_state=idle;
      end

      GNT3:begin
         if(req43)
           next_state=GNT3;
         else
           next_state=idle;
      end
		
		 GNT4:begin
         if(req44)
           next_state=GNT4;
         else
           next_state=idle;
      end
		
    endcase // case (state)
     end // always @ (state,req3,req2,req1,req0)

always @ (posedge clk ) //or state)
  begin
     if(state==idle)
       begin
		 gnt44=0;
      gnt43=0;
      gnt42=0;
      gnt41=0;
      gnt40=0;
       end
     else if(state==GNT0)
       begin
      gnt44=0;
		gnt43=0;
      gnt42=0;
      gnt41=0;
      gnt40=1;
       end
     else if(state==GNT1)
       begin
      gnt44=0;
		gnt43=0;
      gnt42=0;
      gnt41=1;
      gnt40=0;
       end
     else if(state==GNT2)
       begin
      gnt44=0;
		gnt43=0;
      gnt42=1;
      gnt41=0;
      gnt40=0;
       end
     else if(state==GNT3)
       begin
      gnt44=0;
		gnt43=1;
      gnt42=0;
      gnt41=0;
      gnt40=0;
     end
	  else if(state==GNT4)
       begin
      gnt44=1;
		gnt43=0;
      gnt42=0;
      gnt41=0;
      gnt40=0;
     end
	  
  end // always @ (state)



endmodule
