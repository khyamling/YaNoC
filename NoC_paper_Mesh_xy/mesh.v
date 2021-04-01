`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:14:10 04/25/2017 
// Design Name: 
// Module Name:    lfsr 
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
module mesh ( t1, t2, t3, t4, t5, t6, t7, t8, t9,
clk, reset,  Write);

input clk, reset, Write; 



output reg[2:0] t1, t2, t3, t4, t5, t6, t7, t8, t9;

parameter DATAWID = 32;

parameter file1="00.txt";
parameter file2="01.txt";
parameter file3="02.txt";
parameter file4="10.txt";
parameter file5="11.txt";
parameter file6="12.txt";
parameter file7="20.txt";
parameter file8="21.txt";
parameter file9="22.txt";

//input and ouput port of router

wire [DATAWID-1:0] local_in00;
wire [DATAWID-1:0] local_in01;
wire [DATAWID-1:0] local_in02;
wire [DATAWID-1:0] local_in10;
wire [DATAWID-1:0] local_in11;
wire [DATAWID-1:0] local_in12;
wire [DATAWID-1:0] local_in20;
wire [DATAWID-1:0] local_in21;
wire [DATAWID-1:0] local_in22;
wire [DATAWID-1:0] local_out00;
wire [DATAWID-1:0] local_out01;
wire [DATAWID-1:0] local_out02;
wire [DATAWID-1:0] local_out10;
wire [DATAWID-1:0] local_out11;
wire [DATAWID-1:0] local_out12;
wire [DATAWID-1:0] local_out20;
wire [DATAWID-1:0] local_out21;
wire [DATAWID-1:0] local_out22;

//input port of router E, W,N,S, NE,NW,SE,SW
reg [DATAWID-1:0] east_in00;
reg [DATAWID-1:0] south_in00;
reg [DATAWID-1:0] west_in02;
reg [DATAWID-1:0] south_in02;
reg [DATAWID-1:0] east_in20;
reg [DATAWID-1:0] north_in20;
reg [DATAWID-1:0] west_in22;
reg [DATAWID-1:0] north_in22;
reg [DATAWID-1:0] east_in10;
reg [DATAWID-1:0] north_in10;
reg [DATAWID-1:0] south_in10;
reg [DATAWID-1:0] west_in12;
reg [DATAWID-1:0] north_in12;
reg [DATAWID-1:0] south_in12;
reg [DATAWID-1:0] east_in01;
reg [DATAWID-1:0] west_in01;
reg [DATAWID-1:0] south_in01;
reg [DATAWID-1:0] east_in21;
reg [DATAWID-1:0] west_in21;
reg [DATAWID-1:0] north_in21;
reg [DATAWID-1:0] east_in11;
reg [DATAWID-1:0] west_in11;
reg [DATAWID-1:0] north_in11;
reg [DATAWID-1:0] south_in11;


//output port of router East, west, south, north, southeast, southwest, northeast, northwest

wire [DATAWID-1:0] east_out00;
wire [DATAWID-1:0] south_out00;
wire [DATAWID-1:0] west_out02;
wire [DATAWID-1:0] south_out02;
wire [DATAWID-1:0] east_out20;
wire [DATAWID-1:0] north_out20;
wire [DATAWID-1:0] west_out22;
wire [DATAWID-1:0] north_out22;
wire [DATAWID-1:0] east_out10;
wire [DATAWID-1:0] north_out10;
wire [DATAWID-1:0] south_out10;
wire [DATAWID-1:0] west_out12;
wire [DATAWID-1:0] north_out12;
wire [DATAWID-1:0] south_out12;
wire [DATAWID-1:0] east_out01;
wire [DATAWID-1:0] west_out01;
wire [DATAWID-1:0] south_out01;
wire [DATAWID-1:0] east_out21;
wire [DATAWID-1:0] west_out21;
wire [DATAWID-1:0] north_out21;
wire [DATAWID-1:0] east_out11;
wire [DATAWID-1:0] west_out11;
wire [DATAWID-1:0] north_out11;
wire [DATAWID-1:0] south_out11;


// first router
(* keep_hierarchy = "yes" *) lfsr l1(.clk(clk), .reset(reset), .out1(local_in00));
router #(.file(file1)) r_$00( .clk(clk), .rst(reset),.i00(local_in00),.i01(east_in00),.i02(), .i03(),.i04(south_in00),.o00(local_out00),.o01(east_out00), .o02(),.o03(),.o04(south_out00),.Write(Write));

// second router
(* keep_hierarchy = "yes" *) lfsr l2(.clk(clk), .reset(reset), .out1(local_in01));
router #(.file(file2)) r_$01( .clk(clk), .rst(reset),.i00(local_in01),.i01(east_in01),.i02(west_in01),.i03(),.i04(south_in01),.o00(local_out01),.o01(east_out01),.o02(west_out01),.o03(),.o04(south_out01),.Write(Write));

//3 router
(* keep_hierarchy = "yes" *) lfsr l3(.clk(clk), .reset(reset), .out1(local_in02));
router  #(.file(file3)) r_$02( .clk(clk), .rst(reset),.i00(local_in02),.i01(),.i02(west_in02),.i03(), .i04(south_in02),.o00(local_out02),.o01(),.o02(west_out02),.o03(),.o04(south_out02),.Write(Write));


// 4 router
(* keep_hierarchy = "yes" *) lfsr l4(.clk(clk), .reset(reset), .out1(local_in10));
router #(.file(file4)) r_$10( .clk(clk), .rst(reset),.i00(local_in10),.i01(east_in10),.i02(), .i03(north_in10),.i04(south_in10),.o00(local_out10),.o01(east_out10),.o02(),.o03(north_out10),.o04(south_out10),.Write(Write));

// 5 router
(* keep_hierarchy = "yes" *) lfsr l5(.clk(clk), .reset(reset), .out1(local_in11));
router #(.file(file5)) r_$11( .clk(clk), .rst(reset),.i00(local_in11),.i01(east_in11),.i02(west_in11),.i03(north_in11),.i04(south_in11),.o00(local_out11),.o01(east_out11),.o02(west_out11),.o03(north_out11),.o04(south_out11),.Write(Write));

// 6 router
(* keep_hierarchy = "yes" *) lfsr l6(.clk(clk), .reset(reset), .out1(local_in12));
router #(.file(file6)) r_$12( .clk(clk), .rst(reset),.i00(local_in12),.i01(),.i02(west_in12), .i03(north_in12),.i04(south_in12),.o00(local_out12),.o01(), .o02(west_out12),.o03(north_out12),.o04(south_out12),.Write(Write));

// 7 router
(* keep_hierarchy = "yes" *) lfsr l7(.clk(clk), .reset(reset), .out1(local_in20));
router #(.file(file7)) r_$20( .clk(clk), .rst(reset),.i00(local_in20),.i01(east_in20),.i02(), .i03(north_in20),.i04(),.o00(local_out20),.o01(east_out20),.o02(),.o03(north_out20),.o04(),.Write(Write));

// 8 router
(* keep_hierarchy = "yes" *) lfsr l8(.clk(clk), .reset(reset), .out1(local_in21));
router  #(.file(file8)) r_$21( .clk(clk), .rst(reset),.i00(local_in21),.i01(east_in21),.i02(west_in21),.i03(north_in21),.i04(),.o00(local_out21),.o01(east_out21),.o02(west_out21),.o03(north_out21),.o04(),.Write(Write));

// 9 router
(* keep_hierarchy = "yes" *) lfsr l9(.clk(clk), .reset(reset), .out1(local_in22));
router #(.file(file9)) r_$22( .clk(clk), .rst(reset),.i00(local_in22),.i01(),.i02(west_in22), .i03(north_in22),.i04(),.o00(local_out22),.o01(),.o02(west_out22),.o03(north_out22),.o04(),.Write(Write));

always @ ( posedge clk)
begin
west_in01<=east_out00;
north_in10<=south_out00;
west_in02<=east_out01;
east_in00<=west_out01;
north_in11<=south_out01;
east_in01<=west_out02;
north_in12<=south_out02;
west_in11<=east_out10;
south_in00<=north_out10;
north_in20<=south_out10;
west_in12<=east_out11;
east_in10<=west_out11;
south_in01<=north_out11;
north_in21<=south_out11;
east_in11<=west_out12;
south_in02<=north_out12;
north_in22<=south_out12;
west_in21<=east_out20;
south_in10<=north_out20;
west_in22<=east_out21;
east_in20<=west_out21;
south_in11<=north_out21;
east_in21<=west_out22;
south_in12<=north_out22;
end

always @ ( posedge clk)
begin
t1<=local_out00[16:14];
t2<=local_out01[16:14];
t3<=local_out02[16:14];
t4<=local_out10[16:14];
t5<=local_out11[16:14];
t6<=local_out12[16:14];
t7<=local_out20[16:14];
t8<=local_out21[16:14];
t9<=local_out22[16:14];
end
endmodule
