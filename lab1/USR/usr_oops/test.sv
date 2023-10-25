`include "driver1.sv"
program test(usr_inter.TB T3);

driver1 drv;

initial
begin
T3.rst=0;
#15 T3.rst=1;
#10 T3.rst=0;
end


initial
begin
drv = new(T3);
repeat(1000)@(T3.cb)
drv.drive_data(); 

end


endprogram
