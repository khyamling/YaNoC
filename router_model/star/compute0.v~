`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:45 08/27/2016 
// Design Name: 
// Module Name:    compute0 
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
module compute0( Li,port_num_next, e1,e2 //,e3,e4,e5
		); //,);

input wire[7:0] Li;
//input clk, rst;
//input clk, rst;
//output [3:0] Lo, Eo, Wo, No, So;
output [3:0] port_num_next;
wire [3:0]  Lo, Eo; // Wo, No, So;
output reg e1,e2; //e3,e4,e5;

assign Lo    =        3'd1;  
assign Eo  =          3'd2;
  // assign No    =        3'd3;  
   // assign Wo    =        3'd4;  
  //assign So   =         3'd5;  
   //assign HDR_FLIT =  2'b10;
 //  assign BODY_FLIT = 2'b00;
  // assign  TAIL_FLIT = 2'b01;
	 
   //localparam X_NODE_NUM                    =    4;
   //localparam Y_NODE_NUM                    =    4;
   //localparam X_NODE_NUM_WIDTH            =    2;
  // localparam Y_NODE_NUM_WIDTH            =    2;
	localparam Source_Address            = 5'b01;
	//localparam Y_S_Adress                  = 3'b01;
	
	// input   
	wire  [3:0]    dest_Address;
//    input  
//	wire   [Y_NODE_NUM_WIDTH-1        :0]    dest_y_node_in;
	//output    [3:0]    port_num_out;
	reg [3:0]    port_num_next;
    
	 // wire signed [X_NODE_NUM_WIDTH        :0] xc;//current
  //  wire signed [X_NODE_NUM_WIDTH        :0] xd;//destination
    //wire signed [Y_NODE_NUM_WIDTH        :0] yc;//current
    //wire signed [Y_NODE_NUM_WIDTH        :0] yd;//destination
    wire signed [4:0] diff;
    //wire signed [Y_NODE_NUM_WIDTH        :0] ydiff;
    
	  assign dest_Address=Li[3:0];
	// assign dest_x_node_in=Li[3:2];
	
	 
//    assign     xc     =X_S_Adress [X_NODE_NUM_WIDTH-1        :0];
  //  assign     yc     =Y_S_Adress[Y_NODE_NUM_WIDTH-1        :0];
   // assign    xd        =dest_x_node_in;
   // assign    yd     = dest_y_node_in;
    assign     diff    = dest_Address-Source_Address;
   // assign    ydiff    = yd-yc;
    
	 
    
   always@(*)begin
	 
	 if (diff==0)      
			                begin
			                port_num_next    = Eo;
								  $display("Router Local R0 east port", port_num_next);
								  end
			                
         else     
			                   begin 
 									 port_num_next    = Lo;
									 	  $display("Router Local R0 west port", port_num_next);
			                   end
			 
			end
	 
	 //assign    port_num_out= port_num_next;
	 always@(*)
	 begin
	 if(port_num_next== Lo)  begin 
	 e1=1; 
	 e2=0;
	 
	 $display("value of local e1 %d", e1);
	 end
	else if (port_num_next== Eo) begin 
         e1=0; 
	 e2=1;
	  $display("value of local e2 %d", e2);
	 end
	
 else begin 
         e1=0; 
	 e2=0;
	 
 end 
 end 


endmodule
