# Student Guide

## Welcome
This guide will help you contribute to the 8-bit counter design project. Each student or group is responsible for designing, simulating, and laying out a specific block of the counter.

## Getting Started

### 1. Setup Your Environment
Follow the instructions in [SETUP.md](SETUP.md) to install all required tools.

### 2. Check Your Assignment
Review [BLOCK_ASSIGNMENTS.md](BLOCK_ASSIGNMENTS.md) to see which block you're assigned to.

### 3. Understand the Specification
Read [DESIGN_SPEC.md](DESIGN_SPEC.md) to understand the overall counter requirements and your block's specifications.

## Design Workflow

### Phase 1: Schematic Design (Week 1-2)
1. **Create your block directory**:
   ```bash
   cd design/blocks
   mkdir <your-block-name>
   cd <your-block-name>
   ```

2. **Design in xschem**:
   ```bash
   # Start xschem
   xschem
   
   # Create new schematic
   # File → New Schematic
   # Save as: design/schematics/<block-name>.sch
   ```

3. **Create a symbol** for your block:
   - In xschem: Symbol → Make Symbol from Schematic
   - Save as: design/schematics/<block-name>.sym

4. **Best Practices**:
   - Use hierarchy: create sub-blocks if needed
   - Add proper pin labels (input, output, power)
   - Include comments in your schematic
   - Follow naming conventions: use lowercase with underscores

### Phase 2: Simulation (Week 3-4)
1. **Create a testbench**:
   ```bash
   # In xschem, create new schematic
   # Add your block symbol
   # Add stimulus sources (vsource, vpulse)
   # Add .control statements for simulation
   # Save as: design/testbenches/<block-name>_tb.sch
   ```

2. **Run simulation**:
   - In xschem: click "Netlist" then "Simulate"
   - OR export netlist and run ngspice manually:
   ```bash
   cd simulation
   ngspice ../design/testbenches/<block-name>_tb.spice
   ```

3. **Verify functionality**:
   - Check DC operating points
   - Verify transient behavior
   - Test corner cases
   - Document results in your block's README

4. **Generate simulation report**:
   ```bash
   # Save waveforms
   # Export plots as PNG
   # Document in simulation/<block-name>/README.md
   ```

### Phase 3: Characterization (Week 5-6)
1. **Create CACE setup**:
   ```bash
   cd characterization
   mkdir <block-name>
   cd <block-name>
   
   # Create CACE parameter file
   cace-init <block-name>
   ```

2. **Edit CACE configuration**:
   - Define parameters to characterize (delays, power, etc.)
   - Set up corners (TT, SS, FF, SF, FS)
   - Define test conditions

3. **Run characterization**:
   ```bash
   cace <block-name>.txt
   ```

4. **Document results**:
   - Save characterization reports
   - Compare against specifications
   - Update your block documentation

### Phase 4: Layout (Week 7-9)
1. **Start KLayout**:
   ```bash
   klayout -e -nn $PDK_ROOT/sg13g2.lyp
   ```

2. **Create layout**:
   - Use proper layers from IHP SG13G2 PDK
   - Follow design rules
   - Match schematic connectivity

3. **Run DRC**:
   ```bash
   # In KLayout: Tools → DRC
   # OR use command line:
   klayout -b -r $PDK_ROOT/drc/sg13g2.drc -rd input=layout.gds
   ```

4. **Run LVS**:
   ```bash
   # Extract netlist from layout
   # Compare with schematic netlist
   klayout -b -r $PDK_ROOT/lvs/sg13g2.lvs
   ```

### Phase 5: Integration (Week 10)
1. **Submit your block**:
   ```bash
   git add design/blocks/<your-block>
   git commit -m "Add <block-name> design"
   git push origin feature/<your-block>
   ```

2. **Create pull request** on GitHub

3. **Code review**: Address feedback from instructors/peers

## Directory Structure for Your Block
```
design/blocks/<your-block>/
├── README.md              # Your block documentation
├── schematics/
│   ├── <block>.sch       # Main schematic
│   └── <block>.sym       # Symbol
├── testbenches/
│   └── <block>_tb.sch    # Testbench
├── simulation/
│   ├── results/          # Simulation outputs
│   └── plots/            # Waveform plots
├── characterization/
│   ├── <block>.txt       # CACE config
│   └── reports/          # CACE results
└── layout/
    ├── <block>.gds       # Layout file
    ├── drc.log           # DRC results
    └── lvs.log           # LVS results
```

## Deliverables Checklist
- [ ] Schematic design complete
- [ ] Symbol created
- [ ] Testbench implemented
- [ ] Functional simulation passed
- [ ] Corner simulations passed
- [ ] CACE characterization complete
- [ ] Layout created
- [ ] DRC clean
- [ ] LVS clean
- [ ] Documentation complete
- [ ] Pull request submitted

## Git Workflow
1. **Create a feature branch**:
   ```bash
   git checkout -b feature/<your-block-name>
   ```

2. **Commit regularly**:
   ```bash
   git add <files>
   git commit -m "Descriptive message"
   ```

3. **Push to GitHub**:
   ```bash
   git push origin feature/<your-block-name>
   ```

4. **Create Pull Request** on GitHub when ready

## Tips and Best Practices
- Commit early and often
- Write clear commit messages
- Test before committing
- Ask questions early if stuck
- Document your design decisions
- Follow the coding style of existing blocks
- Use meaningful signal names
- Comment complex logic

## Common Issues

### xschem Issues
- **Symbol not found**: Check symbol path in xschemrc
- **Spice error**: Verify model files and PDK path

### ngspice Issues
- **Convergence failure**: Adjust initial conditions or timestep
- **Model not found**: Check .lib statements

### KLayout Issues
- **DRC errors**: Review design rules for IHP SG13G2
- **LVS mismatch**: Check net names and pin connections

## Resources
- IHP SG13G2 PDK: https://github.com/IHP-GmbH/IHP-Open-PDK
- xschem: http://repo.hu/projects/xschem/
- ngspice: http://ngspice.sourceforge.net/
- CACE: https://github.com/efabless/cace
- KLayout: https://www.klayout.de/

## Getting Help
- Check documentation first
- Search existing issues on GitHub
- Ask in course forum/chat
- Contact instructor: [contact info]

## Timeline
| Week | Phase | Activity |
|------|-------|----------|
| 1-2  | Schematic | Design and create symbol |
| 3-4  | Simulation | Testbench and verification |
| 5-6  | Characterization | CACE setup and analysis |
| 7-9  | Layout | KLayout design and verification |
| 10   | Integration | PR submission and review |

Good luck with your design!
