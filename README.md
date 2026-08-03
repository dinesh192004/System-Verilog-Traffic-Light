# SystemVerilog Traffic Light Controller (FSM)

## Overview
This repository contains a digital implementation of a **Traffic Light Controller** designed in **SystemVerilog**. The system models a Finite State Machine (FSM) that controls traffic signal transitions (`Red` $\rightarrow$ `Green` $\rightarrow$ `Yellow`) using structured sequential and combinational logic blocks.

## Technical Specifications
* HDL:SystemVerilog
* FSM Architecture: 2-Process Model (Separated State Register & Next-State Logic)
* States:
  * `RED` (`2'b10`): Initial reset state / Stop signal
  * `GREEN` (`2'b00`): Go signal
  * `YELLOW` (`2'b01`): Caution / Transition signal
* Inputs:
  * `clk`: System clock signal
  * `rst`: Asynchronous active-low reset
* Outputs: 
  * `lights [2:0]`: 3-bit output vector driving signal indicators

# Key Features
* Enumerated Types (`enum`):** Encoded state variables for clean, human-readable logic and ease of verification.
* Asynchronous Active-Low Reset:** Guarantees predictable system initialization to the `RED` state upon power-up or system override.
* Clean Hardware Inferred Blocks:** Uses `always_ff` for sequential flip-flop inference and `always_comb` to avoid accidental latch generation.
