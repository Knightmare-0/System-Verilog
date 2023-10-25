module test(count_inter.p2 t1);

initial
begin
t1.rst=0;
#10
t1.rst=1;
#10
t1.rst=0;
end 

initial
begin
#500;
$finish;
end



endmodule
