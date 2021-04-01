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
module selectorR22(// g00, g01, g02, g03, g04,
               // g10, g11, g12, g13, g14, 
					 g20, g21, g22, g23, g24,
					 // g30, g31, g32, g33, g34, 
					//  g40, g41, g42, g43, g44,
                  select2						  
    );
//input g00, g01, g02, g03, g04;
//input g10, g11, g12, g13, g14; 
input g20, g21, g22, g23, g24; 
//input clk, rst;
//input g30, g31, g32, g33, g34;
//input g40, g41, g42, g43, g44;
output reg[4:0] select2;
always @(g20 or g21 or g22 or g23 or g24)
begin
if(g20==1)
begin
select2 = 5'b00001;
end
else if(g21==1)
begin
select2 = 5'b00010;
end
else if(g22==1)
begin
select2 = 5'b00100;
end
else if(g23==1)
begin
select2 = 5'b01000;
end
else if(g24==1)
begin
select2 = 5'b10000;
end
else
begin
select2 = 5'bxxxxx;
end

end	 
endmodule
