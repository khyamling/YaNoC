`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:20 11/19/2016 
// Design Name: 
// Module Name:    starrouting1 
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
module compute(Li, port_num_next, e1,e2, e3, e4, e5, e6, e7, e8, e9, e10
    );
input wire[7:0] Li;
output [4:0] port_num_next;
wire [4:0]  L0, L1, L2, L3, L4, L5, L6, L7, L8, L9; 
output reg e1,e2, e3, e4, e5, e6, e7, e8, e9, e10;

assign L0    =        4'd1;  
assign L1  =          4'd2;
assign L2  =          4'd3;
assign L3    =        4'd4;  
assign L4  =          4'd5;
assign L5  =          4'd6;
assign L6    =        4'd7;  
assign L7  =          4'd8;
assign L8  =          4'd9;
assign L9  =          4'd10;
//assign L10  =         3'd11;


wire  [5:0]    dest_Address;
reg [5:0]    port_num_next;

assign dest_Address=Li[5:0];


   always@(*)begin
	 
	 if (dest_Address==4'd1)      
			                begin
			                port_num_next    = L0;
								  $display("Router Local port 0 out R0", port_num_next);
								  end
			                
         else   if (dest_Address==3'd2) 

                 begin
			                port_num_next    = L1;
								  $display("Router Local port 0 out R0", port_num_next);
								  end
       else  if (dest_Address==4'd3) 
		     begin
			                port_num_next    = L2;
								  $display("Router Local port 0 out R0", port_num_next);
								  end
       else  if (dest_Address==4'd4) 
		     begin
			                port_num_next    = L3;
								  $display("Router Local port 0 out R0", port_num_next);
								  end
			else  if (dest_Address==4'd5) 
		     begin
			                port_num_next    = L4;
								  $display("Router Local port 0 out R0", port_num_next);
								  end					  
		else  if (dest_Address==4'd6) 
		     begin
			                port_num_next    = L5;
								  $display("Router Local port 0 out R0", port_num_next);
								  end				 
		else  if (dest_Address==4'd7) 
		     begin
			                port_num_next    = L6;
								  $display("Router Local port 0 out R0", port_num_next);
								  end		
								  
		else  if (dest_Address==4'd8) 
		     begin
			                port_num_next    = L7;
								  $display("Router Local port 0 out R0", port_num_next);
								  end		
else  if (dest_Address==4'd9) 
		     begin
			                port_num_next    = L8;
								  $display("Router Local port 0 out R0", port_num_next);
								  end		
else  if (dest_Address==4'd10) 
		     begin
			                port_num_next    = L9;
								  $display("Router Local port 0 out R0", port_num_next);
								  end	
/*else  if (dest_Address==11) 
		     begin
			                port_num_next    = L10;
								  $display("Router Local port 0 out R0", port_num_next);
								  end		*/								  
			end				
							
 always@(*)
	 begin
	 if(port_num_next== L0)  begin 
	 e1=1; 
	 e2=0;
	 e3=0;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
	 $display("value of port 1 out %d", e1);
	 end
	else if (port_num_next== L1) begin 
    e1=0; 
	 e2=1;
	 e3=0;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
	 
	  $display("value of port 1 out %d", e2);
	 end
	
	else if (port_num_next== L2) begin 
    e1=0; 
	 e2=0;
	 e3=1;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end
else if (port_num_next== L3) begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=1; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end
else if (port_num_next== L4) begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0; 
	 e5=1;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end
else if (port_num_next== L5) begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0; 
	 e5=0;
	 e6=1;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end
else if (port_num_next== L6) begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=1;
	 e8=0; 
	 e9=0;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end
else if (port_num_next== L7) begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=1; 
	 e9=0;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end
else if (port_num_next== L8) begin 
    e1=0; 
	 e2=0;
	 e3=1;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=1;
	 e10=0;
	  $display("value of port 2 out %d", e3);
	 end	
else if (port_num_next== L9) begin 
    e1=0; 
	 e2=0;
	 e3=1;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=1;
	  $display("value of port 2 out %d", e3);
	 end	 
 else begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0; 
	 e5=0;
	 e6=0;
	 e7=0;
	 e8=0; 
	 e9=0;
	 e10=0;
 end 
end

endmodule

