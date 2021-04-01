module mesh (
0local_in00,0local_out00,
0local_in01,0local_out01,
0local_in02,0local_out02,
0local_in03,0local_out03,
0local_in04,0local_out04,
1local_in10,1local_out10,
1local_in11,1local_out11,
1local_in12,1local_out12,
1local_in13,1local_out13,
1local_in14,1local_out14,
2local_in20,2local_out20,
2local_in21,2local_out21,
2local_in22,2local_out22,
2local_in23,2local_out23,
2local_in24,2local_out24,
3local_in30,3local_out30,
3local_in31,3local_out31,
3local_in32,3local_out32,
3local_in33,3local_out33,
3local_in34,3local_out34,
4local_in40,4local_out40,
4local_in41,4local_out41,
4local_in42,4local_out42,
4local_in43,4local_out43,
4local_in44,4local_out44,
clk, reset,  Write, Read);
input clk, rst, Write, Read; 
parameter DATAWID = 8;
input [DATAWID-1:0] 0local_in00;
output [DATAWID-1:0] 0local_out00;
input [DATAWID-1:0] 0local_in01;
output [DATAWID-1:0] 0local_out01;
input [DATAWID-1:0] 0local_in02;
output [DATAWID-1:0] 0local_out02;
input [DATAWID-1:0] 0local_in03;
output [DATAWID-1:0] 0local_out03;
input [DATAWID-1:0] 0local_in04;
output [DATAWID-1:0] 0local_out04;
input [DATAWID-1:0] 1local_in10;
output [DATAWID-1:0] 1local_out10;
input [DATAWID-1:0] 1local_in11;
output [DATAWID-1:0] 1local_out11;
input [DATAWID-1:0] 1local_in12;
output [DATAWID-1:0] 1local_out12;
input [DATAWID-1:0] 1local_in13;
output [DATAWID-1:0] 1local_out13;
input [DATAWID-1:0] 1local_in14;
output [DATAWID-1:0] 1local_out14;
input [DATAWID-1:0] 2local_in20;
output [DATAWID-1:0] 2local_out20;
input [DATAWID-1:0] 2local_in21;
output [DATAWID-1:0] 2local_out21;
input [DATAWID-1:0] 2local_in22;
output [DATAWID-1:0] 2local_out22;
input [DATAWID-1:0] 2local_in23;
output [DATAWID-1:0] 2local_out23;
input [DATAWID-1:0] 2local_in24;
output [DATAWID-1:0] 2local_out24;
input [DATAWID-1:0] 3local_in30;
output [DATAWID-1:0] 3local_out30;
input [DATAWID-1:0] 3local_in31;
output [DATAWID-1:0] 3local_out31;
input [DATAWID-1:0] 3local_in32;
output [DATAWID-1:0] 3local_out32;
input [DATAWID-1:0] 3local_in33;
output [DATAWID-1:0] 3local_out33;
input [DATAWID-1:0] 3local_in34;
output [DATAWID-1:0] 3local_out34;
input [DATAWID-1:0] 4local_in40;
output [DATAWID-1:0] 4local_out40;
input [DATAWID-1:0] 4local_in41;
output [DATAWID-1:0] 4local_out41;
input [DATAWID-1:0] 4local_in42;
output [DATAWID-1:0] 4local_out42;
input [DATAWID-1:0] 4local_in43;
output [DATAWID-1:0] 4local_out43;
input [DATAWID-1:0] 4local_in44;
output [DATAWID-1:0] 4local_out44;
reg [DATAWID-1:0] 0east_in00;
reg [DATAWID-1:0] 0south_in00;
reg [DATAWID-1:0] 0west_in04;
reg [DATAWID-1:0] 0south_in04;
reg [DATAWID-1:0] 4east_in40;
reg [DATAWID-1:0] 4north_in40;
reg [DATAWID-1:0] 4west_in44;
reg [DATAWID-1:0] 4north_in44;
reg [DATAWID-1:0] 1east_in10;
reg [DATAWID-1:0] 1north_in10;
reg [DATAWID-1:0] 1south_in10;
reg [DATAWID-1:0] 2east_in20;
reg [DATAWID-1:0] 2north_in20;
reg [DATAWID-1:0] 2south_in20;
reg [DATAWID-1:0] 3east_in30;
reg [DATAWID-1:0] 3north_in30;
reg [DATAWID-1:0] 3south_in30;
reg [DATAWID-1:0] 1west_in14;
reg [DATAWID-1:0] 1north_in14;
reg [DATAWID-1:0] 1south_in14;
reg [DATAWID-1:0] 2west_in24;
reg [DATAWID-1:0] 2north_in24;
reg [DATAWID-1:0] 2south_in24;
reg [DATAWID-1:0] 3west_in34;
reg [DATAWID-1:0] 3north_in34;
reg [DATAWID-1:0] 3south_in34;
reg [DATAWID-1:0] 0east_in01;
reg [DATAWID-1:0] 0west_in01;
reg [DATAWID-1:0] 0south_in01;
reg [DATAWID-1:0] 0east_in02;
reg [DATAWID-1:0] 0west_in02;
reg [DATAWID-1:0] 0south_in02;
reg [DATAWID-1:0] 0east_in03;
reg [DATAWID-1:0] 0west_in03;
reg [DATAWID-1:0] 0south_in03;
reg [DATAWID-1:0] 4east_in41;
reg [DATAWID-1:0] 4west_in41;
reg [DATAWID-1:0] 4north_in41;
reg [DATAWID-1:0] 4east_in42;
reg [DATAWID-1:0] 4west_in42;
reg [DATAWID-1:0] 4north_in42;
reg [DATAWID-1:0] 4east_in43;
reg [DATAWID-1:0] 4west_in43;
reg [DATAWID-1:0] 4north_in43;
reg [DATAWID-1:0] 1east_in11;
reg [DATAWID-1:0] 1west_in11;
reg [DATAWID-1:0] 1north_in11;
reg [DATAWID-1:0] 1south_in11;
reg [DATAWID-1:0] 1east_in12;
reg [DATAWID-1:0] 1west_in12;
reg [DATAWID-1:0] 1north_in12;
reg [DATAWID-1:0] 1south_in12;
reg [DATAWID-1:0] 1east_in13;
reg [DATAWID-1:0] 1west_in13;
reg [DATAWID-1:0] 1north_in13;
reg [DATAWID-1:0] 1south_in13;
reg [DATAWID-1:0] 2east_in21;
reg [DATAWID-1:0] 2west_in21;
reg [DATAWID-1:0] 2north_in21;
reg [DATAWID-1:0] 2south_in21;
reg [DATAWID-1:0] 2east_in22;
reg [DATAWID-1:0] 2west_in22;
reg [DATAWID-1:0] 2north_in22;
reg [DATAWID-1:0] 2south_in22;
reg [DATAWID-1:0] 2east_in23;
reg [DATAWID-1:0] 2west_in23;
reg [DATAWID-1:0] 2north_in23;
reg [DATAWID-1:0] 2south_in23;
reg [DATAWID-1:0] 3east_in31;
reg [DATAWID-1:0] 3west_in31;
reg [DATAWID-1:0] 3north_in31;
reg [DATAWID-1:0] 3south_in31;
reg [DATAWID-1:0] 3east_in32;
reg [DATAWID-1:0] 3west_in32;
reg [DATAWID-1:0] 3north_in32;
reg [DATAWID-1:0] 3south_in32;
reg [DATAWID-1:0] 3east_in33;
reg [DATAWID-1:0] 3west_in33;
reg [DATAWID-1:0] 3north_in33;
reg [DATAWID-1:0] 3south_in33;
wire [DATAWID-1:0] 0east_out00;
wire [DATAWID-1:0] 0south_out00;
wire [DATAWID-1:0] 0west_out04;
wire [DATAWID-1:0] 0south_out04;
wire [DATAWID-1:0] 4east_out40;
wire [DATAWID-1:0] 4north_out40;
wire [DATAWID-1:0] 4west_out44;
wire [DATAWID-1:0] 4north_out44;
wire [DATAWID-1:0] 1east_out10;
wire [DATAWID-1:0] 1north_out10;
wire [DATAWID-1:0] 1south_out10;
wire [DATAWID-1:0] 2east_out20;
wire [DATAWID-1:0] 2north_out20;
wire [DATAWID-1:0] 2south_out20;
wire [DATAWID-1:0] 3east_out30;
wire [DATAWID-1:0] 3north_out30;
wire [DATAWID-1:0] 3south_out30;
wire [DATAWID-1:0] 1west_out14;
wire [DATAWID-1:0] 1north_out14;
wire [DATAWID-1:0] 1south_out14;
wire [DATAWID-1:0] 2west_out24;
wire [DATAWID-1:0] 2north_out24;
wire [DATAWID-1:0] 2south_out24;
wire [DATAWID-1:0] 3west_out34;
wire [DATAWID-1:0] 3north_out34;
wire [DATAWID-1:0] 3south_out34;
wire [DATAWID-1:0] 0east_out01;
wire [DATAWID-1:0] 0west_out01;
wire [DATAWID-1:0] 0south_out01;
wire [DATAWID-1:0] 0east_out02;
wire [DATAWID-1:0] 0west_out02;
wire [DATAWID-1:0] 0south_out02;
wire [DATAWID-1:0] 0east_out03;
wire [DATAWID-1:0] 0west_out03;
wire [DATAWID-1:0] 0south_out03;
wire [DATAWID-1:0] 4east_out41;
wire [DATAWID-1:0] 4west_out41;
wire [DATAWID-1:0] 4north_out41;
wire [DATAWID-1:0] 4east_out42;
wire [DATAWID-1:0] 4west_out42;
wire [DATAWID-1:0] 4north_out42;
wire [DATAWID-1:0] 4east_out43;
wire [DATAWID-1:0] 4west_out43;
wire [DATAWID-1:0] 4north_out43;
wire [DATAWID-1:0] 1east_out11;
wire [DATAWID-1:0] 1west_out11;
wire [DATAWID-1:0] 1north_out11;
wire [DATAWID-1:0] 1south_out11;
wire [DATAWID-1:0] 1east_out12;
wire [DATAWID-1:0] 1west_out12;
wire [DATAWID-1:0] 1north_out12;
wire [DATAWID-1:0] 1south_out12;
wire [DATAWID-1:0] 1east_out13;
wire [DATAWID-1:0] 1west_out13;
wire [DATAWID-1:0] 1north_out13;
wire [DATAWID-1:0] 1south_out13;
wire [DATAWID-1:0] 2east_out21;
wire [DATAWID-1:0] 2west_out21;
wire [DATAWID-1:0] 2north_out21;
wire [DATAWID-1:0] 2south_out21;
wire [DATAWID-1:0] 2east_out22;
wire [DATAWID-1:0] 2west_out22;
wire [DATAWID-1:0] 2north_out22;
wire [DATAWID-1:0] 2south_out22;
wire [DATAWID-1:0] 2east_out23;
wire [DATAWID-1:0] 2west_out23;
wire [DATAWID-1:0] 2north_out23;
wire [DATAWID-1:0] 2south_out23;
wire [DATAWID-1:0] 3east_out31;
wire [DATAWID-1:0] 3west_out31;
wire [DATAWID-1:0] 3north_out31;
wire [DATAWID-1:0] 3south_out31;
wire [DATAWID-1:0] 3east_out32;
wire [DATAWID-1:0] 3west_out32;
wire [DATAWID-1:0] 3north_out32;
wire [DATAWID-1:0] 3south_out32;
wire [DATAWID-1:0] 3east_out33;
wire [DATAWID-1:0] 3west_out33;
wire [DATAWID-1:0] 3north_out33;
wire [DATAWID-1:0] 3south_out33;
router r_$00( .clk(clk), .rst(reset),.local_in(0local_in00),.east_in(0east_in00),.west_in(),
.north_in(),.south_in(0south_in00),.local_out(0local_out00),.east_out(0east_out00),
.west_out(),.north_out(),.south_out(0south_out00));
router r_$01( .clk(clk), .rst(reset),.local_in(0local_in01),.east_in(0east_in01),.west_in(0west_in01),.north_in(),.south_in(0south_in01),.local_out(0local_out01),.east_out(0east_out01),.west_out(0west_out01),.north_out(),.south_out(0south_out01));
router r_$02( .clk(clk), .rst(reset),.local_in(0local_in02),.east_in(0east_in02),.west_in(0west_in02),.north_in(),.south_in(0south_in02),.local_out(0local_out02),.east_out(0east_out02),.west_out(0west_out02),.north_out(),.south_out(0south_out02));
router r_$03( .clk(clk), .rst(reset),.local_in(0local_in03),.east_in(0east_in03),.west_in(0west_in03),.north_in(),.south_in(0south_in03),.local_out(0local_out03),.east_out(0east_out03),.west_out(0west_out03),.north_out(),.south_out(0south_out03));
router r_$04( .clk(clk), .rst(reset),.local_in(0local_in04),.east_in(),.west_in(0west_in04),.north_in(),
.south_in(0south_in04),.local_out(0local_out04),.east_out(),.west_out(0west_out04),.north_out(),.south_out(0south_out04));
router r_$10( .clk(clk), .rst(reset),.local_in(1local_in10),.east_in(1east_in10),.west_in(),
.north_in(1north_in10),.south_in(1south_in10),.local_out(1local_out10),.east_out(1east_out10),.west_out(),.north_out(1north_out10),.south_out(1south_out10));
router r_$11( .clk(clk), .rst(reset),.local_in(1local_in11),.east_in(1east_in11),.west_in(1west_in11),.north_in(1north_in11),.south_in(1south_in11),.local_out(1local_out11),.east_out(1east_out11),.west_out(1west_out11),.north_out(1north_out11),.south_out(1south_out11));
router r_$12( .clk(clk), .rst(reset),.local_in(1local_in12),.east_in(1east_in12),.west_in(1west_in12),.north_in(1north_in12),.south_in(1south_in12),.local_out(1local_out12),.east_out(1east_out12),.west_out(1west_out12),.north_out(1north_out12),.south_out(1south_out12));
router r_$13( .clk(clk), .rst(reset),.local_in(1local_in13),.east_in(1east_in13),.west_in(1west_in13),.north_in(1north_in13),.south_in(1south_in13),.local_out(1local_out13),.east_out(1east_out13),.west_out(1west_out13),.north_out(1north_out13),.south_out(1south_out13));
router r_$14( .clk(clk), .rst(reset),.local_in(1local_in14),.east_in(),.west_in(1west_in14),
.north_in(1north_in14),.south_in(1south_in14),.local_out(1local_out14),.east_out(),
.west_out(1west_out14),.north_out(1north_out14),.south_out(1south_out14),);
router r_$20( .clk(clk), .rst(reset),.local_in(2local_in20),.east_in(2east_in20),.west_in(),
.north_in(2north_in20),.south_in(2south_in20),.local_out(2local_out20),.east_out(2east_out20),.west_out(),.north_out(2north_out20),.south_out(2south_out20));
router r_$21( .clk(clk), .rst(reset),.local_in(2local_in21),.east_in(2east_in21),.west_in(2west_in21),.north_in(2north_in21),.south_in(2south_in21),.local_out(2local_out21),.east_out(2east_out21),.west_out(2west_out21),.north_out(2north_out21),.south_out(2south_out21));
router r_$22( .clk(clk), .rst(reset),.local_in(2local_in22),.east_in(2east_in22),.west_in(2west_in22),.north_in(2north_in22),.south_in(2south_in22),.local_out(2local_out22),.east_out(2east_out22),.west_out(2west_out22),.north_out(2north_out22),.south_out(2south_out22));
router r_$23( .clk(clk), .rst(reset),.local_in(2local_in23),.east_in(2east_in23),.west_in(2west_in23),.north_in(2north_in23),.south_in(2south_in23),.local_out(2local_out23),.east_out(2east_out23),.west_out(2west_out23),.north_out(2north_out23),.south_out(2south_out23));
router r_$24( .clk(clk), .rst(reset),.local_in(2local_in24),.east_in(),.west_in(2west_in24),
.north_in(2north_in24),.south_in(2south_in24),.local_out(2local_out24),.east_out(),
.west_out(2west_out24),.north_out(2north_out24),.south_out(2south_out24),);
router r_$30( .clk(clk), .rst(reset),.local_in(3local_in30),.east_in(3east_in30),.west_in(),
.north_in(3north_in30),.south_in(3south_in30),.local_out(3local_out30),.east_out(3east_out30),.west_out(),.north_out(3north_out30),.south_out(3south_out30));
router r_$31( .clk(clk), .rst(reset),.local_in(3local_in31),.east_in(3east_in31),.west_in(3west_in31),.north_in(3north_in31),.south_in(3south_in31),.local_out(3local_out31),.east_out(3east_out31),.west_out(3west_out31),.north_out(3north_out31),.south_out(3south_out31));
router r_$32( .clk(clk), .rst(reset),.local_in(3local_in32),.east_in(3east_in32),.west_in(3west_in32),.north_in(3north_in32),.south_in(3south_in32),.local_out(3local_out32),.east_out(3east_out32),.west_out(3west_out32),.north_out(3north_out32),.south_out(3south_out32));
router r_$33( .clk(clk), .rst(reset),.local_in(3local_in33),.east_in(3east_in33),.west_in(3west_in33),.north_in(3north_in33),.south_in(3south_in33),.local_out(3local_out33),.east_out(3east_out33),.west_out(3west_out33),.north_out(3north_out33),.south_out(3south_out33));
router r_$34( .clk(clk), .rst(reset),.local_in(3local_in34),.east_in(),.west_in(3west_in34),
.north_in(3north_in34),.south_in(3south_in34),.local_out(3local_out34),.east_out(),
.west_out(3west_out34),.north_out(3north_out34),.south_out(3south_out34),);
router r_$40( .clk(clk), .rst(reset),.local_in(4local_in40),.east_in(4east_in40),.west_in(),
.north_in(4north_in40),.south_in(),.local_out(4local_out40),.east_out(4east_out40),.west_out(),.north_out(4north_out40),.south_out());
router r_$41( .clk(clk), .rst(reset),.local_in(4local_in41),.east_in(4east_in41),.west_in(4west_in41),.north_in(4north_in41),.south_in(),.local_out(4local_out41),.east_out(4east_out41),.west_out(4west_out41),.north_out(4north_out41),.south_out());
router r_$42( .clk(clk), .rst(reset),.local_in(4local_in42),.east_in(4east_in42),.west_in(4west_in42),.north_in(4north_in42),.south_in(),.local_out(4local_out42),.east_out(4east_out42),.west_out(4west_out42),.north_out(4north_out42),.south_out());
router r_$43( .clk(clk), .rst(reset),.local_in(4local_in43),.east_in(4east_in43),.west_in(4west_in43),.north_in(4north_in43),.south_in(),.local_out(4local_out43),.east_out(4east_out43),.west_out(4west_out43),.north_out(4north_out43),.south_out());
router r_$44( .clk(clk), .rst(reset),.local_in(4local_in44),.east_in(),.west_in(4west_in44),
.north_in(4north_in44),.south_in(),.local_out(4local_out44),.east_out(),.west_out(4west_out44),.north_out(4north_out44),.south_out(),);
always @ ( posedge clk)
begin
0west_in01<=0east_out00;
1north_in10<=0south_out00;
0west_in02<=0east_out01;
0east_in00<=0west_out01;
1north_in11<=0south_out01;
0west_in03<=0east_out02;
0east_in01<=0west_out02;
1north_in12<=0south_out02;
0west_in04<=0east_out03;
0east_in02<=0west_out03;
1north_in13<=0south_out03;
0east_in03<=0west_out04;
1north_in14<=0south_out04;
1west_in11<=east_out10;
0south_in00<=1north_out10;
2north_in20<=1south_out10;
1west_in12<=1east_out11;
1east_in10<=1west_out11;
0south_in01<=1north_out11;
2north_in21<=1south_out11;
1west_in13<=1east_out12;
1east_in11<=1west_out12;
0south_in02<=1north_out12;
2north_in22<=1south_out12;
1west_in14<=1east_out13;
1east_in12<=1west_out13;
0south_in03<=1north_out13;
2north_in23<=1south_out13;
1east_in13<=1west_out14;
0south_in04<=1north_out14;
2north_in24<=1south_out14;
2west_in21<=east_out20;
1south_in10<=2north_out20;
3north_in30<=2south_out20;
2west_in22<=2east_out21;
2east_in20<=2west_out21;
1south_in11<=2north_out21;
3north_in31<=2south_out21;
2west_in23<=2east_out22;
2east_in21<=2west_out22;
1south_in12<=2north_out22;
3north_in32<=2south_out22;
2west_in24<=2east_out23;
2east_in22<=2west_out23;
1south_in13<=2north_out23;
3north_in33<=2south_out23;
2east_in23<=2west_out24;
1south_in14<=2north_out24;
3north_in34<=2south_out24;
3west_in31<=east_out30;
2south_in20<=3north_out30;
4north_in40<=3south_out30;
3west_in32<=3east_out31;
3east_in30<=3west_out31;
2south_in21<=3north_out31;
4north_in41<=3south_out31;
3west_in33<=3east_out32;
3east_in31<=3west_out32;
2south_in22<=3north_out32;
4north_in42<=3south_out32;
3west_in34<=3east_out33;
3east_in32<=3west_out33;
2south_in23<=3north_out33;
4north_in43<=3south_out33;
3east_in33<=3west_out34;
2south_in24<=3north_out34;
4north_in44<=3south_out34;
4west_in41<=4east_out40;
3south_in30<=4north_out40;
4west_in42<=4east_out41;
4east_in40<=4west_out41;
3south_in31<=4north_out41;
4west_in43<=4east_out42;
4east_in41<=4west_out42;
3south_in32<=4north_out42;
4west_in44<=4east_out43;
4east_in42<=4west_out43;
3south_in33<=4north_out43;
4east_in43<=4west_out44;
3south_in34<=4north_out44;
end
endmodule
