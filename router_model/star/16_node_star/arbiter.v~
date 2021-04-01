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
module arbiter( gnt014, gnt013, gnt012, gnt011, gnt010, gnt09, gnt08, gnt07, gnt06, gnt05, gnt04, gnt03, gnt02, gnt01, gnt00,
req014,req013,req012,req011,req010,req09,req08,req07,req06,req05,req04,req03,req02,req01,req00,clk,rst);

   output reg gnt014, gnt013, gnt012, gnt011, gnt010, gnt09, gnt08, gnt07, gnt06, gnt05, gnt04, gnt03, gnt02, gnt01, gnt00;
   input      req014,req013,req012,req011,req010, req09, req08, req07, req06, req05, req04, req03, req02, req01, req00;
   input      clk,rst;

   parameter idle=15'b000000000000000;
   parameter GNT14=15'b100001000000000;
   parameter GNT13=15'b010000100000000;
   parameter GNT12=15'b001000010000000;
   parameter GNT11=15'b000100000000000;
   parameter GNT10=15'b000010000000000;
   parameter GNT9=15'b000001000000000;
   parameter GNT8=15'b000000100000000;
   parameter GNT7=15'b000000010000000;
   parameter GNT6=15'b000000001000000;
   parameter GNT5=15'b000000000100000;
   parameter GNT4=15'b000000000010000;
   parameter GNT3=15'b000000000001000;
   parameter GNT2=15'b000000000000100;
   parameter GNT1=15'b000000000000010;
   parameter GNT0=15'b000000000000001;
	
	

   reg [9:0]  state,next_state;

   always @ (posedge clk)
     begin
    if(rst)
      state=idle;
    else
      state=next_state;
     end

   always @ (state, req014,req013,req012,req011,req010,req09,req08,req07,req06,req05,req04,req03,req02,req01,req00)
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
       else if(req010)
           next_state=GNT10;
       else if(req011)
           next_state=GNT11;
       else if(req012)
           next_state=GNT12;
       else if(req013)
           next_state=GNT13;
          else if(req014)
           next_state=GNT14;
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
 GNT10:begin
         if(req010)
           next_state=GNT10;
         else
           next_state=idle;
      end
 GNT11:begin
         if(req011)
           next_state=GNT11;
         else
           next_state=idle;
      end
 GNT12:begin
         if(req012)
           next_state=GNT12;
         else
           next_state=idle;
      end
 GNT13:begin
         if(req013)
           next_state=GNT13;
         else
           next_state=idle;
      end
 GNT14:begin
         if(req014)
           next_state=GNT14;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
else if(state==GNT10)
       begin
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=1;
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
else if(state==GNT11)
       begin
      gnt014=0;
      gnt013=0;
      gnt012=0;
      gnt011=1;
      gnt010=0;
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
else if(state==GNT12)
       begin
      gnt014=0;
      gnt013=0;
      gnt012=1;
      gnt011=0;
      gnt010=0;
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
else if(state==GNT13)
       begin
      gnt014=0;
      gnt013=1;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
else if(state==GNT14)
       begin
      gnt014=1;
      gnt013=0;
      gnt012=0;
      gnt011=0;
      gnt010=0;
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
	  
  end // always @ (state)
//end


endmodule
