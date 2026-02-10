# Setup Guide

## Prerequisites
- Linux operating system (Ubuntu 20.04+ recommended)
- Git
- Python 3.8+
- Make

## Tool Installation

### 1. IHP SG13G2 PDK
```bash
# Clone the IHP Open PDK
cd ~/tools
git clone https://github.com/IHP-GmbH/IHP-Open-PDK.git
cd IHP-Open-PDK

# Set environment variable
export PDK_ROOT=$HOME/tools/IHP-Open-PDK
echo 'export PDK_ROOT=$HOME/tools/IHP-Open-PDK' >> ~/.bashrc
```

### 2. xschem (Schematic Editor)
```bash
# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential libx11-dev libxrender-dev \
    libxcb1-dev libx11-xcb-dev libcairo2-dev libtcl8.6 tk8.6 \
    flex bison

# Clone and build xschem
cd ~/tools
git clone https://github.com/StefanSchippers/xschem.git
cd xschem
./configure --prefix=$HOME/.local
make
make install

# Add to PATH
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
```

### 3. ngspice (Circuit Simulator)
```bash
# Install from package manager (easier)
sudo apt-get install -y ngspice

# OR build from source for latest version
cd ~/tools
git clone https://git.code.sf.net/p/ngspice/ngspice
cd ngspice
./autogen.sh
./configure --with-x --enable-xspice --disable-debug --prefix=$HOME/.local
make
make install
```

### 4. CACE (Circuit Characterization)
```bash
# Install CACE
pip install cace

# OR install from source
cd ~/tools
git clone https://github.com/efabless/cace.git
cd cace
pip install -e .
```

### 5. KLayout (Layout Editor)
```bash
# Download and install KLayout
# Visit https://www.klayout.de/build.html

# On Ubuntu, you can use:
sudo apt-get install -y klayout

# OR download the latest AppImage
cd ~/tools
wget https://www.klayout.org/downloads/Ubuntu-22/klayout_0.28.12-1_amd64.deb
sudo dpkg -i klayout_*.deb
```

## Repository Setup

### Clone the Repository
```bash
git clone https://github.com/matebuteler/EAMTA2026-VLSI.git
cd EAMTA2026-VLSI
```

### Configure Environment
Create a `setup.sh` file in the repository root (this will be created by the scripts):
```bash
source ./scripts/setup_env.sh
```

### Verify Installation
```bash
# Check tool versions
xschem --version
ngspice --version
cace --version
klayout -v
```

## xschem Configuration
xschem needs to be configured to use the IHP SG13G2 PDK:

1. Copy the xschem configuration template:
```bash
cp tools/xschemrc ~/.xschemrc
```

2. Edit `~/.xschemrc` to point to your PDK installation.

## Directory Permissions
Ensure proper permissions for working directories:
```bash
chmod -R u+w design/ simulation/ characterization/ layout/
```

## Next Steps
- Read [STUDENT_GUIDE.md](STUDENT_GUIDE.md) for workflow instructions
- Check [DESIGN_SPEC.md](DESIGN_SPEC.md) for project specifications
- Review [BLOCK_ASSIGNMENTS.md](BLOCK_ASSIGNMENTS.md) for your assigned block

## Troubleshooting

### xschem doesn't start
- Check X11 display: `echo $DISPLAY`
- Try: `xschem --help` to see options

### ngspice simulation fails
- Verify PDK path is correct
- Check model files are accessible
- Review simulation log files

### CACE errors
- Ensure Python environment is active
- Check CACE configuration files
- Verify tool paths in CACE settings

## Support
For issues, please open a GitHub issue or contact the course instructor.
