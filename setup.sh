#!/bin/bash
msg() {  echo -e "\n\e[1;32m[INFO]\e[0m $1"; }
err() { echo -e "\n\e[1;31m[ERROR]\e[0m $1" >&2; exit 1; }

if [ -d "/foss/pdks" ]; then
    err "You seem to be already inside the design environment! This setup script is not needed. You can safely run 'xschem &' to start the schematic editor. Exiting..."
fi

AUTO_ARG=""
if [ "$1" == "--auto" ]; then
    AUTO_ARG="--auto"
fi

install_packages() {
    msg "Checking for podman package..."
    # Detect package manager and set podman package
    if command -v apt-get &> /dev/null; then
        PKG_MANAGER="apt-get"
        UPDATE_CMD="apt-get update"
        INSTALL_CMD="apt-get install -y"
    elif command -v dnf &> /dev/null; then
        PKG_MANAGER="dnf"
        UPDATE_CMD="dnf update"
        INSTALL_CMD="dnf install -y"
    elif command -v yum &> /dev/null; then
        PKG_MANAGER="yum"
        UPDATE_CMD="yum update"
        INSTALL_CMD="yum install -y"
    elif command -v pacman &> /dev/null; then
        PKG_MANAGER="pacman"
        UPDATE_CMD="echo" # Arch will update during install
        INSTALL_CMD="pacman -Syu --noconfirm"
    elif command -v zypper &> /dev/null; then
        PKG_MANAGER="zypper"
        UPDATE_CMD="zypper ref"
        INSTALL_CMD="zypper install -y"
    else
        echo -e "${RED}Error: No supported package manager found. Please install podman manually.${NC}"
        exit 1
    fi
    
    echo -e "Using package manager: ${GREEN}$PKG_MANAGER${NC}"

    if [ "$EUID" -ne 0 ]; then
        UPDATE_CMD="sudo $UPDATE_CMD"
        INSTALL_CMD="sudo $INSTALL_CMD"
    fi

    # Install podman if not present
    if ! command -v podman &> /dev/null; then
        echo -e "${YELLOW}Installing podman...${NC}"
        $UPDATE_CMD
        $INSTALL_CMD podman
    else
        echo -e "${GREEN}podman is already installed.${NC}"
    fi
    if ! command -v distrobox &> /dev/null; then
        echo -e "${YELLOW}Installing distrobox...${NC}"
        curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
    else
        echo -e "${GREEN}distrobox is already installed.${NC}"
    fi
}

if [ "$EUID" -eq 0 ]; then
    msg "Running as root! Setting up the 'eamtastudent' user and system dependencies..."
    install_packages

    if ! id -u eamtastudent &>/dev/null; then
        msg "Creating default user 'eamtastudent'..."
        useradd -m -G sudo -s /bin/bash eamtastudent
        echo 'eamtastudent:vlsi2026' | chpasswd
        
        # Make WSL login as eamtastudent by default
        if command -v wsl.exe &>/dev/null || uname -r | grep -qi "microsoft"; then
            echo -e "[user]\ndefault=eamtastudent" >> /etc/wsl.conf
        fi
    fi

    SCRIPT_PATH="$(realpath "$0")"
    
    # If the script was downloaded to /root or /tmp, move it to eamtastudent's home
    if [[ "$SCRIPT_PATH" == /root/* ]] || [[ "$SCRIPT_PATH" == /tmp/* ]]; then
        cp "$SCRIPT_PATH" /home/eamtastudent/setup.sh
        chown eamtastudent:eamtastudent /home/eamtastudent/setup.sh
        SCRIPT_PATH="/home/eamtastudent/setup.sh"
    fi
    
    msg "Switching to user 'eamtastudent' to continue setup..."
    exec su - eamtastudent -c "\"$SCRIPT_PATH\" $AUTO_ARG"
fi

SETUP_FLAG=~/.osic_setup_done

if [ ! -f "$SETUP_FLAG" ]; then
    install_packages
    distrobox create -n iic-osic-tools2 -i docker.io/hpretl/iic-osic-tools:latest --yes
fi


# Enter the distrobox and automatically run first-time setup
# We write the payload to a local shell script in the home directory
# to avoid quoting and nested evaluation issues when distrobox parses arguments.
cat << 'EOF' > ~/.iic_osic_setup.sh
AUTO_MODE=0
if [ "$1" == "--auto" ]; then
    AUTO_MODE=1
fi

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
        if [ "$AUTO_MODE" = "1" ]; then
            USER_EMAIL="${USER:-student}@${HOSTNAME:-eamta2026}"
        else
            # Ask user for email
            read -p "Enter your email for SSH key: " USER_EMAIL
        fi
        ssh-keygen -t ed25519 -C "$USER_EMAIL" -N "" -f ~/.ssh/id_ed25519
    fi

    msg "Here is your SSH public key:"
    if [ -f ~/.ssh/id_ed25519.pub ]; then
        cat ~/.ssh/id_ed25519.pub
        if command -v clip.exe &> /dev/null; then
            cat ~/.ssh/id_ed25519.pub | clip.exe
            msg "(The public key has been copied to your Windows clipboard!)"
        elif command -v xclip &> /dev/null; then
            cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard
            msg "(The public key has been copied to your clipboard!)"
        fi
    fi
    msg "Now go to https://github.com/settings/ssh/new , paste this key and give it an arbitrary name"
        msg "Opening the browser in 5 seconds..."
        sleep 5
        xdg-open https://github.com/settings/ssh/new
        read -p "Press [Enter] to continue after adding the key..."
fi

eval "$(ssh-agent -s)" >/dev/null
ssh-add ~/.ssh/id_ed25519
msg "Everything done! You can type 'xschem &' to start the schematic editor."

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

exec distrobox enter iic-osic-tools2 -- bash ~/.iic_osic_setup.sh $AUTO_ARG