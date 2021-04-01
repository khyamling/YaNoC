`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:10 08/24/2016 
// Design Name: 
// Module Name:    arbiter3 
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
module arbiter3(
req0, req1, req2,req3, req4,rst, clk,gnt0,gnt1,gnt2,gnt3, gnt4
    );
input wire[0:7] req0, req1, req2,req3, req4;
input rst, clk;
output gnt0,gnt1,gnt2,gnt3, gnt4;
reg gnt0=0,gnt1=0,gnt2=0,gnt3=0, gnt4=0;
reg temp0=0, temp1=0, temp2=0,temp3=0, temp4=0;
always @(posedge clk)
begin
if(rst)
begin
gnt0=0;
gnt1=0;
gnt2=0;
gnt3=0;
gnt4=0;
end
else
begin
gnt0=temp0;
gnt1=temp1;
gnt2=temp2;
gnt3=temp3;
gnt4=temp4;
end
end
always @(req0, req1, req2,req3, req4) 
begin
if(!req0 && !req1 && !req2 && !req3 && !req4)
begin
temp0=0;
temp1=0;
temp2=0;
temp3=0;
temp4=0;
end
else if(!req0 && !req1 && !req2 && !req3 && req4) 
begin
temp0=0;
temp1=0;
temp2=0;
temp3=0;
temp4=1;
end
else if(!req0 && !req1 && !req2 && req3 &&(!req4||req4))
begin
 temp0=0;
temp1=0;
temp2=0;
temp3=1;
temp4=0;
end
else if(!req0 && !req1 && req2 && (!req3||req3) &&(!req4||req4))
begin
temp0=0;
temp1=0;
temp2=1;
temp3=0;
temp4=0;
end
else if(!req0 && req1 && (!req2&&req2) && (!req3||req3) &&(!req4||req4))
begin
temp0=0;
temp1=1;
temp2=0;
temp3=0;
temp4=0;
end
else if(req0 && (!req1||req1) && (!req2&&req2) && (!req3||req3) &&(!req4||req4))
begin
temp0=1;
temp1=0;
temp2=0;
temp3=0;
temp4=0;
end
else 
begin
temp0=0;
temp1=0;
temp2=0;
temp3=0;
temp4=0;
end
end


endmodule
