#!/bin/bash
# Run CACE characterization for all blocks

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"
CHAR_DIR="$PROJECT_ROOT/characterization"

echo "Running CACE characterization for all blocks..."

# Find all CACE configuration files
CACE_CONFIGS=$(find "$CHAR_DIR" -name "*.txt" -o -name "*.yaml" 2>/dev/null)

if [ -z "$CACE_CONFIGS" ]; then
    echo "No CACE configuration files found in $CHAR_DIR"
    echo "CACE files should be named *.txt or *.yaml"
    exit 0
fi

# Check if CACE is installed
if ! command -v cace &> /dev/null; then
    echo "Error: CACE not found. Please install it with: pip install cace"
    exit 1
fi

# Run CACE for each config
for CONFIG in $CACE_CONFIGS; do
    CONFIG_NAME=$(basename "$CONFIG")
    echo ""
    echo "Running CACE: $CONFIG_NAME"
    echo "================================"
    
    # Get directory
    CONFIG_DIR=$(dirname "$CONFIG")
    
    # Run CACE
    cd "$CONFIG_DIR"
    cace "$CONFIG_NAME"
    
    if [ $? -eq 0 ]; then
        echo "✓ $CONFIG_NAME completed successfully"
    else
        echo "✗ $CONFIG_NAME failed"
    fi
done

echo ""
echo "Characterization run complete!"
echo "Results are in: $CHAR_DIR"
