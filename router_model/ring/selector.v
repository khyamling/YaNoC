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
module selector( g00, g01, g02, 
                // g10, g11, g12, g13, g14, 
					 // g20, g21, g22, g23, g24, 
					 // g30, g31, g32, g33, g34, 
					//  g40, g41, g42, g43, g44,
                  select					  
    );
input g00, g01, g02;
//input clk, rst;
//input g10, g11, g12, g13, g14; 
//input g20, g21, g22, g23, g24; 
//input g30, g31, g32, g33, g34;
//input g40, g41, g42, g43, g44;
output reg[2:0] select;
always @ (g00 or g01 or g02)
begin
if(g00==1)
begin
select = 3'b001;
end
else if(g01==1)
begin
select = 3'b010;
end
else if(g02==1)
begin
select = 3'b100;
end
else
begin
select = 3'bxxx;
end

end	 
endmodule
