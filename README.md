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
![temp](https://github.com/Knightmare-0/System-Verilog/assets/112769624/f6ef736e-2e41-4328-a940-1fe60ff5fcec)

### Simvision Output
![temp](https://github.com/Knightmare-0/System-Verilog/assets/112769624/6728ae48-fc8d-42ec-91f5-4ecf65b3c9e6)

### Coverage Report
![temp](https://github.com/Knightmare-0/System-Verilog/assets/112769624/4c2bae36-e748-4b4d-aa70-659e9f716471)







