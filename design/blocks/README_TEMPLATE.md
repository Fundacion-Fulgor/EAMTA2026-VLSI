# Example Block: D Flip-Flop

This is an example block structure to demonstrate the organization and deliverables for each student/group.

## Block Specification
- **Type**: D Flip-Flop with asynchronous reset
- **Inputs**: D (data), CLK (clock), RST (reset)
- **Outputs**: Q (output), Qb (inverted output)

## Directory Structure
```
dff_example/
├── README.md              # This file
├── schematics/
│   ├── dff.sch           # Main schematic
│   └── dff.sym           # Symbol for hierarchy
├── testbenches/
│   └── dff_tb.sch        # Testbench
├── simulation/
│   ├── results/          # Simulation outputs
│   └── plots/            # Waveform plots
├── characterization/
│   ├── dff.yaml          # CACE config
│   └── reports/          # CACE results
└── layout/
    ├── dff.gds           # Layout file
    ├── drc.log           # DRC results
    └── lvs.log           # LVS results
```

## Design Description
[Describe your design approach, circuit topology, sizing decisions, etc.]

## Simulation Results
[Include simulation waveforms and verify correct functionality]

## Characterization Results
| Parameter | Specification | Measured (TT) | Status |
|-----------|---------------|---------------|--------|
| tpd (CLK->Q) | < 2ns | TBD | - |
| tsu (D->CLK) | > 100ps | TBD | - |
| th (D->CLK) | > 50ps | TBD | - |
| Static Power | < 1uW | TBD | - |

## Layout
[Include layout screenshot and DRC/LVS status]

## Authors
- Student Name(s)
- Group Number

## Version History
- v1.0: Initial design
- v1.1: Fixed timing issue
- v2.0: Layout complete
