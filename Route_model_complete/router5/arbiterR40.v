`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:22:52 08/27/2016 
// Design Name: 
// Module Name:    arbiter0 
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
module arbiterR40(gnt04,gnt03,gnt02,gnt01,gnt00,req04,req03,req02,req01,req00,clk,rst);

   output reg gnt04,gnt03,gnt02,gnt01,gnt00;
   input      req04,req03,req02,req01,req00;
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

   always @ (state,req04,req03,req02,req01,req00)
     begin
    next_state=0;

    case (state)

      idle:begin

         if(req00)
           next_state=GNT0;
         else if(req01)
           next_state=GNT1;
         else if(req02)
           next_state=GNT2;
         else if(req03)
           next_state=GNT3;
			else if(req04)
           next_state=GNT4;
         else
           next_state=idle;
      end // case: idle

      GNT0:begin

         if(req00)
           next_state=GNT0;
         else
           next_state=idle;
      end

      GNT1:begin
         if(req01)
           next_state=GNT1;
         else
           next_state=idle;
      end

      GNT2:begin
         if(req02)
           next_state=GNT2;
         else
           next_state=idle;
      end

      GNT3:begin
         if(req03)
           next_state=GNT3;
         else
           next_state=idle;
      end
		
		 GNT4:begin
         if(req04)
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
		gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
       end
     else if(state==GNT0)
       begin
      gnt04=0;
		gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=1;
       end
     else if(state==GNT1)
       begin
      gnt04=0;
		gnt03=0;
      gnt02=0;
      gnt01=1;
      gnt00=0;
       end
     else if(state==GNT2)
       begin
      gnt04=0;
		gnt03=0;
      gnt02=1;
      gnt01=0;
      gnt00=0;
       end
     else if(state==GNT3)
       begin
      gnt04=0;
		gnt03=1;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     end
	  else if(state==GNT4)
       begin
      gnt04=1;
		gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     end
	  
  end // always @ (state)



endmodule
