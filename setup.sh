#!/bin/bash
# ─────────────────────────────────────────────────────────────────────────────
# EAMTA 2026 – VLSI Design Environment Setup
#
# This script works on:
#   • WSL Ubuntu (via cloud-init / install-wsl.ps1)
#   • Any regular Linux desktop
#
# It installs podman + distrobox, creates the iic-osic-tools design container,
# and enters it.  On first run inside the container it sets up env vars,
# generates an SSH key, and clones the course repository.
# ─────────────────────────────────────────────────────────────────────────────
set -euo pipefail

msg() { echo -e "\n\e[1;32m[INFO]\e[0m $1"; }
err() { echo -e "\n\e[1;31m[ERROR]\e[0m $1" >&2; exit 1; }

DISTROBOX_NAME="iic-osic-tools2"
SETUP_FLAG=~/.osic_setup_done

# ── Guard: already inside the design container? ─────────────────────────────
if [ -d "/foss/pdks" ]; then
    err "You are already inside the design environment!\n     Run 'xschem &' to start the schematic editor."
fi

# ── Guard: don't run as root ────────────────────────────────────────────────
if [ "$(id -u)" -eq 0 ]; then
    err "Please run this script as a normal user, not root.\n     If you're on WSL, use the install-wsl.ps1 script instead."
fi

# ─────────────────────────────────────────────────────────────────────────────
# 1. Install dependencies (podman + distrobox)
# ─────────────────────────────────────────────────────────────────────────────
install_packages() {
    msg "Checking dependencies..."

    # Detect package manager
    if   command -v apt-get &>/dev/null; then
        UPDATE="sudo apt-get update -qq"
        INSTALL="sudo apt-get install -y -qq"
    elif command -v dnf     &>/dev/null; then
        UPDATE="sudo dnf check-update || true"
        INSTALL="sudo dnf install -y -q"
    elif command -v pacman  &>/dev/null; then
        UPDATE="true"
        INSTALL="sudo pacman -Syu --noconfirm --needed"
    elif command -v zypper  &>/dev/null; then
        UPDATE="sudo zypper ref -q"
        INSTALL="sudo zypper install -y -q"
    else
        err "No supported package manager found. Install podman and distrobox manually."
    fi

    if ! command -v podman &>/dev/null; then
        msg "Installing podman..."
        $UPDATE
        $INSTALL podman
    fi

    if ! command -v distrobox &>/dev/null; then
        msg "Installing distrobox..."
        curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh
    fi
}

# ─────────────────────────────────────────────────────────────────────────────
# 2. Create distrobox (first run only)
# ─────────────────────────────────────────────────────────────────────────────
create_distrobox() {
    if [ -f "$SETUP_FLAG" ]; then return; fi

    msg "Creating distrobox '$DISTROBOX_NAME' (this may take a while on the first run)..."
    distrobox create -n "$DISTROBOX_NAME" \
        -i docker.io/hpretl/iic-osic-tools:latest --yes
}

# ─────────────────────────────────────────────────────────────────────────────
# 3. Auto-enter distrobox on future logins
# ─────────────────────────────────────────────────────────────────────────────
enable_auto_enter() {
    local marker="# auto-enter $DISTROBOX_NAME"
    if ! grep -qF "$marker" ~/.bashrc 2>/dev/null; then
        msg "Configuring shell to auto-enter the design environment..."
        cat >> ~/.bashrc << AUTOEOF

$marker
if [ -z "\${CONTAINER_ID:-}" ] && command -v distrobox &>/dev/null; then
    exec distrobox enter $DISTROBOX_NAME
fi
AUTOEOF
    fi
}

# ─────────────────────────────────────────────────────────────────────────────
# 4. Inner setup script (runs INSIDE the distrobox)
# ─────────────────────────────────────────────────────────────────────────────
write_inner_setup() {
    cat > ~/.iic_osic_setup.sh << 'INNER'
#!/bin/bash
set -euo pipefail
msg() { echo -e "\n\e[1;32m[INFO]\e[0m $1"; }

# ── Environment variables ───────────────────────────────────────────────
cat > ~/.osic_env.sh << 'ENVS'
if [ -d "/foss/pdks" ]; then
    export PATH=/headless/.local/bin:/foss/tools/bin:/foss/tools/sak:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/foss/tools/kactus2:/foss/tools/klayout:/foss/tools/osic-multitool:$PATH
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

# Source env on every future shell
for rc in ~/.bashrc ~/.zshrc; do
    if [ ! -f "$rc" ]; then
        echo "source ~/.osic_env.sh" > "$rc"
    elif ! grep -qF "source ~/.osic_env.sh" "$rc"; then
        echo "source ~/.osic_env.sh" >> "$rc"
    fi
done

# ── First-time setup ────────────────────────────────────────────────────
SETUP_FLAG=~/.osic_setup_done

if [ ! -f "$SETUP_FLAG" ]; then
    # Generate SSH key (no passphrase)
    if [ ! -f ~/.ssh/id_ed25519 ]; then
        mkdir -p ~/.ssh
        chmod 700 ~/.ssh
        USER_EMAIL="${USER:-student}@${HOSTNAME:-eamta2026}"
        ssh-keygen -t ed25519 -C "$USER_EMAIL" -N "" -f ~/.ssh/id_ed25519
    fi

    # Clone repository
    if [ ! -d ".git" ] && [ ! -d "EAMTA2026-VLSI" ]; then
        git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git
    fi
    if [ -d "EAMTA2026-VLSI" ]; then
        cd EAMTA2026-VLSI
        git remote set-url origin git@github.com:Fundacion-Fulgor/EAMTA2026-VLSI.git
    fi

    touch "$SETUP_FLAG"
fi

# ── Show SSH key on first interactive login ─────────────────────────────
# Separated from SETUP_FLAG so cloud-init users see this on their first
# interactive session, not during the headless runcmd.
SSH_SHOWN_FLAG=~/.osic_ssh_shown

if [ ! -f "$SSH_SHOWN_FLAG" ] && [ -t 0 ] && [ -f ~/.ssh/id_ed25519.pub ]; then
    msg "Here is your SSH public key:"
    cat ~/.ssh/id_ed25519.pub
    echo ""

    # Copy to clipboard
    if command -v clip.exe &>/dev/null; then
        cat ~/.ssh/id_ed25519.pub | clip.exe
        msg "(Copied to your Windows clipboard!)"
    elif command -v xclip &>/dev/null; then
        cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard
        msg "(Copied to your clipboard!)"
    fi

    msg "Go to https://github.com/settings/ssh/new and paste this key."
    msg "Opening the browser in 5 seconds..."
    sleep 5
    xdg-open https://github.com/settings/ssh/new 2>/dev/null || true
    read -rp "Press [Enter] after adding the key to GitHub..."

    touch "$SSH_SHOWN_FLAG"
fi

# ── Start SSH agent and go to repo ──────────────────────────────────────
eval "$(ssh-agent -s)" >/dev/null
if [ -f ~/.ssh/id_ed25519 ]; then
    ssh-add ~/.ssh/id_ed25519 2>/dev/null || true
fi

if [ -d "EAMTA2026-VLSI" ]; then
    cd EAMTA2026-VLSI
    git fetch &>/dev/null &
elif [ -d ".git" ]; then
    git fetch &>/dev/null &
fi

msg "Environment ready! Type 'xschem &' to start the schematic editor."

# Clean up and start interactive shell
rm -f ~/.iic_osic_setup.sh
exec bash
INNER
}

# ─────────────────────────────────────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────────────────────────────────────
install_packages
create_distrobox
enable_auto_enter
write_inner_setup

msg "Entering the design environment..."
exec distrobox enter "$DISTROBOX_NAME" -- bash ~/.iic_osic_setup.sh