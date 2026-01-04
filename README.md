# 32-bit-ALU
32-bit ALU implemented using Vivado and Logisim


## Overview
This project implements a 32-bit Arithmetic Logic Unit (ALU) designed in Verilog HDL and validated with Logisim.  
The ALU supports a variety of arithmetic and logical operations selected through a 4-bit control input (`SelOp`).  
Functional verification is done using a Verilog testbench and Logisim circuit simulation.

---

## Tools Used
- Vivado (for Verilog simulation and synthesis)
- Logisim (for visual circuit design and validation)

---

## Features and Operations Supported
The ALU performs the following operations based on the `SelOp` input:

| SelOp (binary) | Operation      | Description               |
| -------------- | -------------- | -------------------------|
| `0000`         | NOT            | Bitwise NOT of input A    |
| `0001`         | ADD            | A + B                    |
| `0010`         | SUBTRACT       | A - B                    |
| `0011`         | MULTIPLY       | A * B                    |
| `0100`         | AND            | Bitwise AND of A and B   |
| `0101`         | OR             | Bitwise OR of A and B    |
| `0110`         | XOR            | Bitwise XOR of A and B   |
| `0111`         | RIGHT SHIFT    | Logical right shift A by 1 bit |
| `1000`         | LEFT SHIFT     | Logical left shift A by 1 bit  |
| Others         | DEFAULT        | Output zero               |

---

## Project Structure

32bit-ALU/

├── Verilog/

│   ├── ALU_32bits.v          (Main ALU Verilog code)

│   └── ALU_32bits_tb.v       (Testbench verifying ALU functionality)

├── Logisim/

│   └── 32bitALU.circ         (Logisim circuit file)

├── Screenshots/

│   ├── Rtl_Schematic.png     (RTL schematic generated from Verilog)

│   ├── Simulation_Waveform.png  (Vivado simulation waveform)

│   └── logisim_circuit.png   (Logisim circuit screenshot)

README.md                      (This file, at the repository root)

---
## Key Learnings
- Writing and simulating Verilog for arithmetic and logic operations  
- Designing and validating circuits using Logisim  
- Implementing shift operations and ALU control logic  
- Using Vivado for simulation and RTL schematic generation
