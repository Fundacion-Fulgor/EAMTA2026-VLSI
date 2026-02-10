#!/bin/bash
# Setup environment variables for the VLSI design flow

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Setting up EAMTA2026-VLSI environment...${NC}"

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

echo "Project root: $PROJECT_ROOT"

# PDK setup
if [ -z "$PDK_ROOT" ]; then
    echo -e "${YELLOW}Warning: PDK_ROOT not set. Please set it to your IHP-Open-PDK installation path.${NC}"
    echo "Example: export PDK_ROOT=\$HOME/tools/IHP-Open-PDK"
else
    echo -e "${GREEN}PDK_ROOT: $PDK_ROOT${NC}"
fi

# Tool paths (adjust as needed)
export XSCHEM_PATH="${XSCHEM_PATH:-$(which xschem 2>/dev/null)}"
export NGSPICE_PATH="${NGSPICE_PATH:-$(which ngspice 2>/dev/null)}"
export KLAYOUT_PATH="${KLAYOUT_PATH:-$(which klayout 2>/dev/null)}"

# Project directories
export DESIGN_DIR="$PROJECT_ROOT/design"
export SIMULATION_DIR="$PROJECT_ROOT/simulation"
export CHARACTERIZATION_DIR="$PROJECT_ROOT/characterization"
export LAYOUT_DIR="$PROJECT_ROOT/layout"
export SCRIPTS_DIR="$PROJECT_ROOT/scripts"
export TOOLS_DIR="$PROJECT_ROOT/tools"

# Add scripts to PATH
export PATH="$SCRIPTS_DIR:$PATH"

# xschem setup
if [ -f "$TOOLS_DIR/xschemrc" ]; then
    export XSCHEMRC="$TOOLS_DIR/xschemrc"
    echo "Using xschemrc: $XSCHEMRC"
fi

# Check tool availability
echo ""
echo "Checking tool availability:"

check_tool() {
    if command -v $1 &> /dev/null; then
        VERSION=$($1 --version 2>&1 | head -n1)
        echo -e "${GREEN}✓ $1${NC} - $VERSION"
        return 0
    else
        echo -e "${RED}✗ $1 not found${NC}"
        return 1
    fi
}

check_tool xschem
check_tool ngspice
check_tool klayout
check_tool python3

if command -v cace &> /dev/null; then
    echo -e "${GREEN}✓ cace${NC}"
else
    echo -e "${YELLOW}⚠ cace not found (install with: pip install cace)${NC}"
fi

echo ""
echo -e "${GREEN}Environment setup complete!${NC}"
echo ""
echo "Usage:"
echo "  source ./scripts/setup_env.sh        - Setup environment"
echo "  make help                             - Show available make targets"
echo ""
