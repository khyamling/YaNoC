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
module arbiter(gnt09, gnt08, gnt07, gnt06, gnt05, gnt04, gnt03, gnt02, gnt01, gnt00,
req09,req08,req07,req06,req05,req04,req03,req02,req01,req00,clk,rst);

   output reg gnt09, gnt08, gnt07, gnt06, gnt05, gnt04, gnt03, gnt02, gnt01, gnt00;
   input      req09, req08, req07, req06, req05, req04, req03, req02, req01, req00;
   input      clk,rst;

   parameter idle=10'b0000000000;
   parameter GNT9=10'b1000000000;
   parameter GNT8=10'b0100000000;
   parameter GNT7=10'b0010000000;
   parameter GNT6=10'b0001000000;
   parameter GNT5=10'b0000100000;
   parameter GNT4=10'b0000010000;
   parameter GNT3=10'b0000001000;
   parameter GNT2=10'b0000000100;
   parameter GNT1=10'b0000000010;
   parameter GNT0=10'b0000000001;
	
	

   reg [9:0]  state,next_state;

   always @ (posedge clk)
     begin
    if(rst)
      state=idle;
    else
      state=next_state;
     end

   always @ (state,req09,req08,req07,req06,req05,req04,req03,req02,req01,req00)
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
         else if(req05)
           next_state=GNT5;
         else if(req06)
           next_state=GNT6;
         else if(req07)
           next_state=GNT7;
         else if(req08)
           next_state=GNT8;
          else if(req09)
           next_state=GNT9;
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

   GNT5:begin

         if(req05)
           next_state=GNT5;
         else
           next_state=idle;
      end

   GNT6:begin
         if(req06)
           next_state=GNT6;
         else
           next_state=idle;
      end

  GNT7:begin
         if(req07)
           next_state=GNT7;
         else
           next_state=idle;
      end

  GNT8:begin
         if(req08)
           next_state=GNT8;
         else
           next_state=idle;
      end
		
  GNT9:begin
         if(req09)
           next_state=GNT9;
         else
           next_state=idle;
      end
  
		
    endcase // case (state)
     end // always @ (state,req3,req2,req1,req0)

//always @ (state)
always @ (posedge clk)
/*begin
if(rst) begin
gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
		end
		else if(clk) */

  begin
     if(state==idle)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
       end
     else if(state==GNT0)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=1;
		$display("value of grant %d", gnt00);
       end
     else if(state==GNT1)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=1;
      gnt00=0;
       end
     else if(state==GNT2)
       begin
       gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=1;
      gnt01=0;
      gnt00=0;
       end
     else if(state==GNT3)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=1;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     end
   else if(state==GNT4)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=1;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     end
      else if(state==GNT5)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=1;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     $display("value of grant %d", gnt00);
       end
     else if(state==GNT6)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=0;
      gnt06=1;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
       end
     else if(state==GNT7)
       begin
      gnt09=0;
      gnt08=0;
      gnt07=1;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
       end
     else if(state==GNT8)
       begin
      gnt09=0;
      gnt08=1;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     end
  else if(state==GNT9)
       begin
      gnt09=1;
      gnt08=0;
      gnt07=0;
      gnt06=0;
      gnt05=0;
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
     end
	  
  end // always @ (state)
//end


endmodule
