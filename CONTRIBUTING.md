# Contributing to EAMTA2026-VLSI Project

Thank you for contributing to the 8-bit counter design project!

## Getting Started
1. Read the [SETUP.md](docs/SETUP.md) guide
2. Review your [block assignment](docs/BLOCK_ASSIGNMENTS.md)
3. Follow the [student workflow](docs/STUDENT_GUIDE.md)

## Development Workflow

### 1. Create a Feature Branch
```bash
git checkout -b feature/group-XX-block-name
```

### 2. Work on Your Block
- Create your block directory: `design/blocks/<block-name>/`
- Follow the directory structure template
- Commit regularly with clear messages

### 3. Commit Guidelines
Write clear, descriptive commit messages:
```
Add D flip-flop schematic design

- Implemented master-slave topology
- Added asynchronous reset
- Created symbol for hierarchy
```

### 4. Submit a Pull Request
When your block is ready:
1. Push your feature branch to GitHub
2. Create a Pull Request
3. Request review from instructor/TA
4. Address review comments

## Code Review Process
- All submissions require instructor approval
- Peer reviews are encouraged
- Address feedback promptly
- Keep PRs focused on one block

## Design Standards

### File Naming
- Schematics: `block_name.sch`
- Symbols: `block_name.sym`
- Testbenches: `block_name_tb.sch`
- Layouts: `block_name.gds`

### Signal Naming
- Use lowercase with underscores: `clock_signal`
- Power rails: `VDD`, `VSS`
- Active-high signals: `enable`
- Active-low signals: `enable_n`

### Documentation
- Each block MUST have a README.md
- Include design description
- Document simulation results
- Report characterization data

### Simulation
- All blocks must have testbenches
- Verify functionality across corners
- Document test methodology

## Directory Structure Rules
- Only modify files in YOUR block directory
- Don't commit generated files (see .gitignore)
- Keep schematics in `design/schematics/`
- Keep layouts in `layout/`

## Testing
Before submitting:
- [ ] Schematic simulates correctly
- [ ] Testbench exercises all functionality
- [ ] CACE characterization complete
- [ ] Layout passes DRC
- [ ] Layout passes LVS
- [ ] Documentation complete

## Getting Help
- Check documentation first
- Search existing GitHub issues
- Ask in course forum
- Contact instructor if stuck

## Communication
- Use GitHub issues for technical problems
- Use discussions for questions
- Tag instructors for urgent issues
- Be respectful and professional

## Timeline
Follow the [project timeline](docs/BLOCK_ASSIGNMENTS.md) for deliverable dates.

## Questions?
Contact the course instructor or post in the discussion forum.
