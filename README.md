# CSE 4224 Digital System Design Laboratory  
**Lab 01: Half Adder, Full Adder, and Parallel Adder**

**Institution**: KUET  
**Date**: October 23, 2024

## Overview
In this lab, we learned how to design basic digital arithmetic circuits in Verilog, including a half adder, a full adder, and a parallel adder. These components are essential building blocks in digital systems, particularly for binary arithmetic operations.

### What We Covered
1. **Half Adder**: A simple 1-bit adder that adds two single-bit binary numbers and produces a sum and carry-out.
2. **Full Adder**: A 1-bit adder that adds three single-bit binary numbers (two inputs plus carry-in) and produces a sum and carry-out.
3. **Parallel Adder**: Combines multiple full adders to add multi-bit binary numbers in parallel.

## Basics of Verilog

Verilog is a hardware description language (HDL) used to model digital systems. It allows designers to describe a digital circuit at various levels of abstraction, from the behavioral level down to the gate level.

- **Module Definition**: In Verilog, every design is represented as a module, which encapsulates inputs, outputs, and internal functionality.
- **Data Types**: Verilog includes data types like `wire` (used to connect different parts of the circuit) and `reg` (for storing values).
- **Operators**: Verilog uses bitwise and logical operators for operations on binary values.
- **Time Scale**: The directive `timescale` specifies time units and precision for simulation (`10ps / 1ps` in this example).

## Lab Code

## Half Adder Design

The half_adder module is the basic component for adding two single-bit binary numbers.

```verilog
`timescale 10ps / 1ps
module half_adder (a, b, sum, carry);
	
    input a, b;
    output sum, carry;

    assign sum = a ^ b;
    assign carry = a & b;

endmodule
```

## Full Adder Design

The Full_Adder module takes three inputs: two binary numbers and a carry-in, producing a sum and a carry-out.


```verilog
`timescale 10ps / 1ps

module Full_Adder (x, y, cin, s2, cout); 
	
    input x, y, cin;
    output s2, cout; 
    wire s1, cout1, cout2;

    // Internal half adders to calculate sum and carry
    half_adder h_a(x, y, s1, cout1);
    half_adder h_a2(s1, cin, s2, cout2);
    assign cout = cout1 | cout2;

endmodule
```
### Parallel Adder Design

The `Paraller_Adder` module connects multiple full adders to add four-bit binary numbers.

```verilog
`timescale 10ps / 1ps

module Paraller_Adder ();  
	
    reg a1, a2, a3, a4, b1, b2, b3, b4;
    wire s1, s2, s3, c1, c2, c3;
    wire s, c;

    // Connecting the half adder and full adders to form a parallel adder
    half_adder h_a(a1, b1, s1, c1);
    Full_Adder f_a(a2, b2, c1, s2, c2);
    Full_Adder f_a2(a3, b3, c2, s3, c3);
    Full_Adder f_a3(a4, b4, c3, s, c);

    initial begin
        a1 <= 1; a2 <= 0; a3 <=0; a4 <=1;
        b1 <= 0; b2 <= 0; b3 <=1; b4 <=1;
        #1 $display("c: = %b, s: %b,  s3: = %b, s2: = %b, s1: = %b\n", c, s, s3, s2, s1);
    end

endmodule
```

## Summary

In this lab, we designed and simulated a half adder, a full adder, and a four-bit parallel adder using Verilog. These designs were tested with various input combinations to verify correct behavior. The knowledge of Verilog and these basic arithmetic circuits lays the foundation for more complex digital designs.

Learn More about [Lab 01](Lab01)

---
---