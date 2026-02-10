# Makefile for EAMTA2026-VLSI 8-bit Counter Project

# Project directories
DESIGN_DIR = design
SIM_DIR = simulation
CHAR_DIR = characterization
LAYOUT_DIR = layout
DOCS_DIR = docs

# Default target
.PHONY: all
all: help

# Help target
.PHONY: help
help:
	@echo "EAMTA2026-VLSI 8-bit Counter Project"
	@echo "===================================="
	@echo ""
	@echo "Available targets:"
	@echo "  make help              - Show this help message"
	@echo "  make setup             - Setup project environment"
	@echo "  make check-tools       - Check if all required tools are installed"
	@echo "  make clean             - Clean generated files"
	@echo "  make clean-sim         - Clean simulation outputs"
	@echo "  make clean-char        - Clean characterization outputs"
	@echo "  make lint              - Run linting on scripts"
	@echo "  make verify-structure  - Verify project directory structure"
	@echo ""
	@echo "Design flow targets:"
	@echo "  make simulate-all      - Run all simulations"
	@echo "  make characterize-all  - Run all characterizations"
	@echo "  make verify-layout     - Run DRC/LVS on all layouts"
	@echo ""
	@echo "Documentation:"
	@echo "  make docs              - Generate documentation"
	@echo ""

# Setup environment
.PHONY: setup
setup:
	@echo "Setting up project environment..."
	@bash scripts/setup_env.sh
	@echo "Creating necessary directories..."
	@mkdir -p $(DESIGN_DIR)/{blocks,schematics,testbenches}
	@mkdir -p $(SIM_DIR)
	@mkdir -p $(CHAR_DIR)
	@mkdir -p $(LAYOUT_DIR)
	@echo "Setup complete!"

# Check required tools
.PHONY: check-tools
check-tools:
	@echo "Checking required tools..."
	@command -v xschem >/dev/null 2>&1 || { echo "xschem not found"; exit 1; }
	@command -v ngspice >/dev/null 2>&1 || { echo "ngspice not found"; exit 1; }
	@command -v klayout >/dev/null 2>&1 || { echo "klayout not found"; exit 1; }
	@command -v python3 >/dev/null 2>&1 || { echo "python3 not found"; exit 1; }
	@echo "All required tools are installed!"

# Verify project structure
.PHONY: verify-structure
verify-structure:
	@echo "Verifying project structure..."
	@test -d $(DESIGN_DIR) || { echo "Missing: $(DESIGN_DIR)"; exit 1; }
	@test -d $(SIM_DIR) || { echo "Missing: $(SIM_DIR)"; exit 1; }
	@test -d $(CHAR_DIR) || { echo "Missing: $(CHAR_DIR)"; exit 1; }
	@test -d $(LAYOUT_DIR) || { echo "Missing: $(LAYOUT_DIR)"; exit 1; }
	@test -d $(DOCS_DIR) || { echo "Missing: $(DOCS_DIR)"; exit 1; }
	@echo "Project structure verified!"

# Clean targets
.PHONY: clean
clean: clean-sim clean-char
	@echo "Cleaning generated files..."
	@find . -name "*.log" -type f -delete
	@find . -name "*~" -type f -delete
	@find . -name "*.bak" -type f -delete
	@echo "Clean complete!"

.PHONY: clean-sim
clean-sim:
	@echo "Cleaning simulation outputs..."
	@find $(SIM_DIR) -name "*.raw" -type f -delete 2>/dev/null || true
	@find $(SIM_DIR) -name "*.log" -type f -delete 2>/dev/null || true
	@echo "Simulation outputs cleaned!"

.PHONY: clean-char
clean-char:
	@echo "Cleaning characterization outputs..."
	@find $(CHAR_DIR) -name "*.log" -type f -delete 2>/dev/null || true
	@echo "Characterization outputs cleaned!"

# Simulation targets
.PHONY: simulate-all
simulate-all:
	@echo "Running all simulations..."
	@echo "This target will run testbenches for all blocks"
	@bash scripts/run_simulations.sh

# Characterization targets
.PHONY: characterize-all
characterize-all:
	@echo "Running all characterizations..."
	@echo "This target will run CACE for all blocks"
	@bash scripts/run_characterization.sh

# Layout verification
.PHONY: verify-layout
verify-layout:
	@echo "Verifying all layouts (DRC/LVS)..."
	@bash scripts/verify_layouts.sh

# Lint scripts
.PHONY: lint
lint:
	@echo "Linting shell scripts..."
	@command -v shellcheck >/dev/null 2>&1 && \
		find scripts -name "*.sh" -exec shellcheck {} \; || \
		echo "shellcheck not installed, skipping"

# Documentation
.PHONY: docs
docs:
	@echo "Documentation is in the docs/ directory"
	@echo "See docs/README.md for details"

# Development helpers
.PHONY: status
status:
	@echo "Project Status"
	@echo "=============="
	@echo ""
	@echo "Blocks:"
	@ls -l $(DESIGN_DIR)/blocks 2>/dev/null || echo "No blocks yet"
	@echo ""
	@echo "Schematics:"
	@ls -l $(DESIGN_DIR)/schematics 2>/dev/null || echo "No schematics yet"
	@echo ""
	@echo "Simulations:"
	@ls -l $(SIM_DIR) 2>/dev/null || echo "No simulations yet"
	@echo ""

.PHONY: list-blocks
list-blocks:
	@echo "Designed blocks:"
	@ls -1 $(DESIGN_DIR)/blocks 2>/dev/null || echo "No blocks yet"

# Install dependencies (if any)
.PHONY: install-deps
install-deps:
	@echo "Installing Python dependencies..."
	@pip3 install --user cace || echo "Failed to install CACE"
	@echo "Done!"
