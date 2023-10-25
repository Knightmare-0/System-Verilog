interface arbiter_inter(input bit clk);
logic [3:0] a;
logic rst;
logic [1:0] y;

clocking cb @(posedge clk);
default input #1ns output #2ns;
output a;
input y;
endclocking


modport tb(clocking cb,output rst);

endinterface : arbiter_inter
