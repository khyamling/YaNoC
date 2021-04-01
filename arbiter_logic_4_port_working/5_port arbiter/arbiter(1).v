`timescale 1ns / 1ps
module arbiter(gnt4,gnt3,gnt2,gnt1,gnt0,req4,req3,req2,req1,req0,clk,rst);

   output reg gnt4,gnt3,gnt2,gnt1,gnt0;
   input      req4,req3,req2,req1,req0;
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

   always @ (state,req4,req3,req2,req1,req0)
     begin
    next_state=0;

    case (state)

      idle:begin

         if(req0)
           next_state=GNT0;
         else if(req1)
           next_state=GNT1;
         else if(req2)
           next_state=GNT2;
         else if(req3)
           next_state=GNT3;
			else if(req4)
           next_state=GNT4;
         else
           next_state=idle;
      end // case: idle

      GNT0:begin

         if(req0)
           next_state=GNT0;
         else
           next_state=idle;
      end

      GNT1:begin
         if(req1)
           next_state=GNT1;
         else
           next_state=idle;
      end

      GNT2:begin
         if(req2)
           next_state=GNT2;
         else
           next_state=idle;
      end

      GNT3:begin
         if(req3)
           next_state=GNT3;
         else
           next_state=idle;
      end
		
		 GNT4:begin
         if(req4)
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
      gnt3=0;
      gnt2=0;
      gnt1=0;
      gnt0=0;
       end
     else if(state==GNT0)
       begin
      gnt4=0;
		gnt3=0;
      gnt2=0;
      gnt1=0;
      gnt0=1;
       end
     else if(state==GNT1)
       begin
      gnt4=0;
		gnt3=0;
      gnt2=0;
      gnt1=1;
      gnt0=0;
       end
     else if(state==GNT2)
       begin
      gnt4=0;
		gnt3=0;
      gnt2=1;
      gnt1=0;
      gnt0=0;
       end
     else if(state==GNT3)
       begin
      gnt4=0;
		gnt3=1;
      gnt2=0;
      gnt1=0;
      gnt0=0;
     end
	  else if(state==GNT4)
       begin
      gnt4=1;
		gnt3=0;
      gnt2=0;
      gnt1=0;
      gnt0=0;
     end
	  
  end // always @ (state)
endmodule // arbiter