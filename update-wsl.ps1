<#
.SYNOPSIS
    One-line updater for the EAMTA 2026 VLSI design environment on Windows (WSL2).
.DESCRIPTION
    Runs inside the existing WSL instance to update distrobox, podman container
    image (iic-osic-tools), and the course repository.
.EXAMPLE
    irm https://raw.githubusercontent.com/Fundacion-Fulgor/EAMTA2026-VLSI/main/update-wsl.ps1 | iex
#>

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "  Updating EAMTA 2026 VLSI environment in WSL..." -ForegroundColor Cyan
Write-Host ""

$updateScript = @'
set -e
echo -e "\e[1;32m[1/3]\e[0m Updating distrobox container & image..."
if command -v distrobox &>/dev/null; then
    distrobox stop iic-osic-tools2 2>/dev/null || true
    distrobox rm -f iic-osic-tools2 2>/dev/null || true
    podman pull docker.io/hpretl/iic-osic-tools:latest
    distrobox create -n iic-osic-tools2 -i docker.io/hpretl/iic-osic-tools:latest --yes
fi

echo -e "\e[1;32m[2/3]\e[0m Updating course repository..."
if [ -d "$HOME/EAMTA2026-VLSI" ]; then
    cd "$HOME/EAMTA2026-VLSI"
    git fetch origin
    git pull origin main || echo "Warning: git pull failed or has conflicts. Please resolve manually in ~/EAMTA2026-VLSI."
fi

echo -e "\e[1;32m[3/3]\e[0m Done! You can now start Ubuntu-24.04."
'@

wsl.exe -u eamtastudent -- bash -c "$updateScript"

Write-Host ""
Write-Host "  Update completed successfully!" -ForegroundColor Green
Write-Host ""
