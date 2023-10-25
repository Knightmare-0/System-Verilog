`include "driver_fsm.sv"

program tb_fsm(inter_fsm.TB T3);

driver drv_fsm;

initial

begin
    T3.reset=0;
#10 T3.reset=1;
#10 T3.reset=0;
end

initial
begin
drv_fsm=new(T3);
repeat(100)@(T3.cb)
drv_fsm.drive_data(); 
end


initial
begin
#1000
$finish;
end


endprogram
