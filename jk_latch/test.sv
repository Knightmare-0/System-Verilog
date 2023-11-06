module test(jk_inter.p2 t1);
initial
begin
t1.reset=0;
t1.j=1;t1.k=0;
#10
t1.reset=1;
t1.j=0;t1.k=1;
#10
t1.reset=0;
t1.j=1;t1.k=0;
#10
t1.j=0;t1.k=0;
#10
t1.j=0;t1.k=1;
#10
t1.j=1;t1.k=0;
#10
t1.j=1;t1.k=1;
#10
t1.j=1'bx; t1.k=1;
#10
$finish;
end 
endmodule
