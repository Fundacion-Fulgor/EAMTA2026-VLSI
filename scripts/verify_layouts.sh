#!/bin/bash
# Verify layouts (DRC/LVS) for all blocks

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
LAYOUT_DIR="$PROJECT_ROOT/layout"

echo "Verifying layouts (DRC/LVS) for all blocks..."

# Check if KLayout is installed
if ! command -v klayout &> /dev/null; then
    echo "Error: KLayout not found. Please install it."
    exit 1
fi

# Check if PDK_ROOT is set
if [ -z "$PDK_ROOT" ]; then
    echo "Error: PDK_ROOT not set. Please set it to your IHP-Open-PDK installation."
    exit 1
fi

# Find all GDS files
GDS_FILES=$(find "$LAYOUT_DIR" -name "*.gds" 2>/dev/null)

if [ -z "$GDS_FILES" ]; then
    echo "No GDS files found in $LAYOUT_DIR"
    exit 0
fi

# Run DRC and LVS for each layout
for GDS in $GDS_FILES; do
    GDS_NAME=$(basename "$GDS" .gds)
    GDS_DIR=$(dirname "$GDS")
    echo ""
    echo "Verifying: $GDS_NAME"
    echo "================================"
    
    # Run DRC
    echo "Running DRC..."
    if [ -f "$PDK_ROOT/drc/sg13g2.drc" ]; then
        klayout -b -r "$PDK_ROOT/drc/sg13g2.drc" \
            -rd input="$GDS" \
            -rd report="$GDS_DIR/${GDS_NAME}_drc.lyrdb" \
            > "$GDS_DIR/${GDS_NAME}_drc.log" 2>&1
        
        if [ $? -eq 0 ]; then
            echo "✓ DRC completed"
        else
            echo "✗ DRC failed (check $GDS_DIR/${GDS_NAME}_drc.log)"
        fi
    else
        echo "⚠ DRC rules not found at $PDK_ROOT/drc/sg13g2.drc"
    fi
    
    # Run LVS (if netlist exists)
    NETLIST="$GDS_DIR/${GDS_NAME}.spice"
    if [ -f "$NETLIST" ]; then
        echo "Running LVS..."
        if [ -f "$PDK_ROOT/lvs/sg13g2.lvs" ]; then
            klayout -b -r "$PDK_ROOT/lvs/sg13g2.lvs" \
                -rd input="$GDS" \
                -rd schematic="$NETLIST" \
                -rd report="$GDS_DIR/${GDS_NAME}_lvs.lvsdb" \
                > "$GDS_DIR/${GDS_NAME}_lvs.log" 2>&1
            
            if [ $? -eq 0 ]; then
                echo "✓ LVS completed"
            else
                echo "✗ LVS failed (check $GDS_DIR/${GDS_NAME}_lvs.log)"
            fi
        else
            echo "⚠ LVS rules not found at $PDK_ROOT/lvs/sg13g2.lvs"
        fi
    else
        echo "⚠ Netlist not found, skipping LVS"
    fi
done

echo ""
echo "Layout verification complete!"
echo "Reports are in: $LAYOUT_DIR"
