#!/bin/bash
# Run simulations for all blocks

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
SIM_DIR="$PROJECT_ROOT/simulation"
DESIGN_DIR="$PROJECT_ROOT/design"

echo "Running simulations for all blocks..."

# Find all testbench files
TESTBENCHES=$(find "$DESIGN_DIR/testbenches" -name "*_tb.spice" 2>/dev/null)

if [ -z "$TESTBENCHES" ]; then
    echo "No testbenches found in $DESIGN_DIR/testbenches"
    echo "Testbenches should be named *_tb.spice"
    exit 0
fi

# Run each testbench
for TB in $TESTBENCHES; do
    TB_NAME=$(basename "$TB" .spice)
    echo ""
    echo "Running simulation: $TB_NAME"
    echo "================================"
    
    # Create output directory
    OUT_DIR="$SIM_DIR/$TB_NAME"
    mkdir -p "$OUT_DIR"
    
    # Run ngspice
    cd "$OUT_DIR"
    ngspice -b "$TB" -o "$OUT_DIR/${TB_NAME}.log"
    
    if [ $? -eq 0 ]; then
        echo "✓ $TB_NAME completed successfully"
    else
        echo "✗ $TB_NAME failed (check $OUT_DIR/${TB_NAME}.log)"
    fi
done

echo ""
echo "Simulation run complete!"
echo "Results are in: $SIM_DIR"
