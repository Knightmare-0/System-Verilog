
 
program test(arbiter_inter.tb t);

initial 
begin
t.cb.a <= 4'bxxx1;
#50 t.cb.a <= 4'bx1x0;
#10 t.cb.a <= 4'bx010;
#10 t.cb.a <= 4'b1000;
end

initial
begin
#500 $finish;
end

initial
begin
t.rst=0;
#10 t.rst=1;
#10 t.rst=0;
end

initial
begin
#200;
t.cb.a <=4'b0000;
repeat(50) #5 t.cb.a <=t.cb.a + 4'b0001;
end
endprogram


