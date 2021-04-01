`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:22 04/27/2017 
// Design Name: 
// Module Name:    routec 
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
module routec( Li, e1,e2,e3,e4,e5, clk, reset, r1
		); //,);

input wire[7:0] Li;
//input wire[3:0] r1;
input clk, reset;
input wire[7:0] r1;
//input clk, rst;
//output [3:0] Lo, Eo, Wo, No, So;
//reg[3:0] port_num_next;
wire [3:0]  Lo, Eo, Wo, No, So;
output reg e1,e2,e3,e4,e5;
//output[7:0] out;

  assign Lo    =        4'd1;  
assign Eo  =          4'd2;
   assign No    =        4'd3;  
    assign Wo    =        4'd4;  
  assign So   =         4'd5;  
   //assign HDR_FLIT =  2'b10;
 //  assign BODY_FLIT = 2'b00;
  // assign  TAIL_FLIT = 2'b01;
	 
	localparam X_NODE_NUM                    =    4;
   localparam Y_NODE_NUM                    =    4;
   localparam X_NODE_NUM_WIDTH            =    4;
   localparam Y_NODE_NUM_WIDTH            =    4;
	//localparam X_S_Adress                  = 3'b00;
	//localparam Y_S_Adress                  = 3'b11;
	wire  [X_NODE_NUM_WIDTH-1        :0]    X_S_Adress;
	wire  [X_NODE_NUM_WIDTH-1        :0]    Y_S_Adress;
	// input   
	wire  [X_NODE_NUM_WIDTH-1        :0]    dest_x_node_in;
//    input  
	wire   [Y_NODE_NUM_WIDTH-1        :0]    dest_y_node_in;
	//output    [3:0]    port_num_out;
	reg [3:0]    port_num_next;
	// assign out=Li;
	 assign X_S_Adress=r1[3:0];
	 assign Y_S_Adress=r1[7:4];
    
	  wire signed [X_NODE_NUM_WIDTH        :0] xc;//current
    wire signed [X_NODE_NUM_WIDTH        :0] xd;//destination
    wire signed [Y_NODE_NUM_WIDTH        :0] yc;//current
    wire signed [Y_NODE_NUM_WIDTH        :0] yd;//destination
    wire signed [X_NODE_NUM_WIDTH        :0] xdiff;
    wire signed [Y_NODE_NUM_WIDTH        :0] ydiff;
    
	  assign dest_y_node_in=Li[7:4];
	 assign dest_x_node_in=Li[3:0];
	
	 
    assign     xc     =X_S_Adress [X_NODE_NUM_WIDTH-1        :0];
    assign     yc     =Y_S_Adress[Y_NODE_NUM_WIDTH-1        :0];
    assign    xd        =dest_x_node_in;
    assign    yd     = dest_y_node_in;
    assign     xdiff    = xd-xc;
    assign    ydiff    = yd-yc;
    
	 
    
   always@(posedge clk)
	begin
	if(reset)
	begin
	 port_num_next = 4'b0000;
	 end
	else if (xdiff>=1)      
			                begin
			                port_num_next    = Eo;
								  $display("Router Local R0 east port", port_num_next); 
								  end
			                
         else if(xdiff<=-1)      
			                   begin 
 									 port_num_next    = Wo;
									  $display("Router Local R0 west port", port_num_next);
			                   end
         else  if(xdiff==0)
                    			 begin 
                                 if  (ydiff>=1)    
											 begin    
											  port_num_next    = So;
											  $display("Router Local R0 south port", port_num_next);
											  end
				                    else if (ydiff<=-1)     
                     				 begin  
											  port_num_next    = No;
											    $display("Router Local R0 north port", port_num_next);
											 end
						             else 
                                   begin			 
			              port_num_next    = Lo; 
			              $display("Router Local R0 local port", port_num_next);
			              end
        
          end
			 
			end
	 
	 //assign    port_num_out= port_num_next;
	 always@(posedge clk)
	  begin
	 if(reset)
	 begin
	 e1=0; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=0;
	 end
	else if(port_num_next== Lo)  begin 
	 e1=1; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=0;
	// $display("value of local e1 %d", e1);
	 end
	else if (port_num_next== Eo) begin e1=0; 
	 e2=1;
	 e3=0;
	 e4=0;
	 e5=0;
	//  $display("value of local e2 %d", e2);
	 end
	else if (port_num_next==Wo) 
	begin 
	 e1=0; 
	 e2=0;
	 e3=1;
	 e4=0;
	 e5=0;
//	  $display("value of local e3 %d", e3);
	 end
	else if(port_num_next==So) begin e1=0; 
	 e2=0;
	 e3=0;
	 e4=1;
	 e5=0;
//	  $display("value of local e4 %d", e4);
	 end
 else    if(port_num_next==No)   begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=1;
//	  $display("value of local e5 %d", e5);
 end
 else
 begin 
    e1=0; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=0;
	 
 end 
 end 
endmodule