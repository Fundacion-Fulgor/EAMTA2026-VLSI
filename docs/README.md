# Documentation Index

Welcome to the EAMTA2026-VLSI project documentation!

## Quick Links

### For Students
- 📚 [Student Guide](STUDENT_GUIDE.md) - Complete workflow for students
- 🎯 [Block Assignments](BLOCK_ASSIGNMENTS.md) - See your assigned block
- 📋 [Design Specification](DESIGN_SPEC.md) - Counter requirements
- 🔧 [Setup Guide](SETUP.md) - Install tools and setup environment

### For Instructors
- 👥 [Block Assignments](BLOCK_ASSIGNMENTS.md) - Manage student assignments
- 📊 [Project Timeline](BLOCK_ASSIGNMENTS.md#timeline) - Track progress
- ✅ [Review Checklist](../CONTRIBUTING.md#testing) - PR review criteria

## Project Documents

### Getting Started (Week 0-1)
1. [Setup Guide](SETUP.md) - Install all required tools
2. [Design Specification](DESIGN_SPEC.md) - Understand the project
3. [Block Assignments](BLOCK_ASSIGNMENTS.md) - Check your assignment

### Design Phase (Week 1-10)
4. [Student Guide](STUDENT_GUIDE.md) - Follow the design workflow
5. [Block Template](../design/blocks/README_TEMPLATE.md) - Use for documentation

### Contributing
6. [Contributing Guide](../CONTRIBUTING.md) - How to contribute code
7. [Git Workflow](STUDENT_GUIDE.md#git-workflow) - Version control best practices

## Design Flow Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                     VLSI Design Flow                             │
└─────────────────────────────────────────────────────────────────┘

Week 1-2: Schematic Design
┌──────────────────────┐
│   xschem             │
│   - Create schematic │
│   - Create symbol    │
│   - Add hierarchy    │
└──────────┬───────────┘
           │
Week 3-4: Simulation   ▼
┌──────────────────────┐
│   ngspice            │
│   - Create testbench │
│   - Verify function  │
│   - Corner analysis  │
└──────────┬───────────┘
           │
Week 5-6: Characterization ▼
┌──────────────────────┐
│   CACE               │
│   - Setup parameters │
│   - Run analysis     │
│   - Generate reports │
└──────────┬───────────┘
           │
Week 7-9: Layout       ▼
┌──────────────────────┐
│   KLayout            │
│   - Create layout    │
│   - Run DRC          │
│   - Run LVS          │
└──────────┬───────────┘
           │
Week 10: Integration   ▼
┌──────────────────────┐
│   Git/GitHub         │
│   - Submit PR        │
│   - Code review      │
│   - Integration      │
└──────────────────────┘
```

## Tool Documentation

### xschem (Schematic Editor)
- Configuration: `../tools/xschemrc`
- Official docs: http://repo.hu/projects/xschem/
- Tutorial: See [Student Guide](STUDENT_GUIDE.md#phase-1-schematic-design-week-1-2)

### ngspice (Simulator)
- Official docs: http://ngspice.sourceforge.net/
- Tutorial: See [Student Guide](STUDENT_GUIDE.md#phase-2-simulation-week-3-4)

### CACE (Characterization)
- Template: `../tools/cace_template.yaml`
- Official docs: https://github.com/efabless/cace
- Tutorial: See [Student Guide](STUDENT_GUIDE.md#phase-3-characterization-week-5-6)

### KLayout (Layout Editor)
- Layer file: `../tools/klayout_layers.lyp`
- Official docs: https://www.klayout.de/
- Tutorial: See [Student Guide](STUDENT_GUIDE.md#phase-4-layout-week-7-9)

## PDK Documentation
- **IHP SG13G2**: https://github.com/IHP-GmbH/IHP-Open-PDK
- Technology: 130nm CMOS
- Supply voltage: 1.2V
- Layers: See `../tools/klayout_layers.lyp`

## File Organization

```
EAMTA2026-VLSI/
├── docs/                  ← You are here
│   ├── README.md         ← This file
│   ├── SETUP.md          ← Installation guide
│   ├── DESIGN_SPEC.md    ← Project specification
│   ├── STUDENT_GUIDE.md  ← Student workflow
│   └── BLOCK_ASSIGNMENTS.md  ← Block assignments
│
├── design/               ← Design files
│   ├── blocks/          ← Student blocks (one per group)
│   ├── schematics/      ← xschem files
│   └── testbenches/     ← Test circuits
│
├── simulation/          ← ngspice outputs
├── characterization/    ← CACE files
├── layout/             ← KLayout files
│
├── scripts/            ← Automation scripts
│   ├── setup_env.sh    ← Environment setup
│   ├── run_simulations.sh
│   ├── run_characterization.sh
│   └── verify_layouts.sh
│
├── tools/              ← Tool configurations
│   ├── xschemrc        ← xschem config
│   ├── cace_template.yaml
│   └── klayout_layers.lyp
│
├── Makefile            ← Build automation
├── CONTRIBUTING.md     ← Contribution guide
└── README.md           ← Project overview
```

## Common Tasks

### Running Simulations
```bash
# Single block
cd simulation/<block-name>
ngspice -b ../../design/testbenches/<block>_tb.spice

# All blocks
make simulate-all
```

### Running Characterization
```bash
# Single block
cd characterization/<block-name>
cace <block>.yaml

# All blocks
make characterize-all
```

### Verifying Layout
```bash
# Single block
cd layout/<block-name>
# Run DRC/LVS manually or use script

# All blocks
make verify-layout
```

## Support Resources

### Getting Help
1. Check this documentation
2. Search GitHub issues
3. Ask in course forum
4. Contact instructor

### External Resources
- IHP PDK: https://github.com/IHP-GmbH/IHP-Open-PDK
- xschem examples: http://repo.hu/projects/xschem/xschem_man/
- ngspice manual: http://ngspice.sourceforge.net/docs.html
- KLayout manual: https://www.klayout.de/doc.html

## Troubleshooting
See [SETUP.md - Troubleshooting](SETUP.md#troubleshooting) for common issues.

## Project Status
Check the [GitHub Project Board](../../projects) for current status and timeline.

## License
See the main README.md for license information.

## Contact
- Instructor: [To be added]
- TA: [To be added]
- Course website: [To be added]
