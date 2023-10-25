//DFF_inter.sv
interface Dff_inter(input bit clk);
logic d, reset, set;
logic q;
modport RTL1(input d, reset, set, clk, output q);
modport test(output d, reset, set, clk, input q);
endinterface 

