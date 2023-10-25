interface inter_fsm(input bit clk);

logic reset,x;

logic d,z;

clocking cb@(posedge clk);

default input #2ns output #3ns;

input z,d;

output x;

endclocking

modport TB(clocking cb,output reset);

endinterface
