
# Ternary Content Addressable Memory (TCAM) – ASIC Design

## Overview
This repository contains the complete RTL design and documentation for a **Ternary Content Addressable Memory (TCAM)** implemented using a full ASIC design flow.  
The project demonstrates front-end and back-end VLSI stages including RTL design, simulation, synthesis, DFT, physical design, STA, and GDSII generation.

TCAM enables high-speed parallel search operations with ternary logic (0, 1, X) and is widely used in networking applications such as routing tables, firewalls, and packet classification.

## Features
- Parameterized TCAM RTL design (width & depth configurable)
- Support for ternary matching using mask bits
- Comprehensive testbench
- Industry-standard ASIC flow using Cadence tools

## Tools Used
- Verilog HDL
- Cadence NC Launch (Simulation)
- Cadence IMC (Code Coverage)
- Cadence Genus (Synthesis & Linting)
- Cadence Modus (DFT & ATPG)
- Cadence Conformal (LEC)
- Cadence Innovus (Physical Design)
- Cadence Tempus (STA)

## Repository Structure
```
├── README.md
├── rtl/
│   └── tcam.v
└── tb/
    └── tcam_tb.v
```

## How to Run (Simulation)
```bash
ncverilog rtl/tcam.v tb/tcam_tb.v -access +rwc -coverage all -gui
```

## License
This project is intended for academic and educational use.
