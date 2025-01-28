# Full Adder in Verilog HDL

This project demonstrates the design and simulation of a **Full Adder** using Verilog HDL. The Full Adder is implemented structurally using two Half Adders and includes a comprehensive testbench to verify its functionality across all possible 3-bit input combinations.

---

## Project Overview

A Full Adder is a fundamental building block in digital electronics used to perform binary addition. It takes three inputs:
- **A**: First input bit
- **B**: Second input bit
- **Cin**: Carry input bit from the previous addition

And produces two outputs:
- **SUM**: Sum of the input bits
- **CARRY**: Carry output to the next higher bit.

This design uses two **Half Adders** to calculate the **SUM** and **CARRY** outputs efficiently.

---

## Project Structure

The project includes the following files:

1. **`full_adder.v`**  
   Contains the Verilog code for the Full Adder module.
   
2. **`half_adder.v`**  
   Contains the Verilog code for the Half Adder module, used in the Full Adder design.
   
3. **`full_adder_tb.v`**  
   Contains the Verilog testbench to verify the Full Adder functionality.

---

## Design Details

### Full Adder Implementation
The Full Adder is designed using the following components:
- **Half Adder**: A simple combinational circuit that calculates the sum and carry for two input bits.  
  The Half Adder takes two inputs (**A**, **B**) and produces:
  - **SUM** = A XOR B  
  - **CARRY** = A AND B

The Full Adder implementation consists of:
1. First Half Adder:
   - Inputs: **A**, **B**
   - Outputs: **SUM1**, **CARRY1**
2. Second Half Adder:
   - Inputs: **SUM1**, **Cin**
   - Outputs: **SUM**, **CARRY2**
3. Final CARRY:
   - **CARRY** = **CARRY1** OR **CARRY2**

### Truth Table for Full Adder

| **A** | **B** | **Cin** | **SUM** | **CARRY** |
|-------|-------|---------|---------|-----------|
|   0   |   0   |    0    |    0    |     0     |
|   0   |   0   |    1    |    1    |     0     |
|   0   |   1   |    0    |    1    |     0     |
|   0   |   1   |    1    |    0    |     1     |
|   1   |   0   |    0    |    1    |     0     |
|   1   |   0   |    1    |    0    |     1     |
|   1   |   1   |    0    |    0    |     1     |
|   1   |   1   |    1    |    1    |     1     |

---

## Simulation Results

The Full Adder module was tested using a comprehensive testbench. The testbench iterates through all 3-bit input combinations (`A`, `B`, `Cin`) and verifies the outputs (`SUM`, `CARRY`).

### Sample Simulation Output:

0 0 0   |  0   0 0 0 1   |  1   0 0 1 0   |  1   0 0 1 1   |  0   1 1 0 0   |  1   0 1 0 1   |  0   1 1 1 0   |  0   1 1 1 1   |  1   1

---

## How to Run

### Prerequisites:
- Verilog simulation tool (e.g., **ModelSim**, **Vivado**, **Xilinx ISE**)

### Steps:
1. Clone this repository:
   ```bash
   git clone https://github.com/iamnarenkarthick/Full_Adder_Verilog.git
