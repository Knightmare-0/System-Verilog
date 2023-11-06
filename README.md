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

### ARBITER WITH 4 BIT INPUT AND 2 BIT OUTPUT


```
DESIGN
A B C D Y1 Y0
x x x 1 1 1
x 1 x 0 0 1
x 0 1 0 1 0
1 0 0 0 0 0
others Y1 Y0
```

### Simvision Output
![image-005](https://github.com/Knightmare-0/System-Verilog/assets/112769624/38533f4e-2627-4eb2-a887-c0b6081e98d0)


### Coverage Report
![image-006](https://github.com/Knightmare-0/System-Verilog/assets/112769624/9b0f9bc2-9b85-4477-8487-ecdc51760517)









