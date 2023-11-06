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
![image-002](https://github.com/Knightmare-0/System-Verilog/assets/112769624/ee6e60c2-4eaa-493b-952d-8d8a7b1338b1)

### Simvision Output
![image-003](https://github.com/Knightmare-0/System-Verilog/assets/112769624/cee8135a-3e57-42cf-9b19-3cfb8c424c4c)

### Coverage Report
![image-004](https://github.com/Knightmare-0/System-Verilog/assets/112769624/5b706b0f-4177-4948-81fa-1bb645be4bdd)









