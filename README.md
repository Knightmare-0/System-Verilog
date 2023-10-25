# System-Verilog Verification for Basic Designs
### Counter Testbench

```
//test.sv
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
```
### Simulation Results
![counter_sim](https://github.com/Knightmare-0/System-Verilog/assets/112769624/e53debf8-7b2c-458e-90b8-9868439d9928)
