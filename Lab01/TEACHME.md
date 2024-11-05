# Lab 01: Introduction to Verilog basics and Implementation of Half Adder, Full Adder, and Parallel Adder

## Overview

Verilog HDL (Hardware Description Language) is a language used to design and describe digital systems, including computers or components of computers. This language allows engineers to model hardware circuits at various abstraction levels, making it suitable for complex digital system design.

### Popular HDLs
The most widely used HDLs are:
- **VHDL** (Very High-Speed Integrated Circuit HDL)
- **Verilog**

Verilog programming is similar to C, while VHDL has more in common with Pascal or Ada. Verilog is also an IEEE standard.

## Levels of Description in Verilog

Verilog provides several levels of circuit description:

1. **Switch Level**:  
   - This level describes the circuit at the lowest level, using wires, resistors, and transistors on an integrated circuit (IC) chip.

2. **Gate (Structural) Level**:  
   - At this level, circuits are represented as logical gates, flip-flops, and their interconnections. This level resembles a schematic view of the circuit.

3. **RTL (Register-Transfer Level)**:  
   - The RTL level focuses on registers and the transfer of data between registers, emphasizing data flow through the circuit.

4. **Behavioral (Algorithmic) Level**:  
   - This high-level abstraction describes algorithms without specific hardware details, similar to a software program. It’s the easiest to write and debug but is generally not synthesizable.
5. **Register Transfer Level**:
    - synthesizable
    - Uses the concept of registers (a set of flipflops) with combinational logic between them
6. **Structural level**
    - Very easy to synthesize
    - A text based schematic entry system
  

## Why Use HDL?

For large digital systems with millions of transistors, gate-level design becomes unmanageable. HDLs provide the tools to describe, test, and synthesize large designs. They are essential for designing modern digital circuits due to their flexibility and abstraction.

## Verilog Language Basics

### Modules

In Verilog, each component is represented as a `module`, similar to how functions are defined in C. Modules encapsulate circuit functionality and interact with other modules through defined inputs and outputs.

### Keywords and Syntax

- **Keywords**: Verilog has reserved keywords like `module`, `input`, `output`, and `assign`, which must be lowercase.
- **Case Sensitivity**: Verilog is case-sensitive, meaning `Variable` and `variable` would be treated as distinct identifiers.
- **Operators**:
  - **Arithmetic**: `+`, `-`, `*`, `/`
  - **Binary**: `&`, `|`, `^`
  - **Shift**: `<<`, `>>`
  - **Logical**: `&&`, `||`

### Identifiers and Comments

Identifiers, which can be up to 1024 characters long, represent variables and modules. Verilog comments follow C-style syntax:
- Single-line comments: `// This is a comment`
- Multi-line comments: `/* This is a multi-line comment */`

### Number Representation

Verilog numbers can be specified using a format that includes size and base:
- `<size><base format><number>`
  - **`<size>`**: Number of bits (optional).
  - **`<base format>`**: A character `'` followed by `b` (binary), `d` (decimal), `o` (octal), or `h` (hexadecimal).
  - **`<number>`**: The actual number value.

#### Examples:
- `549` - Decimal
- `o765` - Octal
- `'h8FF` - Hexadecimal
- `4'b11` - 4-bit binary (`0011`)
- `3'b10x` - 3-bit binary with an unknown bit
- `5'd3` - 5-bit decimal

- `-4'b11` - Two’s complement of `0011` (`1101`)

## Data Types

- **Wires (`wire`)**: Represent physical connections but do not store values.
- **Registers (`reg`)**: Store values and are initialized to `0` at the simulation start.
  
Registers and wires can have the following values:
  - `0` - Logical zero or false
  - `1` - Logical one or true
  - `x` - Unknown
  - `z` - High impedance (tri-state gate)

## Verilog Operators

### Boolean Operators

Boolean operators in Verilog include **Bitwise**, **Reduction**, and **Logical** operators, each performing different operations on vectors or single bits.

#### Bitwise Operators
- Perform bit-oriented operations on vectors.
- Examples:
  - `~(4'b0101)` = `{~0, ~1, ~0, ~1} = 4'b1010`
  - `4'b0101 & 4'b0011 = {0&0, 1&0, 0&1, 1&1} = 4'b0001`

| Bitwise   | Description |
|-----------|-------------|
| `~a`      | NOT        |
| `a & b`   | AND        |
| `a | b`   | OR         |
| `a ^ b`   | XOR        |
| `a ~^ b` or `a ^~ b` | XNOR |

#### Reduction Operators
- Act on each bit of a single input vector.
- Example:
  - `& (4'b0101) = 0 & 1 & 0 & 1 = 1'b0`

| Reduction | Description |
|-----------|-------------|
| `&a`      | AND         |
| `~&a`     | NAND        |
| `|a`      | OR          |
| `~|a`     | NOR         |
| `^a`      | XOR         |
| `~^a` or `^~a` | XNOR   |

#### Logical Operators
- Return one-bit (true/false) results.
- Example:
  - `!(4'b0101) = 1'b0`

| Logical   | Description |
|-----------|-------------|
| `!a`      | NOT         |
| `a && b`  | AND         |
| `a || b`  | OR          |
| `a == b`  | Equality    |
| `a != b`  | Inequality  |
| `a === b` | Case equality |
| `a !== b` | Case inequality |

### Other Operators

#### Conditional Operator
- The conditional operator is used in the format `a ? b : c`, meaning "if a then b else c".

#### Relational Operators
- Used for comparing values.

| Relational | Description           |
|------------|-----------------------|
| `a > b`    | Greater than          |
| `a >= b`   | Greater than or equal |
| `a < b`    | Less than             |
| `a <= b`   | Less than or equal    |

#### Arithmetic Operators
- Perform mathematical operations.

| Arithmetic       | Description              |
|------------------|--------------------------|
| `-a`             | Negate                   |
| `a + b`          | Add                      |
| `a - b`          | Subtract                 |
| `a * b`          | Multiply                 |
| `a / b`          | Divide                   |
| `a % b`          | Modulus                  |
| `a ** b`         | Exponentiate             |
| `a << b`         | Logical left shift       |
| `a >> b`         | Logical right shift      |
| `a <<< b`        | Arithmetic left shift    |
| `a >>> b`        | Arithmetic right shift   |

Each operator category serves specific functions and contributes to the flexibility and power of Verilog for digital circuit design.

### \# Operator
- \# operator that can have many different meanings depending 
on the context of where it is being used . 

- Normally, # is used to represent a delay and the expression 
that follows it is the amount of delay. 

- Again you need to see the context to know if 1 represents 1 nanosecond, 
1 second, or something else.


## Program Structure

Verilog programs are organized as modules, which can be defined and connected as building blocks of a digital system.

```verilog
module <module name> (<port list>);
<declarations>
<module items>
endmodule

```
| Arithmetic       | Description                                     |
|------------------|-------------------------------------------------|
| <module name\>   | is an identifier that uniquely names the module.|
| <port list\>     | is a list of input, inout and output ports which are used to connect to other modules.|
| <declarations\>  | section specifies data objects as registers, memories, and wires as wells as procedural constructs such as functions and tasks |
| <module items\>  | may be initial constructs, always constructs, continuous assignments or instances of modules|

### Example: NAND Gate Module

```verilog
module NAND_Gate (input A, input B, output Y);
    assign Y = ~(A & B);
endmodule
```

## Instantiating Modules

Modules can be instantiated within other modules, enabling hierarchical design. An instance of a module is created with a unique name and specified ports.
```verilog
<module name> <instance name> (<port list>);
```
### Continuous vs. Procedural Assignments

- **Continuous Assignment:** Used for combinational logic and defined with the `assign` statement.
- **Procedural Assignment:** Used in `always` blocks for sequential logic.

### Events

Events in Verilog control the execution of procedural statements based on changes in input signals. For example:

```verilog
always @(posedge clk) begin
    Q <= D;
end
```

This assigns the value of D to Q on the positive edge of the clock signal.

### Register sizes and assignments

`reg [0:7] A, B; `
- A and B are 8-bit wide with most significant bit as oth bit

`wire [0:3] Dataout;`
- Dataout is a 4-bit wide 

`reg [7:0] C;`
- C is a 8-bit register with most significant bit as the 8th bit

#### Assignments and concatenations
```verilog
A = 8'b01011010;
B = {A[0:3] | A[4:7], 4'b0000};
```
- B is set to the first four bits of A bitwise or-ed with the last four bits of A
and then concatenated with 0000. B now holds a value of 11110000.
- {} brackets means the bits of the two or more arguments separated by
commas are concatenated together.

### Control constructs
```verilog
if (A == 4)
  begin
    B = 2;
  end
else if (A == 2)
  begin
    B = 1;
  end
else
  begin
    B = 4;
  end
```
```verilog
case (<expression>)
  <value1>:
    begin
    <statement>;
    end
  <value2>:
    begin
    <statement>;
    end
  Default:
    <statement>;
endcase
```
### Control statement examples
#### 1-bit 2-to-1 multiplexer
```verilog
module mux1bit2to1(a, b, s, out);
input a, b, s;
output out;
  assign out = (~s & a) | (s & b);
endmodule
```
Another way to describe

```verilog
module mux1bit2to1(a, b, s, out);
input a, b, s;
output out;
reg out; // used in procedural statement
always @ (s or a or b)
  if (s == 0) out = a;
  else out = b;
endmodule
```
### Blocking/Non-blocking procedural assignments
**Blocking assignment statement** (= operator) acts much like in traditional programming languages
- The whole statement is done before control passes on to the next statement.

**Non-blocking** (<= operator)
Evaluates all the right-hand sides for the current time unit and assigns the left-hand sides at the end of the time unit.

#### Example: During every clock cycle
A is ahead of C by 1, 
B is same as D

```verilog
// testing blocking and non-blocking
// assignment
module blocking(Clk, A, B);
input Clk;
output [7:0] A, B;

reg [7:0] A, B;
// as these will be used in
// procedural blocks

reg [7:0] C, D; // two internal registers

  always @(posedge Clk) begin
  // blocking procedural
  // assignment
  C = C + 1; A = C + 1;
  
  // non-blocking procedural
  // assignment
  D <= D + 1; B <= D + 1;
  
end
endmodule
```
### Some tips
- Declare ALL variables
An undeclared variable is treated as a wire!
- Declare one variable (especially input/output) per line
  - Provide comments for each of those variables
  - It will be helpful when you design complex modules
  

