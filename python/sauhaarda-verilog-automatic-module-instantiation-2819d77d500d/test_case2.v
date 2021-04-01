function
input junk;
endfunction


module test_case_2 (abc.xyz [8:10] mlk [9:10];);




input                        clk,
                             rst_n;
parameter NUM_AGENT=6;
parameter PIPE_DLY =4;
parameter N = 10,
          M = 20;
input  logic [NUM_AGENT-1:0] req [0:2];

output logic [NUM_AGENT-1:0] gnt [6:8];
output logic [2:0]           arbiter_state;
output                       arb_idle,
                             arb_busy;

bla bla
bla bla
bla bla
bla bla
bla bla
bla bla
bla bla
bla bla
bla bla
bla bla

endmodule
