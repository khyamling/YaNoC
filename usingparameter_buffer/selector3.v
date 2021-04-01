`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:05 08/25/2016 
// Design Name: 
// Module Name:    selector 
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
module selector3(// g00, g01, g02, g03, g04,
                //g10, g11, g12, g13, g14, 
					 // g20, g21, g22, g23, g24, 
					 g30, g31, g32, g33, g34, 
					//  g40, g41, g42, g43, g44,
                  select3		  
    );
//input g00, g01, g02, g03, g04;
//input g10, g11, g12, g13, g14; 
//input g20, g21, g22, g23, g24; 
input g30, g31, g32, g33, g34;
//input clk, rst;
//input g40, g41, g42, g43, g44;
output reg[4:0] select3;
always @ (g30 or g31 or g32 or g33 or g34)
begin
if(g30==1)
begin
select3 = 5'b00001;
end
else if(g31==1)
begin
select3 = 5'b00010;
end
else if(g32==1)
begin
select3 = 5'b00100;
end
else if(g33==1)
begin
select3 = 5'b01000;
end
else if(g34==1)
begin
select3 = 5'b10000;
end
else
begin
select3 = 5'bxxxxx;
end

end	 
endmodule
