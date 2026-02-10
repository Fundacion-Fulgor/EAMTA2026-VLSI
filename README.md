# EAMTA2026-VLSI
Repository containing the "Introduction to Very Large Scale Integration Design" course from the 2026 Argentine School for Micro-nano Electronics, Technology and Applications

## Project Overview
This repository contains the design and verification flow for an **8-bit counter** using the IHP SG13G2 130nm PDK. The project is designed for collaborative work with 30 students, where each student or group designs a specific block of the counter.

## Tools Used
- **xschem**: Schematic capture
- **ngspice**: Analog circuit simulation
- **CACE**: Circuit characterization and evaluation
- **KLayout**: Layout design and verification
- **IHP SG13G2 PDK**: 130nm open-source PDK from IHP

## Repository Structure
```
.
├── design/           # Design files
│   ├── blocks/      # Individual student/group blocks
│   ├── schematics/  # xschem schematic files
│   └── testbenches/ # Test circuits
├── simulation/       # ngspice simulation files
├── characterization/ # CACE characterization files
├── layout/          # KLayout layout files
├── scripts/         # Automation scripts
├── tools/           # Tool configurations
└── docs/            # Documentation
```

## Quick Start
See [docs/SETUP.md](docs/SETUP.md) for detailed setup instructions.
See [docs/STUDENT_GUIDE.md](docs/STUDENT_GUIDE.md) for student workflow.
See [docs/DESIGN_SPEC.md](docs/DESIGN_SPEC.md) for the counter specification.

## Design Flow
1. **Schematic Design** (xschem)
2. **Simulation** (ngspice)
3. **Characterization** (CACE)
4. **Layout** (KLayout)
5. **Verification** (LVS/DRC)

## Contributing
Each student/group is assigned a specific block. See [docs/BLOCK_ASSIGNMENTS.md](docs/BLOCK_ASSIGNMENTS.md) for details.
