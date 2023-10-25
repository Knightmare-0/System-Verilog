interface usr_inter(input bit clk);
logic rst;
logic [3:0] pout;
logic [3:0] pin; 
logic s0,s1,sin,sout;

clocking cb @ (posedge clk);
default input #2ns output #3ns;
input pout,sout;
output s0,s1,sin,pin;
endclocking

modport TB(clocking cb, output rst);

endinterface :usr_inter

