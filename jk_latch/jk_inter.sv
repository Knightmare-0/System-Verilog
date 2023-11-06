interface jk_inter(input bit clk);
logic reset ,j ,k;
logic q ,qb;
modport p1(input j,k,reset,clk,output q,qb);
modport p2(input q,qb,output j,k,reset,clk);

endinterface: jk_inter
