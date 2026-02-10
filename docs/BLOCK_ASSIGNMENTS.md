# Block Assignments

## Overview
The 8-bit counter is decomposed into several blocks. Each student or group is assigned one or more blocks to design, simulate, characterize, and layout.

## Block List

### Core Logic Blocks

#### 1. D Flip-Flop (4 groups, 2 students each)
**Groups**: Group 1-4
**Description**: Design a positive edge-triggered D flip-flop with asynchronous reset.
**Specifications**:
- Inputs: D, CLK, RST
- Output: Q, Q̄
- Technology: Standard cell using IHP SG13G2
**Difficulty**: ⭐⭐

#### 2. Half Adder (4 groups, 2 students each)
**Groups**: Group 5-8
**Description**: Design a half adder for the counter logic.
**Specifications**:
- Inputs: A, B
- Outputs: SUM, CARRY
- Optimized for speed
**Difficulty**: ⭐

#### 3. Full Adder (2 groups, 2 students each)
**Groups**: Group 9-10
**Description**: Design a full adder for carry propagation.
**Specifications**:
- Inputs: A, B, CIN
- Outputs: SUM, COUT
- Optimized for speed
**Difficulty**: ⭐⭐

### Support Blocks

#### 4. Clock Buffer Tree (2 groups, 2 students each)
**Groups**: Group 11-12
**Description**: Design a balanced clock distribution network.
**Specifications**:
- Input: CLK
- Outputs: CLK[7:0] (8 buffered clock signals)
- Equal delay to all outputs
- Low skew (<50ps)
**Difficulty**: ⭐⭐⭐

#### 5. Reset Synchronizer (1 group, 2 students)
**Groups**: Group 13
**Description**: Design reset signal conditioning circuit.
**Specifications**:
- Input: RST_async
- Output: RST_sync
- Glitch-free reset
**Difficulty**: ⭐⭐

#### 6. Enable Logic (1 group, 2 students)
**Groups**: Group 14
**Description**: Design enable signal distribution.
**Specifications**:
- Input: EN
- Outputs: EN_buffered[7:0]
- Equal drive strength
**Difficulty**: ⭐

#### 7. Output Buffer (1 group, 2 students)
**Groups**: Group 15
**Description**: Design output buffer for Q[7:0] and CARRY.
**Specifications**:
- 9 buffers total
- Drive capability: 1pF load
- Controlled slew rate
**Difficulty**: ⭐⭐

### Integration Blocks

#### 8. 2-bit Counter Slice (4 groups, 2 students each)
**Groups**: Group 16-19
**Description**: Design a 2-bit counter slice (combines flip-flops and adders).
**Specifications**:
- Inputs: CLK, RST, EN, CIN
- Outputs: Q[1:0], COUT
- Self-contained 2-bit counter
**Difficulty**: ⭐⭐⭐

#### 9. 4-bit Counter Module (2 groups, 2-3 students each)
**Groups**: Group 20-21
**Description**: Integrate 2-bit slices into 4-bit counter.
**Specifications**:
- Uses 2x 2-bit slices
- Includes local clock/reset buffering
**Difficulty**: ⭐⭐⭐⭐

#### 10. Top-Level Integration (2 groups, 3 students each)
**Groups**: Group 22-23
**Description**: Integrate all blocks into complete 8-bit counter.
**Specifications**:
- Complete 8-bit counter
- All I/O buffering
- Power planning
**Difficulty**: ⭐⭐⭐⭐⭐

### Verification and Testing

#### 11. Testbench Development (2 groups, 2 students each)
**Groups**: Group 24-25
**Description**: Develop comprehensive testbenches for verification.
**Deliverables**:
- Functional testbench
- Corner case testing
- Coverage metrics
**Difficulty**: ⭐⭐⭐

#### 12. Characterization (2 groups, 2-3 students each)
**Groups**: Group 26-27
**Description**: Set up and run CACE characterization for all blocks.
**Deliverables**:
- CACE scripts for each block
- Timing characterization
- Power analysis
**Difficulty**: ⭐⭐⭐⭐

#### 13. Layout Verification (1 group, 3 students)
**Groups**: Group 28
**Description**: Develop and run DRC/LVS for all blocks.
**Deliverables**:
- DRC runsets
- LVS runsets
- Verification reports
**Difficulty**: ⭐⭐⭐⭐

#### 14. Documentation (1 group, 2 students)
**Groups**: Group 29
**Description**: Compile and maintain project documentation.
**Deliverables**:
- Design document
- User manual
- Technical reports
**Difficulty**: ⭐⭐

#### 15. Project Infrastructure (1 group, 2 students)
**Groups**: Group 30
**Description**: Maintain build scripts, CI/CD, and repository.
**Deliverables**:
- Makefile/scripts
- CI/CD setup
- Repository management
**Difficulty**: ⭐⭐⭐

## Assignment Table

| Group | Students | Block | Deliverable Date |
|-------|----------|-------|------------------|
| 1-4   | 2 each   | D Flip-Flop variants | Week 4 |
| 5-8   | 2 each   | Half Adder variants | Week 3 |
| 9-10  | 2 each   | Full Adder | Week 4 |
| 11-12 | 2 each   | Clock Buffer Tree | Week 5 |
| 13    | 2        | Reset Synchronizer | Week 4 |
| 14    | 2        | Enable Logic | Week 3 |
| 15    | 2        | Output Buffer | Week 4 |
| 16-19 | 2 each   | 2-bit Counter Slice | Week 6 |
| 20-21 | 2-3 each | 4-bit Counter Module | Week 7 |
| 22-23 | 3 each   | Top-Level Integration | Week 9 |
| 24-25 | 2 each   | Testbench Development | Week 5 |
| 26-27 | 2-3 each | Characterization | Week 8 |
| 28    | 3        | Layout Verification | Week 9 |
| 29    | 2        | Documentation | Week 10 |
| 30    | 2        | Project Infrastructure | Week 10 |

## Dependencies

### Phase 1 (Weeks 1-4): Basic Blocks
- Groups 1-15 work independently on basic blocks

### Phase 2 (Weeks 5-7): Integration
- Groups 16-19 depend on: Groups 1-4, 5-8, 9-10
- Groups 20-21 depend on: Groups 16-19
- Group 24-25 can start after Group 1-15 complete schematics

### Phase 3 (Weeks 8-10): Final Integration
- Groups 22-23 depend on: Groups 20-21, 11-12, 13, 14, 15
- Group 26-27 depends on: All design groups
- Group 28 depends on: All design groups complete layout
- Groups 29-30 support throughout

## Collaboration Guidelines

1. **Inter-block Communication**:
   - Document your interface specifications clearly
   - Communicate pin assignments with dependent groups
   - Share symbol files early

2. **Code Reviews**:
   - All pull requests require review from instructor
   - Peer reviews encouraged between groups

3. **Weekly Sync**:
   - Each group presents progress weekly
   - Discuss interface issues and blockers

4. **Repository Etiquette**:
   - Only modify files in your block's directory
   - Don't commit generated files (e.g., .raw, .log)
   - Follow naming conventions

## Support Structure
- **Instructor**: Overall project coordination
- **TAs**: Technical support for tools and PDK
- **Peer Mentors**: Senior students for guidance

## Getting Started
1. Form your group (if not already assigned)
2. Check your block assignment above
3. Create your feature branch: `feature/group-XX-<block-name>`
4. Follow the [STUDENT_GUIDE.md](STUDENT_GUIDE.md) workflow
5. Start with reading your block's specification in detail

## Questions?
Post in the course forum or contact the instructor.

Good luck with your designs!
