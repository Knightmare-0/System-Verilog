`include "driver.sv"
program test(inter.TB T3);

driver_jk djk;
driver_sr dsr;
driver_d dd;
driver_t dt;

initial
begin
T3.rst=0;
#15 T3.rst=1;
#10 T3.rst=0;
end


initial
begin
djk = new(T3);
repeat(1000)@(T3.cb)
djk.drive_data_jk(); 

end

initial
begin
dsr = new(T3);
repeat(1000)@(T3.cb)
dsr.drive_data_sr(); 

end

initial
begin
dd = new(T3);
repeat(1000)@(T3.cb)
dd.drive_data_d(); 

end

initial
begin
dt = new(T3);
repeat(1000)@(T3.cb)
dt.drive_data_t(); 

end

endprogram
