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
├── tb/
│   └── tcam_tb.v
└── outputs/
    ├── Area Report.png
    ├── ATPG.png
    ├── Clock tree synthesis.png
    ├── Code Coverage.png
    ├── Diagnosis.png
    ├── Floor planning.png
    ├── Functional simulation.png
    ├── Gate Report.png
    ├── GDSII.png
    ├── Genus.png
    ├── Global Design checks.png
    ├── Linting.png
    ├── Logical Equivalence checking1.png
    ├── Logical Equivalence checking2.png
    ├── Placement1.png
    ├── Placement2.png
    ├── Power planning.png
    ├── Power Report.png
    ├── Schematic after DFT.png
    ├── Schematic with buffers.png
    ├── Schematics.png
    ├── Source code.png
    ├── Static Timing Analysis.png
    ├── Timing Report.png
    └── Verify DRC.png
```

## Outputs
The `outputs/` directory contains screenshots and reports from various stages of the ASIC design flow:

### Simulation & Verification
- **Functional simulation.png** - Functional verification results
- **Code Coverage.png** - Code coverage analysis
- **Linting.png** - Linting results

### Synthesis
- **Genus.png** - Synthesis tool interface
- **Gate Report.png** - Gate-level netlist report
- **Schematics.png** - Synthesized schematics
- **Schematic with buffers.png** - Schematic with buffer insertion
- **Source code.png** - Source code view

### DFT (Design for Test)
- **Schematic after DFT.png** - Post-DFT schematic
- **ATPG.png** - Automatic Test Pattern Generation results
- **Diagnosis.png** - Test diagnosis results

### Physical Design
- **Floor planning.png** - Floorplan layout
- **Power planning.png** - Power grid planning
- **Placement1.png** - Cell placement view 1
- **Placement2.png** - Cell placement view 2
- **Clock tree synthesis.png** - Clock tree structure

### Analysis & Verification
- **Area Report.png** - Area utilization report
- **Power Report.png** - Power consumption analysis
- **Timing Report.png** - Static timing analysis results
- **Static Timing Analysis.png** - STA tool interface
- **Logical Equivalence checking1.png** - LEC results view 1
- **Logical Equivalence checking2.png** - LEC results view 2
- **Global Design checks.png** - Design rule checks
- **Verify DRC.png** - Design rule checking results
- **GDSII.png** - Final GDSII file generation

## How to Run (Simulation)
```bash
ncverilog rtl/tcam.v tb/tcam_tb.v -access +rwc -coverage all -gui
```

## License
This project is intended for academic and educational use.
