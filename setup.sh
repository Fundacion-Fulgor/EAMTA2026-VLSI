#!/bin/bash
msg() {  echo -e "\n\e[1;32m[INFO]\e[0m $1"; }

install_packages() {
    msg "Checking for podman package..."
    # Detect package manager and set podman package
    if command -v apt-get &> /dev/null; then
        PKG_MANAGER="apt-get"
        UPDATE_CMD="sudo apt-get update"
        INSTALL_CMD="sudo apt-get install -y"
    elif command -v dnf &> /dev/null; then
        PKG_MANAGER="dnf"
        UPDATE_CMD="sudo dnf update"
        INSTALL_CMD="sudo dnf install -y"
    elif command -v yum &> /dev/null; then
        PKG_MANAGER="yum"
        UPDATE_CMD="sudo yum update"
        INSTALL_CMD="sudo yum install -y"
    elif command -v pacman &> /dev/null; then
        PKG_MANAGER="pacman"
        UPDATE_CMD="echo" # Arch will update during install
        INSTALL_CMD="sudo pacman -Syu --noconfirm"
    elif command -v zypper &> /dev/null; then
        PKG_MANAGER="zypper"
        UPDATE_CMD="sudo zypper ref"
        INSTALL_CMD="sudo zypper install -y"
    else
        echo -e "${RED}Error: No supported package manager found. Please install podman manually.${NC}"
        exit 1
    fi
    
    echo -e "Using package manager: ${GREEN}$PKG_MANAGER${NC}"

    # Install podman if not present
    if ! command -v podman &> /dev/null; then
        echo -e "${YELLOW}Installing podman...${NC}"
        $UPDATE_CMD
        $INSTALL_CMD podman
    else
        echo -e "${GREEN}podman is already installed.${NC}"
    fi
    curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
}

install_packages


# Create a distrobox with the container
distrobox create -n iic-osic-tools2 -i docker.io/hpretl/iic-osic-tools:latest 

# Enter the distrobox and automatically run first-time setup
# We write the payload to a local shell script in the home directory
# to avoid quoting and nested evaluation issues when distrobox parses arguments.
cat << 'EOF' > ~/.iic_osic_setup.sh
msg() {  echo -e "\n\e[1;32m[INFO]\e[0m $1"; }

# Ensure environment variables are set for this session and future interactive sessions
cat << 'ENVS' > ~/.osic_env.sh
if [ -d "/foss/pdks" ]; then
    export PATH=/headless/.local/bin:/foss/tools/bin:/foss/tools/sak:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/foss/tools/kactus2:/foss/tools/klayout:/foss/tools/osic-multitool:\$PATH
    export PDK_ROOT=/foss/pdks
    export PDK=ihp-sg13g2
    export PDKPATH=/foss/pdks/ihp-sg13g2
    export STD_CELL_LIBRARY=sg13g2_stdcell
    export SPICE_USERINIT_DIR=/foss/pdks/ihp-sg13g2/libs.tech/ngspice
    export KLAYOUT_PATH=/headless/.klayout:/foss/pdks/ihp-sg13g2/libs.tech/klayout:/foss/pdks/ihp-sg13g2/libs.tech/klayout/tech
    export SHELL=/bin/bash
fi
ENVS

source ~/.osic_env.sh

for rc in ~/.bashrc ~/.zshrc; do
    if [ ! -f "$rc" ]; then
        echo "source ~/.osic_env.sh" > "$rc"
    elif ! grep -q "source ~/.osic_env.sh" "$rc"; then
        echo "source ~/.osic_env.sh" >> "$rc"
    fi
done

SETUP_FLAG=~/.osic_setup_done

if [ ! -f "$SETUP_FLAG" ]; then
    # Check if SSH key already exists
    if [ ! -f ~/.ssh/id_ed25519 ]; then
        # Ask user for email
        read -p "Enter your email for SSH key: " USER_EMAIL
        ssh-keygen -t ed25519 -C "$USER_EMAIL" -N "" -f ~/.ssh/id_ed25519
    fi

    msg "Here is your SSH public key:"
    if [ -f ~/.ssh/id_ed25519.pub ]; then
        cat ~/.ssh/id_ed25519.pub
    fi
    msg "Now go to https://github.com/settings/ssh/new , paste this key and give it an arbitrary name"
    msg "Opening the browser in 5 seconds..."
    sleep 5
    xdg-open https://github.com/settings/ssh/new
    read -p "Press [Enter] to continue after adding the key..."
fi

eval "$(ssh-agent -s)" >/dev/null
ssh-add ~/.ssh/id_ed25519

if [ ! -f "$SETUP_FLAG" ]; then
    # Make sure we don't clone if we're already inside the repo or it exists
    if [ ! -d ".git" ]; then
        if [ ! -d "EAMTA2026-VLSI" ]; then
            git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git
        fi
        if [ -d "EAMTA2026-VLSI" ]; then
            cd EAMTA2026-VLSI
            git remote set-url origin git@github.com:Fundacion-Fulgor/EAMTA2026-VLSI.git
            # Quietly fetch updates in the background on startup
            git fetch &> /dev/null &
        fi
    fi
    touch "$SETUP_FLAG"
else
    if [ -d "EAMTA2026-VLSI" ]; then
        cd EAMTA2026-VLSI
        # Quietly fetch updates in the background on startup
        git fetch &> /dev/null &
    elif [ -d ".git" ]; then
        # Quietly fetch updates in the background on startup if already in repo
        git fetch &> /dev/null &
    fi
fi

# Clean up and launch interactive shell
rm -f ~/.iic_osic_setup.sh
exec bash
EOF

distrobox enter iic-osic-tools2 -- bash ~/.iic_osic_setup.sh