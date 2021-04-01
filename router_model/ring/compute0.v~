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
module compute0( Li,port_num_next, e1,e2,e3
        ); //,);

input wire[7:0] Li;
//output [3:0] Lo, Eo, Wo, No, So;
output [3:0] port_num_next;
wire [3:0]  Lo, Eo, Wo;
output reg e1,e2,e3;
wire [0:3] n;

assign n=4'd8;
assign Lo    =        3'd1; 
assign Eo  =          3'd2;
   //assign No    =        3'd3; 
    assign Wo    =        3'd3; 
  //assign So   =         3'd5; 
   //assign HDR_FLIT =  2'b10;
 //  assign BODY_FLIT = 2'b00;
  // assign  TAIL_FLIT = 2'b01;
     
    localparam X_NODE_NUM                    =    4;
   //localparam Y_NODE_NUM                    =    4;
   localparam X_NODE_NUM_WIDTH            =    4;
   //localparam Y_NODE_NUM_WIDTH            =    2;
    localparam X_S_Adress                  = 4'b11;
     //localparam Y_S_Adress                  = 3'b00;
   
    // input  
    wire  [X_NODE_NUM_WIDTH-1        :0]    dest_x_node_in;
//    input 
    //wire   [Y_NODE_NUM_WIDTH-1        :0]    dest_y_node_in;
    //output    [3:0]    port_num_out;
    reg [3:0]    port_num_next;
   
      wire signed [X_NODE_NUM_WIDTH        :0] xc;//current
    wire signed [X_NODE_NUM_WIDTH        :0] xd;//destination
    //wire signed [Y_NODE_NUM_WIDTH        :0] yc;//current
    //wire signed [Y_NODE_NUM_WIDTH        :0] yd;//destination
    wire signed [X_NODE_NUM_WIDTH        :0] xdiff;
   // wire signed [Y_NODE_NUM_WIDTH        :0] ydiff;
   
      //assign dest_y_node_in=Li[1:0];
     assign dest_x_node_in=Li[3:0];
   
     
    assign     xc     =X_S_Adress [X_NODE_NUM_WIDTH-1        :0];
    //assign     yc     =Y_S_Adress[Y_NODE_NUM_WIDTH-1        :0];
    assign    xd        =dest_x_node_in;
    //assign    yd     = dest_y_node_in;
    assign     xdiff    = xd-xc;
    //assign    ydiff    = yd-yc;
   
     
   
    always@(*)begin
    /* // port_num_next    = Lo;
           if                (xdiff    >  1)        port_num_next    = Eo;
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
               else                                 port_num_next    = Lo; //xdiff ==0
          end //else
   end */
     
    /* port_num_next    = Lo;
    // port_num_next    = LOCAL;
            if                (xdiff    > 0)        port_num_next    = Eo;
            else if        (xdiff    < 0)        port_num_next    = Wo;
            else begin
                if            (ydiff    > 0)        port_num_next    = So;
                else if     (ydiff    < 0)        port_num_next    = No;
            end
        $display("Data from R0 local Port to  output port %d",   port_num_next);
    end */
     
              
             
     
    // if ((xc != 0 && xd != ((n-1)/2)+ 1) || ((xc != ((n-1)/2)+1) && xd != 0) || ((xc != ((n-1)/2)-1) && xd!=((n-1)-1)) || (xc != ((n-1)-1) && xd != (((n-1)/2)-1)))
     //begin
     //if (xdiff>=1)     
        /*                    begin
                            port_num_next    = Eo;
                                  $display("xd", xd);
                                  $display("Router R1 east port", port_num_next);
                                  $display("value of n is", n);
                                  end
                           
         else if(xdiff<=-1)     
                               begin
                                      port_num_next    = Wo;
                                           $display("xd", xd);
                                          $display("Router R1 west port", port_num_next);
                                          $display("value of n is", n);
                               end*/
       //  else  if(xdiff==0)
                                 //begin
                              //   if  (ydiff>=1)   
                                            // begin   
                                              //port_num_next    = So;
                                              //$display("Router R0 south port", port_num_next);
                                              //end
                                    //else if (ydiff<=-1)    
                                     // begin 
                                              //port_num_next    = No;
                                              //  $display("Router R0 north port", port_num_next);
                                             //end
            /*else if (xdiff==0)
            begin
                                      port_num_next    = Lo;
                                           $display("xd", xd);
                                          $display("Router R1 local port", port_num_next);
                                          $display("value of n is", n);
                               end*/
                                         
                                        // else
                               //begin             
                          //port_num_next    = Lo;
                          //$display("Router R1 local port", port_num_next);
                          //end
                             
                             
       
       //   end
         
 if(xd == xc )
      begin
        port_num_next = Lo;
             $display("xd", xd);
             $display("Router R1 Local", port_num_next);
      end           
             
   
//    else if (xc <=(((n-1)/2)/2)  && xd == (((n-1)/2)+1))
//        begin
//            port_num_next    = Wo;
//             $display("xd", xd);
//            $display("Router R1 West port loopback", port_num_next);
//            $display("value of n is", n);
//        end
//     else if (xc == (((n-1)/2)+1) && xd <=(((n-1)/2)/2))
//       begin
//            port_num_next    = Wo;
//             $display("xd", xd);
//             $display("Router R1 West  port loopback", port_num_next);
//             $display("value of n is", n);
//        end
//    else if (xc == (((n-1)/2)-1) && xd == ((n-1)-1))
//       begin
//            port_num_next    = Eo;
//             $display("xd", xd);
//             $display("Router R1 East port loopback", port_num_next);
//             $display("value of n is", n);
//        end
//    else if (xc == ((n-1)-1) && xd == (((n-1)/2)-1))
//       begin
//            port_num_next    = Eo;
//             $display("xd", xd);
//             $display("Router R1 East port loopback", port_num_next);
//             $display("value of n is", n);
//        end
else if (xd>=(((n-1)/2)+1) && xc ==0)
  begin
  port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 1 ", port_num_next);
             
        end
else if (xd<=((n-1)/2) && xc ==0)
  begin
  port_num_next = Eo;
             $display("xd", xd);
             $display("Router R1 East port 333 ", port_num_next);
             
        end

else if(xd==(((n-1)/2)-1) && xc==((n-1)/2))
   begin
      
         port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 223211", port_num_next);
             
       
       
    end   
//    else if(xd<= ((((n-1)/2))/2) && xc <= (((n-1)/2)))
//   begin
//         port_num_next = Wo;
//             $display("xd", xd);
//             $display("Router R1 West port 3", port_num_next);
//             
//        end
       
        else if(xd<=(((n-1)/2)/2) && xc==((n-1)/2))
   begin
         port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 4", port_num_next);
             
        end

// prabhu else if(xd>= ((((n-1)/2))/2) && xc <= (((n-1)/2)))
//   begin
//         port_num_next = Eo;
//             $display("xd", xd);
//             $display("Router R1 East port 1", port_num_next);
//             
//        end
       

       
else if(xd==((n-1)-1) && xc==(n-1))
   begin
         port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 5", port_num_next);
             
        end
       
else if(xd==(n-1) && xc<=((n-1)/2))
   begin
         port_num_next = Eo;
             $display("xd", xd);
             $display("Router R1 East port 55", port_num_next);
             
        end
       

   
else if(xd>= (((n-1)/2)+1)   && xc <=(((((n-1)/2)+1))/2))
   begin
     if (xd > xc)
            begin
                port_num_next = Eo;
            $display("xd", xd);
             $display("Router R1 East port 223321", port_num_next);
             end
  else
  begin 
         port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 2", port_num_next);
             
        end
    end
//else if(xd>= (((((n-1)/2)+1))/2)   && xc <=(n-1))
//   begin
//         port_num_next = Wo;
//             $display("xd", xd);
//             $display("Router R1 West port 6", port_num_next);
//             
//        end

else if(xd>= (((((n-1)/2)+1))/2)   && xc <= (((((n-1)/2)+1))/2))
   begin
         port_num_next = Eo;
             $display("xd", xd);
             $display("Router R1 East port 3", port_num_next);
             
        end       
       
else if(xd==0 && xc <= ((n-1)/2))
 begin
     port_num_next = Wo;
     $display("xd", xd);
     $display("Router R1 West port 00", port_num_next)      ;
 end
 
else if(xd==0 && xc <= (((n-1)/2)+1))
 begin
     port_num_next = Eo;
     $display("xd", xd);
     $display("Router R1 East port 444", port_num_next)      ;
 end
 
else if(xd<=((n-1)/2) && xc == (((n-1)/2)+1))
 begin
     port_num_next = Wo;
     $display("xd", xd);
     $display("Router R1 West port 8889", port_num_next)      ;
 end
 
 
//else if(xd>= (((n-1)/2)+1)   && xc <=(n-1))
//   begin
//         port_num_next = Wo;
//             $display("xd", xd);
//             $display("Router R1 West port ", port_num_next);
//             
//        end   
//       
//else if(xd>= 0   && xc <=((n-1)/2))
// begin
//         port_num_next = Eo;
//    $display("xd", xd);
//             $display("Router East port 44", port_num_next);
//
//    end   

   
   

    else if(xd >= (((n-1)/2)+1) && xc <= ((((n-1)/2))/2))
      begin
        port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 7", port_num_next);
             
        end         

    else if(xd >= (((n-1)/2)+1) && xc >= ((((n-1)/2))/2))
      begin
        if (xc > xd)
           begin
              port_num_next = Wo;
              $display("xd", xd);
             $display("Router R1 West port 58558", port_num_next);
             end
         else
         begin       
        port_num_next = Eo;
             $display("xd", xd);
             $display("Router R1 East port 5", port_num_next);
             
        end         
    end
 
else if(xd >= (((n-1)/2)+1) && xc >= ((((n-1)/2))/2))
      begin
        port_num_next = Eo;
             $display("xd", xd);
             $display("Router R1 East port 6", port_num_next);
             
        end         

   
    else if(xd <= (((n-1)/2)) && xc!=0 &&  xc <= ((((n-1)/2)+1))/2)
      begin
        port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 Wo port 8", port_num_next);
             
        end   
  else if(xd <= (((n-1)/2)) && xc!=(((n-1)/2)+1)&& xc >= ((((n-1)/2)+1))/2)
    begin
        if(xd <= (((n-1)/2)/2))
           begin
        port_num_next = Wo;
             $display("xd", xd);
             $display("Router R1 West port 34227", port_num_next);
             end
     else       
      begin     
        port_num_next = Eo;
             $display("xd", xd);
             $display("Router R1 East port 7", port_num_next);
        end     
       
        end   
 

        end     
       
       
       
    //    end
       
       

            //end
     
     //assign    port_num_out= port_num_next;
     always@(*)
     begin
     if(port_num_next== Lo)  begin
     e1=1;
     e2=0;
     e3=0;
     $display("value of e1 %d", e1);
     end
    else if (port_num_next== Eo)
    begin
     e1=0;
     e2=1;
     e3=0;
      $display("value of e2 %d", e2);
     end
    else if (port_num_next==Wo)
    begin
     e1=0;
     e2=0;
     e3=1;
     $display("value of e3 %d", e3);
     end
//    else if(port_num_next==So) begin e1=0;
//     e2=0;
//     e3=0;
//     e4=1;
//     e5=0;
//      $display("value of e4 %d", e4);
//     end
// else    if(port_num_next==No)   begin e1=0;
//     e2=0;
//     e3=0;
//     e4=0;
//     e5=1;
//      $display("value of e3 %d", e3);
// end
 else begin
    e1=0;
     e2=0;
     e3=0;
     end
 end


endmodule
