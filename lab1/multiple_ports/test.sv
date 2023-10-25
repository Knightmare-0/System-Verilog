`include "driver.sv"

program test_ff(ff_intf.TEST_MP test_intf);

driver drv_inp;

initial
  begin
            test_intf.rst <= 0;
	#10 test_intf.rst <= 1;
	#10 test_intf.rst <= 0;
  end

  initial
  begin
    	drv_inp = new(test_intf);
  end

initial
begin
repeat(1000) #10
drv_inp.drive_data();
end

initial
begin	
  #500 $finish;	
end

endprogram


