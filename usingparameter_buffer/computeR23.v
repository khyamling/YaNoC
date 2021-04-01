`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:01 08/27/2016 
// Design Name: 
// Module Name:    compute3 
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
module computeR23( Ni,port_num_next, e1,e2,e3,e4,e5
		); //,);

input wire[7:0] Ni;
//input clk, rst;
//output [3:0] Lo, Eo, Wo, No, So;
output [3:0] port_num_next;
wire [3:0]  Lo, Eo, Wo, No, So;
output reg e1,e2,e3,e4,e5;

  assign Lo    =        3'd1;  
assign Eo  =          3'd2;
   assign No    =        3'd3;  
    assign Wo    =        3'd4;  
  assign So   =         3'd5;  
   //assign HDR_FLIT =  2'b10;
 //  assign BODY_FLIT = 2'b00;
  // assign  TAIL_FLIT = 2'b01;
	 
	localparam X_NODE_NUM                    =    4;
   localparam Y_NODE_NUM                    =    4;
   localparam X_NODE_NUM_WIDTH            =    2;
   localparam Y_NODE_NUM_WIDTH            =    2;
	localparam X_S_Adress                  = 3'b01;
	localparam Y_S_Adress                  = 3'b00;
	
	// input   
	wire  [X_NODE_NUM_WIDTH-1        :0]    dest_x_node_in;
//    input  
	wire   [Y_NODE_NUM_WIDTH-1        :0]    dest_y_node_in;
	//output    [3:0]    port_num_out;
	reg [3:0]    port_num_next;
    
	  wire signed [X_NODE_NUM_WIDTH        :0] xc;//current
    wire signed [X_NODE_NUM_WIDTH        :0] xd;//destination
    wire signed [Y_NODE_NUM_WIDTH        :0] yc;//current
    wire signed [Y_NODE_NUM_WIDTH        :0] yd;//destination
    wire signed [X_NODE_NUM_WIDTH        :0] xdiff;
    wire signed [Y_NODE_NUM_WIDTH        :0] ydiff;
    
	 assign dest_y_node_in=Ni[1:0];
	 assign dest_x_node_in=Ni[3:2];
	 
    assign     xc     =X_S_Adress [X_NODE_NUM_WIDTH-1        :0];
    assign     yc     =Y_S_Adress[Y_NODE_NUM_WIDTH-1        :0];
    assign    xd        =dest_x_node_in;
    assign    yd     = dest_y_node_in;
    assign     xdiff    = xd-xc;
    assign    ydiff    = yd-yc;
    
	 
    
    always@(*)begin
     // port_num_next    = Lo;
        /*   if                (xdiff    >  1)        port_num_next    = Eo;
         else if        (xdiff    < -1)        port_num_next    = Wo;
            else if        (xdiff    ==    1 || xdiff    ==    -1     )
			begin
                if            (ydiff    >= 1)        port_num_next    = So;
                else if     (ydiff    ==    0)        port_num_next    = Lo;
                else                                 port_num_next    = No;
           end  // xdiff    ==    1 || xdiff    ==    -1     
            else begin //xdiff ==0
              if            (ydiff    >    1)        port_num_next    = So;
                else if    (ydiff    ==    1)        port_num_next    = Lo;
            //   else if    (ydiff    ==-1)        port_num_next    = L;
                else if    (ydiff    <= -1)        port_num_next    = No;
               else                                 port_num_next    = 1'bx; //xdiff ==0
          end //else
    end */
	/* port_num_next    = Lo;
	// port_num_next	= LOCAL;
			if				(xdiff	> 0)		port_num_next	= Eo;
			else if		(xdiff	< 0)		port_num_next	= Wo;
			else begin
				if			(ydiff	> 0)		port_num_next	= So;
				else if 	(ydiff	< 0)		port_num_next	= No;
			end 
 
    end */
	 
	 if (xdiff>=1)      
			                begin
			                port_num_next    = Eo;
								 
								  end
			                
         else if(xdiff<=-1)      
			                   begin 
 									 port_num_next    = Wo;
									 
			                   end
         else  if(xdiff==0)
                    			 begin 
                                 if  (ydiff>=1)    
											 begin    
											  port_num_next    = So;
											  
											  end
				                    else if (ydiff<=-1)     
                     				 begin  
											  port_num_next    = No;
											  
											 end
						             else 
                                   begin			 
			              port_num_next    = Lo; 
			            
			              end
        
          end
			 
			end
	
	 //assign    port_num_out= port_num_next;
	 always@(*)begin
	 if(port_num_next== Lo)  begin 
	 e1=1; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=0;
	 end
	else if (port_num_next== Eo) begin e1=0; 
	 e2=1;
	 e3=0;
	 e4=0;
	 e5=0;
	 end
	else if (port_num_next==Wo) 
	begin 
	 e1=0; 
	 e2=0;
	 e3=1;
	 e4=0;
	 e5=0;
	 end
	else if(port_num_next==So) begin e1=0; 
	 e2=0;
	 e3=0;
	 e4=1;
	 e5=0;
	 end
 else    if(port_num_next==No)   begin e1=0; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=1;
 end
 else begin e1=0; 
	 e2=0;
	 e3=0;
	 e4=0;
	 e5=0;
 end 
 end 
endmodule
