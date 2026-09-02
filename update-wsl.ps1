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
set -euo pipefail

echo -e "\e[1;32m[1/3]\e[0m Updating distrobox container & image..."
if ! command -v distrobox &>/dev/null; then
    echo "Error: distrobox is not installed." >&2
    exit 1
fi
if ! command -v podman &>/dev/null; then
    echo "Error: podman is not installed." >&2
    exit 1
fi

distrobox stop iic-osic-tools2 2>/dev/null || true
distrobox rm -f iic-osic-tools2 2>/dev/null || true
podman pull docker.io/hpretl/iic-osic-tools:latest
distrobox create -n iic-osic-tools2 -i docker.io/hpretl/iic-osic-tools:latest --yes

echo -e "\e[1;32m[2/3]\e[0m Updating course repository..."
if [ -d "$HOME/EAMTA2026-VLSI" ]; then
    cd "$HOME/EAMTA2026-VLSI"
    git fetch origin
    current_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null || true)
    if [ "$current_branch" = "main" ]; then
        git pull --ff-only origin main || echo "Warning: git pull --ff-only failed. Please check repository state in ~/EAMTA2026-VLSI."
    else
        echo "Info: Current branch is '$current_branch' (not main). Skipping automatic merge to avoid conflicts."
    fi
else
    echo "Info: $HOME/EAMTA2026-VLSI directory not found, skipping repository update."
fi

echo -e "\e[1;32m[3/3]\e[0m Done! You can now start your EAMTA WSL distribution."
'@

$distroListRaw = wsl.exe -l -q 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Error "Could not list WSL distributions."
    exit $LASTEXITCODE
}

$distros = @($distroListRaw -split "\r?\n" | ForEach-Object { $_.Trim().Replace("`0", "") } | Where-Object { $_ -ne "" })
if ($distros.Count -eq 0) {
    Write-Error "No WSL distributions found. Please install the environment first using install-wsl.ps1."
    exit 1
}

$candidates = @()

foreach ($d in $distros) {
    $passwdEntries = @(& wsl.exe -d $d -u root -- getent passwd 2>$null)
    if ($LASTEXITCODE -ne 0) {
        continue
    }

    foreach ($entry in $passwdEntries) {
        $fields = $entry -split ":"
        $uid = 0
        if ($fields.Count -lt 7 -or -not [int]::TryParse($fields[2], [ref]$uid) -or $uid -lt 1000) {
            continue
        }

        $user = $fields[0]
        $marker = "$($fields[5])/.osic_setup_done"
        & wsl.exe -d $d -u root -- test -f $marker 2>$null
        if ($LASTEXITCODE -eq 0) {
            $candidates += [PSCustomObject]@{
                Distro = $d
                User = $user
            }
        }
    }
}

if ($candidates.Count -eq 0) {
    Write-Error "Could not find an EAMTA-managed WSL distribution.`nChecked distros: $($distros -join ', ')"
    exit 1
}

if ($candidates.Count -gt 1) {
    $candidateNames = $candidates | ForEach-Object { "$($_.Distro) ($($_.User))" }
    Write-Error "Multiple EAMTA-managed WSL distributions found: $($candidateNames -join ', '). Remove the obsolete installation before updating."
    exit 1
}

$targetDistro = $candidates[0].Distro
$targetUser = $candidates[0].User
Write-Host "  Found EAMTA environment in distro: $targetDistro" -ForegroundColor DarkGray
Write-Host "  Running as user: $targetUser" -ForegroundColor DarkGray
Write-Host ""

$wslArgs = @("-d", $targetDistro, "-u", $targetUser, "--", "bash", "-c", $updateScript)
& wsl.exe @wslArgs
if ($LASTEXITCODE -ne 0) {
    Write-Error "Update failed with exit code $LASTEXITCODE."
    exit $LASTEXITCODE
}

Write-Host ""
Write-Host "  Update completed successfully!" -ForegroundColor Green
Write-Host ""
