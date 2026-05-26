# Hardware Modelling Suite — RTL Design Practice

Collection of RTL design and verification exercises focused on developing strong digital hardware design fundamentals using Verilog HDL.

This repository contains multiple self-implemented RTL modules covering:
- combinational logic
- sequential logic
- FSM design
- counters
- arithmetic circuits
- memory elements
- pipeline-oriented datapath blocks

All modules were verified using simulation testbenches and waveform analysis.

---

# Objectives

The primary goals of this repository are:

- Build strong RTL design fundamentals
- Practice synthesizable Verilog coding
- Develop verification and debugging skills
- Understand sequential and combinational hardware behavior
- Gain familiarity with simulation-driven hardware development workflows

---

# Included RTL Modules

## Arithmetic Circuits
- Half Adder
- Full Adder
- Ripple Carry Adder
- Carry Lookahead Adder
- Parameterized Adders

---

## Sequential Logic
- D Flip-Flop
- Shift Registers
- Registers
- Counters
- Synchronous / Asynchronous Reset Logic

---

## Finite State Machines (FSMs)
- Moore FSM
- Mealy FSM
- Sequence Detectors
- Control FSM Implementations

---

## Pipeline & Datapath Practice
- Pipeline registers
- Basic datapath propagation logic
- Register staging concepts

---

## Memory Elements
- Simple RAM modules
- Register File practice
- Memory behavioral models

---

# Verification Methodology

All modules were verified using:
- custom Verilog testbenches
- simulation-based validation
- GTKWave waveform inspection

Verification included:
- functional correctness
- edge-case validation
- reset behavior checking
- sequential timing observation
- state transition validation

---

# Repository Structure

Hardware_Modelling_Suite/
│
├── rtl/
│   ├── adders/
│   ├── fsm/
│   ├── counters/
│   ├── registers/
│   ├── memories/
│   └── pipeline/
│
├── tb/
│   ├── adder_tb/
│   ├── fsm_tb/
│   ├── counter_tb/
│   └── memory_tb/
│
├── docs/
│   ├── waveforms/
│   ├── rtl_diagrams/
│   └── notes/
│
└── results/
    └── gtkwave_outputs/
