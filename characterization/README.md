# Characterization Directory

This directory contains CACE characterization files and results for all design blocks.

## Structure

Each block should have its own subdirectory:
```
characterization/
├── group-01-dff/
│   ├── dff.yaml          # CACE configuration
│   ├── reports/          # Characterization reports
│   │   ├── dff_report.html
│   │   └── dff_results.csv
│   └── templates/        # Simulation templates
│       ├── timing.spice
│       └── power.spice
└── ...
```

## CACE Overview

CACE (Circuit Automatic Characterization Engine) automates the extraction of circuit parameters across corners and conditions.

## Setting Up CACE

### 1. Create Configuration
```bash
cd characterization
mkdir your-block
cd your-block

# Copy template
cp ../../tools/cace_template.yaml your_block.yaml

# Edit configuration
nano your_block.yaml
```

### 2. Define Parameters
Edit your YAML file to specify:
- Input/output pins
- Parameters to measure (timing, power, etc.)
- Corners and conditions
- Simulation templates

### 3. Create Templates
Create SPICE templates for different measurement types:
- `timing.spice` - Delay measurements
- `power.spice` - Power consumption
- `noise.spice` - Noise margins

## Running CACE

### Single Block
```bash
cd characterization/your-block
cace your_block.yaml
```

### All Blocks
```bash
make characterize-all
```

## Parameters to Characterize

### Timing Parameters
- **tpd** - Propagation delay
- **tsu** - Setup time
- **th** - Hold time
- **tclk-q** - Clock-to-output delay

### Power Parameters
- **Static power** - Leakage current
- **Dynamic power** - Switching power
- **Peak power** - Maximum instantaneous power

### Electrical Parameters
- **VOH** - Output high voltage
- **VOL** - Output low voltage
- **IIH** - Input high current
- **IIL** - Input low current

## Configuration Example

```yaml
name: d_flip_flop
description: D Flip-Flop with async reset
PDK: sg13g2

pins:
  - name: VDD
    type: power
    voltage: 1.2
  - name: VSS
    type: ground
  - name: D
    type: input
  - name: CLK
    type: input
  - name: Q
    type: output

parameters:
  - name: tpd_clk_q
    description: "CLK to Q delay"
    unit: ps
    spec:
      typical:
        min: 0
        max: 1000
    corners:
      - tt
      - ss
      - ff
```

## Analysis Corners

### Process Corners
- **TT** - Typical process, 25°C, 1.2V
- **SS** - Slow process, 125°C, 1.14V
- **FF** - Fast process, -40°C, 1.26V
- **SF** - Slow NMOS, Fast PMOS
- **FS** - Fast NMOS, Slow PMOS

### Temperature Range
- Cold: -40°C
- Room: 25°C
- Hot: 125°C

### Voltage Range
- Min: 1.14V (VDD - 5%)
- Typ: 1.2V
- Max: 1.26V (VDD + 5%)

## Interpreting Results

CACE generates:
1. **HTML Report** - Visual summary with graphs
2. **CSV Data** - Raw measurement data
3. **Pass/Fail Status** - Comparison against specs

### Reading Reports
- Green: Parameter meets specification
- Yellow: Close to limit
- Red: Fails specification

## Troubleshooting

### CACE Not Found
```bash
pip install cace
# or
pip install --user cace
```

### Simulation Failures
- Check SPICE netlist syntax
- Verify model paths
- Review simulation logs in block directory

### Incorrect Results
- Verify measurement statements
- Check corner definitions
- Ensure proper stimulus in templates

## Best Practices

1. **Start simple** - Characterize basic parameters first
2. **Verify corners** - Ensure worst-case conditions are covered
3. **Document specs** - Clearly define min/max/typical values
4. **Automate** - Use CACE instead of manual measurements
5. **Compare designs** - Use results to optimize your circuit

## See Also
- [Student Guide - Characterization](../docs/STUDENT_GUIDE.md#phase-3-characterization-week-5-6)
- [CACE Template](../tools/cace_template.yaml)
- [CACE Documentation](https://github.com/efabless/cace)
