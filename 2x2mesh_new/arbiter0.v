module arbiter0(gnt04,gnt03,gnt02,gnt01,gnt00,req04,req03,req02,req01,req00,clk,rst);

   output reg gnt04,gnt03,gnt02,gnt01,gnt00;
   input      req04,req03,req02,req01,req00;
   input      clk,rst;
  
   reg [4:0]  state,next_state;
   reg [2:0]  count;
 
   parameter idle=5'b00000;
   parameter GNT4=5'b10000;
   parameter GNT3=5'b01000;
   parameter GNT2=5'b00100;
   parameter GNT1=5'b00010;
   parameter GNT0=5'b00001;

/* parameter [2:0] s_ideal=3'b000;
   parameter [2:0] s0=3'b001;
   parameter [2:0] s1=3'b010;
   parameter [2:0] s2=3'b011;
   parameter [2:0] s3=3'b100; */



 always @(posedge clk)
 begin
 if(rst)
   state=idle;
 else
   state=next_state;
     end


always @(state,req04,req03,req02,req01,req00,count)
  begin
	   next_state=0;
 case (state)
   GNT0:
     begin
        if (req00)
   begin
      if(count==3'b100)
        begin
    if (req01)
      begin
         count=3'b000;
         next_state=GNT1;
      end
    else if (req02)
      begin
         count=3'b000;
         next_state=GNT2;
      end
    else if (req03)
      begin
         count=3'b000;
         next_state=GNT3;
      end
    else if (req04)
      begin
         count=3'b000;
         next_state=GNT4;
      end
    else
      begin
         count=3'b000;
         next_state=GNT0;
      end
        end // if (count==2'b11)
      else
        begin
    count=count+3'b001;
    next_state=GNT0;
        end // else: !if(count==2'b11)
   end // if (req[0])
        else if (req01)
   begin
      count=3'b000;
      next_state=GNT1;
   end
        else if (req02)
   begin
      count=3'b000;
      next_state=GNT2;
   end
        else if (req03)
   begin
      count=3'b000;
      next_state=GNT3;
   end
     else if (req04)
   begin
      count=3'b000;
      next_state=GNT4;
   end
        else
   begin
      count=3'b000;
      next_state=idle;
   end
     end // case: s0


   GNT1:
     begin
        if (req01)
   begin
    if (count==3'b100)
        begin
    if (req02)
      begin
         count=3'b000;
         next_state=GNT2;
      end
    else if (req03)
      begin
         count=3'b000;
         next_state=GNT3;
      end
    else if (req04)
      begin
         count=3'b000;
         next_state=GNT4;
      end
    else if (req00)
      begin
         count=3'b000;
         next_state=GNT0;
      end
    else
      begin
         count=3'b000;
         next_state=GNT1;
      end
        end // if (count==2'b11)
      else
        begin
    count=count+3'b001;
    next_state=GNT1;
        end // else: !if(count==2'b11)
   end // if (req01)
        else if (req02)
   begin
      count=3'b000;
      next_state=GNT2;
   end
        else if (req03)
   begin
      count=3'b000;
      next_state=GNT3;
   end
        else if (req04)
   begin
      count=3'b000;
      next_state=GNT4;
   end
        else if (req00)
   begin
      count=3'b000;
      next_state=GNT0;
   end
        else
   begin
      count=3'b000;
      next_state=idle;
   end
     end // case: s1



   GNT2:
     begin
        if (req02)
   begin
      if (count==3'b100)
        begin
    if (req03)
      begin
         count=3'b000;
         next_state=GNT3;
      end
    else if (req04)
      begin
         count=3'b000;
         next_state=GNT4;
      end
    else if (req00)
      begin
         count=3'b000;
         next_state=GNT0;
      end
    else if (req01)
      begin
         count=3'b000;
         next_state=GNT1;
      end
    else
      begin
         count=3'b000;
         next_state=GNT2;
      end
        end // if (count==2'b11)
      else
        begin
    count=count+3'b001;
    next_state=GNT2;
        end // else: !if(count==2'b11)
   end // if (req[2])
        else if (req03)
   begin
      count=3'b000;
      next_state=GNT3;
   end
      else if (req04)
   begin
      count=3'b000;
      next_state=GNT4;
   end
        else if (req00)
   begin
      count=3'b000;
      next_state=GNT0;
   end
        else if (req01)
   begin
      count=3'b000;
      next_state=GNT1;
   end
        else
   begin
      count=3'b000;
      next_state=idle;
   end
     end // case: s2
GNT3:
     begin
        if (req03)
   begin
      if (count==3'b100)
        begin
    if (req04)
      begin
         count=3'b000;
         next_state=GNT4;
      end
    else if (req00)
      begin
         count=3'b000;
         next_state=GNT0;
      end
    else if (req01)
      begin
         count=3'b000;
         next_state=GNT1;
      end
   else if (req02)
      begin
         count=3'b000;
         next_state=GNT2;
      end
   else
      begin
         count=3'b000;
         next_state=GNT3;
      end
        end // if (count==2'b11)
      else
        begin
    count=count+3'b001;
    next_state=GNT3;
        end // else: !if(count==2'b11)
   end // if (req[3])
        else if (req04)
   begin
      count=3'b000;
      next_state=GNT4;
   end
        else if (req00)
   begin
      count=3'b000;
      next_state=GNT0;
   end
        else if (req01)
   begin
      count=2'b00;
      next_state=GNT1;
   end
       else if (req02)
   begin
      count=2'b00;
      next_state=GNT2;
   end
        else
   begin
      count=2'b00;
      next_state=idle;
   end
     end // case: s3
GNT4: 
 begin
  if(req04)
    begin
   if(count==3'b100)
     begin
    if(req00)
    begin
     count=3'b000;
     next_state=GNT0;
    end
   else if(req01)
    begin
     count=3'b000;
    next_state=GNT1;
   end
  else if(req02)
   begin
    count=3'b000;
    next_state=GNT2;
  end
 else if(req03)
  begin
    count=3'b000;
    next_state=GNT3;
  end
else
 begin
  count=3'b000;
  next_state=GNT4;
 end
   end
else
 begin 
  count=count+3'b001;
  next_state=GNT4;
 end
  end
else if(req00)
   begin
     count=3'b000;
     next_state=GNT0;
    end
   else if(req01)
    begin
     count=3'b000;
    next_state=GNT1;
   end
  else if(req02)
   begin
    count=3'b000;
    next_state=GNT2;
  end
 else if(req03)
  begin
    count=3'b000;
    next_state=GNT3;
  end
else 
  begin
   count=3'b000;
  next_state=idle;
  end
    end

default:
     begin
        if (req00)
   begin
      count=3'b000;
      next_state=GNT0;
   end
        else if (req01)
   begin
      count=3'b000;
      next_state=GNT1;
   end
        else if (req02)
   begin
      count=3'b000;
      next_state=GNT2;
   end
        else if (req03)
   begin
      count=3'b000;
      next_state=GNT3;
   end
      else if(req04)
   begin
    count=3'b000;
    next_state=GNT4;
  end
      else
   begin
      count=2'b00;
      next_state=idle;
   end
     end // case: default
 endcase // case (state)
     end // always @ (state,next_state,count)     


/*always @(state,next_state,count)
  begin
     case (state)
       GNT0:
           begin 
                 gnt00=1'b1;
                 gnt01=1'b0;
                 gnt02=1'b0;
                 gnt03=1'b0;
                 gnt04=1'b0; 
           end
       GNT1:
              begin 
                 gnt00=1'b0;
                 gnt01=1'b1;
                 gnt02=1'b0;
                 gnt03=1'b0;
                 gnt04=1'b0; 
               end
       GNT2:
               begin 
                 gnt00=1'b0;
                 gnt01=1'b0;
                 gnt02=1'b1;
                 gnt03=1'b0;
                 gnt04=1'b0; 
               end
       GNT3:
                 begin 
                   gnt00=1'b0;
                   gnt01=1'b0;
                   gnt02=1'b0;
                   gnt03=1'b1;
                   gnt04=1'b0; 
                 end
       GNT4:
              begin 
                   gnt00=1'b0;
                   gnt01=1'b0;
                   gnt02=1'b0;
                   gnt03=1'b0;
                   gnt04=1'b1; 
                 end 
       default:
              begin 
                   gnt00=1'b0;
                   gnt01=1'b0;
                   gnt02=1'b0;
                   gnt03=1'b0;
                   gnt04=1'b0; 
              end
     endcase // case (state)
  end */
  always @ (posedge clk)
begin
if(rst) begin
      gnt04=0;
      gnt03=0;
      gnt02=0;
      gnt01=0;
      gnt00=0;
		end
else if(clk)
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
		$display("value of grant %d", gnt00);
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
end
endmodule

