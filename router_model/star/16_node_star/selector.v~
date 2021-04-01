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
module selector( g00, g01, g02, g03, g04,g05, g06, g07, g08, g09, g010, g011, g012, g013, g014,
                // g10, g11, g12, g13, g14, 
					 // g20, g21, g22, g23, g24, 
					 // g30, g31, g32, g33, g34, 
					//  g40, g41, g42, g43, g44,
                  select				  
    );
input g00, g01, g02, g03, g04,g05, g06, g07, g08, g09, g010, g011, g012, g013, g014;
//input clk, rst;
//input g10, g11, g12, g13, g14; 
//input g20, g21, g22, g23, g24; 
//input g30, g31, g32, g33, g34;
//input g40, g41, g42, g43, g44;
output reg[4:0] select;
always @ (g00 or g01 or g02 or g03 or g04 or g05 or g06 or g07 or g08 or g09 or g010 or g011 or g012 or g013 or g014)
begin
if(g00==1)
begin
select = 15'b000000000000001;
end
else if(g01==1)
begin
select = 15'b000000000000010;
end
else if(g02==1)
begin
select = 15'b000000000000100;
end
else if(g03==1)
begin
select = 15'b000000000001000;
end
else if(g04==1)
begin
select = 15'b000000000010000;
end
else if(g05==1)
begin
select = 15'b000000000100000;
end
else if(g06==1)
begin
select = 15'b000000001000000;
end
else if(g07==1)
begin
select = 15'b000000010000000;
end
else if(g08==1)
begin
select = 15'b000000100000000;
end
else if(g09==1)
begin
select = 15'b000001000000000;
end
else if(g010==1)
begin
select = 15'b000010000000000;
end
else if(g011==1)
begin
select = 15'b000100000000000;
end
else if(g012==1)
begin
select = 15'b001000000000000;
end
else if(g013==1)
begin
select = 15'b010000000000000;
end
else if(g014==1)
begin
select = 15'b100000000000000;
end
else
begin
select = 15'bxxxxxxxxxxxxxxx;
end

end	 
endmodule
