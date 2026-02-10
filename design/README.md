# Design Directory

This directory contains all design-related files for the 8-bit counter project.

## Structure

### blocks/
Individual student/group design blocks. Each subdirectory represents one block assignment.

**Example structure for a block:**
```
blocks/group-01-dff/
├── README.md              # Block documentation
├── schematics/
│   ├── dff.sch           # xschem schematic
│   └── dff.sym           # Symbol file
├── testbenches/
│   └── dff_tb.sch        # Testbench
├── simulation/
│   └── results/          # Simulation outputs
├── characterization/
│   └── dff.yaml          # CACE configuration
└── layout/
    └── dff.gds           # Layout file
```

### schematics/
xschem schematic files (.sch) and symbols (.sym) for all blocks. This is where integrated schematics are stored.

### testbenches/
Testbench circuits for verifying block functionality. Both xschem (.sch) and SPICE (.spice) formats.

## Guidelines

1. **One block per group** - Each group works in their assigned block directory
2. **Use templates** - Copy `blocks/README_TEMPLATE.md` for your block documentation
3. **Naming conventions** - Use lowercase with underscores: `d_flip_flop.sch`
4. **Version control** - Commit regularly with descriptive messages
5. **Documentation** - Every block MUST have a README.md

## Creating a New Block

```bash
# Create block directory
cd design/blocks
mkdir group-XX-block-name

# Copy template
cp README_TEMPLATE.md group-XX-block-name/README.md

# Create subdirectories
cd group-XX-block-name
mkdir schematics testbenches simulation characterization layout

# Edit README
nano README.md
```

## File Types

- `.sch` - xschem schematic files
- `.sym` - xschem symbol files
- `.spice` - SPICE netlist files
- `.gds` - Layout files (stored in layout/)
- `.yaml`/`.txt` - CACE configuration (stored in characterization/)

## See Also
- [Student Guide](../docs/STUDENT_GUIDE.md) - Complete workflow
- [Block Assignments](../docs/BLOCK_ASSIGNMENTS.md) - Your assignment
- [Design Spec](../docs/DESIGN_SPEC.md) - Requirements
