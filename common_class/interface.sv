interface inter(input bit clk);
logic rst ;
logic s,r;
logic j,k; 
logic d,t;
logic q;

clocking cb @ (posedge clk);
default input #2ns output #3ns;
input q;
output s,r,j,k,d,t;
endclocking

modport TB(clocking cb, output rst);

endinterface 

