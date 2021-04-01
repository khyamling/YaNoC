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
module selector4(// g00, g01, g02, g03, g04,
               // g10, g11, g12, g13, g14, 
					 // g20, g21, g22, g23, g24, 
					 // g30, g31, g32, g33, g34, 
					  g40, g41, g42, g43, g44,
                  select4			  
    );
//input g00, g01, g02, g03, g04;
//input g10, g11, g12, g13, g14; 
//input g20, g21, g22, g23, g24; 
//input g30, g31, g32, g33, g34;
input g40, g41, g42, g43, g44;
//input clk, rst;
output reg[4:0] select4;
always @(g40 or g41 or g42 or g43 or g44)
begin
if(g40==1)
begin
select4 = 5'b00001;
end
else if(g41==1)
begin
select4 = 5'b00010;
end
else if(g42==1)
begin
select4 = 5'b00100;
end
else if(g43==1)
begin
select4 = 5'b01000;
end
else if(g44==1)
begin
select4 = 5'b10000;
end
else
begin
select4 = 5'bxxxxx;
end

end	 
endmodule
