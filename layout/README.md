# Layout Directory

This directory contains layout files and verification results for all design blocks.

## Structure

Each block should have its own subdirectory:
```
layout/
├── group-01-dff/
│   ├── dff.gds           # Layout file (GDSII format)
│   ├── dff.oas           # Optional: OASIS format
│   ├── drc.log           # DRC results
│   ├── drc.lyrdb         # DRC marker database
│   ├── lvs.log           # LVS results
│   ├── lvs.lvsdb         # LVS database
│   └── README.md         # Layout documentation
└── ...
```

## Layout Guidelines

### Design Rules (IHP SG13G2)
Key rules to remember:
- **Minimum metal width**: 0.2µm
- **Minimum metal spacing**: 0.2µm
- **Contact size**: 0.26µm x 0.26µm
- **Poly width**: 0.13µm (minimum gate length)
- **Active area**: Check PDK documentation

### Layer Stack
From bottom to top:
1. Substrate
2. N-well / P-well
3. Active (diffusion)
4. Poly (gate)
5. Contact
6. Metal1
7. Via1
8. Metal2
9. (Additional metal layers)

## Creating Layout in KLayout

### 1. Start KLayout
```bash
# With layer properties file
klayout -e -nn ../tools/klayout_layers.lyp

# With PDK layers
klayout -e -lyp $PDK_ROOT/libs.tech/klayout/sg13g2.lyp
```

### 2. Create New Layout
- File → New Layout
- Set technology: sg13g2
- Set database unit: 0.001µm

### 3. Draw Layout
- Use proper layers from PDK
- Follow design rules
- Add pin labels for LVS
- Create hierarchy if needed

### 4. Save Layout
- File → Save As
- Format: GDS (recommended) or OASIS
- Save to: `layout/your-block/your_block.gds`

## Design Rule Check (DRC)

### Running DRC

#### In KLayout GUI
1. Tools → DRC → Run DRC
2. Select DRC file: `$PDK_ROOT/drc/sg13g2.drc`
3. Click "Run"
4. Review markers in layout

#### Command Line
```bash
cd layout/your-block
klayout -b -r $PDK_ROOT/drc/sg13g2.drc \
    -rd input=your_block.gds \
    -rd report=drc.lyrdb \
    > drc.log 2>&1
```

#### Using Make
```bash
make verify-layout
```

### Fixing DRC Violations
- Review each marker in KLayout
- Understand the violated rule
- Correct the geometry
- Re-run DRC until clean

### Common DRC Errors
1. **Width violation** - Increase wire width
2. **Spacing violation** - Increase spacing between shapes
3. **Overlap violation** - Ensure proper overlap
4. **Missing layer** - Add required enclosure layers

## Layout vs Schematic (LVS)

### Preparing for LVS

1. **Export netlist from schematic**:
```bash
# In xschem: Netlist → Export
# Save as: layout/your-block/your_block_schematic.spice
```

2. **Add pin labels in layout**:
- Use Text layer
- Label must match schematic pin names
- Place at connection points

### Running LVS

#### In KLayout
1. Tools → LVS → Run LVS
2. Select LVS file: `$PDK_ROOT/lvs/sg13g2.lvs`
3. Specify layout and schematic netlists
4. Click "Run"
5. Review comparison database

#### Command Line
```bash
cd layout/your-block
klayout -b -r $PDK_ROOT/lvs/sg13g2.lvs \
    -rd input=your_block.gds \
    -rd schematic=your_block_schematic.spice \
    -rd report=lvs.lvsdb \
    > lvs.log 2>&1
```

### LVS Matching
LVS compares:
- Device counts (transistors, resistors, etc.)
- Net connectivity
- Device parameters (W, L)
- Pin connections

### Fixing LVS Errors

Common issues:
1. **Pin mismatch** - Check label names
2. **Missing device** - Add missing transistor/component
3. **Extra device** - Remove extra shape
4. **Net mismatch** - Fix connectivity
5. **Parameter mismatch** - Adjust W/L to match schematic

## Layout Best Practices

### Power Distribution
- Use wide metal for VDD/VSS
- Create power ring/rails
- Minimize resistance
- Add decoupling capacitors

### Signal Routing
- Use lower metals for local connections
- Use upper metals for long runs
- Avoid routing over active areas
- Minimize parasitic capacitance

### Hierarchy
- Use cells for repeated structures
- Flatten only when necessary
- Maintain consistent naming

### Verification
- Run DRC frequently during design
- Run LVS early and often
- Check each hierarchy level
- Verify after any changes

## Parasitic Extraction

After clean LVS, extract parasitics:
```bash
# Using KLayout
klayout -b -r extraction_script.rb \
    -rd input=your_block.gds \
    -rd output=your_block_extracted.spice
```

Re-simulate with extracted netlist to verify timing.

## Documentation

Each layout should include:
- Screenshot of complete layout
- Area calculation
- DRC status (clean/violations)
- LVS status (matched/mismatched)
- Any special considerations

## Troubleshooting

### KLayout Issues
- **Can't see layers**: Load correct layer properties file
- **Slow performance**: Reduce visible layers, use hierarchy
- **DRC won't run**: Check PDK_ROOT path

### DRC Issues
- **Too many errors**: Start with simple shapes, verify incrementally
- **Unclear rules**: Consult PDK design manual

### LVS Issues
- **No match**: Verify pin names first
- **Device mismatch**: Check transistor W/L values
- **Net error**: Use netlist browser to trace connections

## See Also
- [Student Guide - Layout](../docs/STUDENT_GUIDE.md#phase-4-layout-week-7-9)
- [KLayout Documentation](https://www.klayout.de/doc.html)
- [IHP SG13G2 Design Manual](https://github.com/IHP-GmbH/IHP-Open-PDK)
