`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:20:55 04/28/2017 
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
module selector( g00, g01, g02, g03, g04, 
                // g10, g11, g12, g13, g14, 
					 // g20, g21, g22, g23, g24, 
					 // g30, g31, g32, g33, g34, 
					//  g40, g41, g42, g43, g44,
                  select, clk, reset //, flag2	  
    );
input g00, g01, g02, g03, g04;
input clk, reset;
//(* KEEP = "TRUE" *) input flag2;
(* KEEP = "TRUE" *) output reg[4:0] select;


always @ (posedge clk) //g00 or g01 or g02 or g03 or g04)
begin
if(reset)
begin
select = 5'b00000;
end
else if(g00==1)
begin
select = 5'b00001;
end
else if(g01==1)
begin
select = 5'b00010;
end
else if(g02==1)
begin
select = 5'b00100;
end
else if(g03==1)
begin
select = 5'b01000;
end
else if(g04==1)
begin
select = 5'b10000;
end
else
begin
select = 5'bxxxxx;
//$display("g00, g01, g02, g03, g04 %b, %b, %b, %b, %t", g00, g01, g02, g03, g04, $time);
end
end
endmodule
