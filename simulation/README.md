# Simulation Directory

This directory contains simulation results for all design blocks.

## Structure

Each block should have its own subdirectory:
```
simulation/
├── group-01-dff/
│   ├── dff_tb.log        # Simulation log
│   ├── dff_tb.raw        # Raw simulation data
│   └── plots/            # Waveform plots (PNG/PDF)
├── group-02-adder/
│   └── ...
└── ...
```

## Running Simulations

### Single Block
```bash
cd simulation/your-block
ngspice -b ../../design/testbenches/your_block_tb.spice
```

### All Blocks
```bash
make simulate-all
```

### Using xschem
```bash
# Open testbench in xschem
xschem design/testbenches/your_block_tb.sch

# Click "Netlist" button
# Click "Simulate" button
# Results will be displayed in waveform viewer
```

## Simulation Guidelines

1. **Organized output** - Keep each block's results in separate directories
2. **Document results** - Save important waveforms as PNG/PDF
3. **Clean regularly** - Remove old .raw files: `make clean-sim`
4. **Don't commit .raw** - These files are large (excluded in .gitignore)

## Analyzing Results

### View waveforms
If using gaw (waveform viewer):
```bash
gaw simulation/your-block/your_tb.raw
```

### Extract data
```bash
# View measurements from log
grep "tpd" simulation/your-block/your_tb.log
```

## Simulation Types

### Transient Analysis
Time-domain simulation for digital circuits:
```spice
.tran 10p 1u
```

### DC Analysis
Operating point and DC sweep:
```spice
.dc Vin 0 1.2 0.01
```

### AC Analysis
Frequency response:
```spice
.ac dec 10 1 10G
```

### Corner Analysis
Run simulations across process corners:
- TT (typical-typical)
- SS (slow-slow)
- FF (fast-fast)
- SF (slow-fast)
- FS (fast-slow)

## Troubleshooting

### Convergence Issues
- Add .options: `.options gmin=1e-15 reltol=1e-4`
- Adjust initial conditions: `.ic v(node)=1.2`
- Reduce time step: `.tran 1p 1u`

### Missing Models
- Verify PDK_ROOT is set
- Check .lib statement in testbench
- Ensure model file exists

### Large Output Files
- Limit saved signals: `save v(out1) v(out2)`
- Reduce simulation time
- Use .meas instead of saving all data

## See Also
- [Student Guide - Simulation](../docs/STUDENT_GUIDE.md#phase-2-simulation-week-3-4)
- [ngspice documentation](http://ngspice.sourceforge.net/docs.html)
