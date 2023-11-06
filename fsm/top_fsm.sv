`include "fsm.v"
`include "inter_fsm.sv"
`include "test_fsm.sv"


module top;

bit clk;

always #5 clk=~clk;

inter_fsm i1(clk);

tb_fsm TBench(i1);

fsm DUT(.clk(clk), .x(i1.x), .z(i1.z), .reset(i1.reset),.d(i1.d));

initial

begin

$dumpfile("fsm123.vcd");

$dumpvars;

end

endmodule
