<# 
.SYNOPSIS
    One-line installer for the EAMTA 2026 VLSI design environment on Windows.
.DESCRIPTION
    Creates a cloud-init user-data file for Ubuntu-24.04 WSL, then installs
    the distro. On first boot, cloud-init configures the user, packages, and
    kicks off the full environment setup automatically.
.EXAMPLE
    irm https://raw.githubusercontent.com/Fundacion-Fulgor/EAMTA2026-VLSI/main/install-wsl.ps1 | iex
#>

$ErrorActionPreference = "Stop"

# ── 1. Create cloud-init user-data ──────────────────────────────────────────
$cloudInitDir = Join-Path $env:USERPROFILE ".cloud-init"
if (-not (Test-Path $cloudInitDir)) {
    New-Item -ItemType Directory -Path $cloudInitDir -Force | Out-Null
}

$userDataPath = Join-Path $cloudInitDir "Ubuntu-24.04.user-data"

# NOTE: This must be written with LF line endings — cloud-init is Linux.
$userData = @"
#cloud-config
locale: en_US

users:
  - name: eamtastudent
    gecos: EAMTA Student
    groups: [adm,dialout,cdrom,floppy,sudo,audio,dip,video,plugdev,netdev]
    sudo: ALL=(ALL) NOPASSWD:ALL
    shell: /bin/bash
    lock_passwd: true

write_files:
  - path: /etc/wsl.conf
    append: true
    content: |
      [user]
      default=eamtastudent

packages:
  - curl

runcmd:
  - su - eamtastudent -c 'curl -sSL https://raw.githubusercontent.com/Fundacion-Fulgor/EAMTA2026-VLSI/main/setup.sh -o /tmp/setup.sh && chmod +x /tmp/setup.sh && /tmp/setup.sh'
"@

# Write with UTF-8 (no BOM) and LF line endings
$utf8NoBom = New-Object System.Text.UTF8Encoding $false
[System.IO.File]::WriteAllText($userDataPath, $userData.Replace("`r`n", "`n"), $utf8NoBom)

Write-Host ""
Write-Host "  cloud-init user-data written to: $userDataPath" -ForegroundColor Green
Write-Host ""

# ── 2. Install Ubuntu-24.04 WSL ────────────────────────────────────────────
Write-Host "  Installing Ubuntu-24.04 via WSL..." -ForegroundColor Cyan
Write-Host "  (This may take a few minutes on the first run)" -ForegroundColor DarkGray
Write-Host ""

wsl --install Ubuntu-24.04

Write-Host ""
Write-Host "  Done! Open 'Ubuntu-24.04' from the Start Menu to finish setup." -ForegroundColor Green
Write-Host "  The first boot may take a minute while cloud-init configures everything." -ForegroundColor DarkGray
Write-Host ""
