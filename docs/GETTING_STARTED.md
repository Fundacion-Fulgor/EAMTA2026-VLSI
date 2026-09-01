# Getting Started

This guide will help you set up the development environment for the 4-bit counter project.

## Environment Setup

### 1. Automated Installation

#### Windows (PowerShell)

Open **PowerShell** and paste this single command — it installs WSL + Ubuntu and sets up the entire design environment automatically:

```powershell
irm https://raw.githubusercontent.com/Fundacion-Fulgor/EAMTA2026-VLSI/develop/install-wsl.ps1 | iex
```

> **Note:** The first boot may take ~20 minutes while the environment is configured. Once complete, opening "Ubuntu-24.04" from the Start Menu will drop you directly into the design environment.

#### Linux (Terminal)

If you are already on a Linux system, open your terminal and run:

```bash
cd ~ && { [ -d EAMTA2026-VLSI ] || git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git; } && cd EAMTA2026-VLSI && ./setup.sh
```

### 2. Set Up GitHub SSH Keys (Optional, advanced students)

**Note** The automated installation generates an SSH key automatically (no prompts required). If you want to push your work publicly, you will still need to manually add your generated SSH key to GitHub.

1. Create a GitHub account at [github.com](https://github.com) if you don't have one.
2. The installation script will automatically print your new SSH public key at the end of the process (and copy it to your clipboard).
   *(If you missed it, you can print it again by running `cat ~/.ssh/id_ed25519.pub` in the terminal).*
3. Paste the copied key into the "Key" field on the [Add new SSH Key](https://github.com/settings/ssh/new) page. Give it an arbitrary title and leave "Key type" as Authentication Key.

### 3. Manual Installation (Alternative)

If you prefer to run the steps manually:

1. Start Ubuntu WSL by running `wsl` on PowerShell (or just open your terminal on Linux).
2. Clone the repo: `git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git`
3. Enter the directory: `cd EAMTA2026-VLSI`
4. Run the setup script: `./setup.sh`. An SSH key will be generated automatically and displayed at the end — follow the on-screen instructions to add it to GitHub.

## Working with the PDK

The IHP SG13G2 PDK should be available in the container. Verify by checking:

```bash
echo $PDK_ROOT
ls $PDK_ROOT
```
If the PDK is not available, try running `sak-pdk ihp-sh13g2` to set the correct environment variables.

## Directory Structure

After cloning, your workspace should look like:

```
EAMTA2026-VLSI/
├── design/
│   ├── blocks/         # Your block designs go here
│   └── top/
├── verification/
├── scripts/
├── tools-config/
├── examples/
└── docs/
```

## Next Steps

1. Read [DESIGN_SPECIFICATIONS.md](DESIGN_SPECIFICATIONS.md) to understand the project requirements
2. Check [GROUP_ASSIGNMENTS.md](GROUP_ASSIGNMENTS.md) for your group's assigned block
3. Follow [STUDENT_WORKFLOW.md](STUDENT_WORKFLOW.md) for the development process
4. Review [examples/](../examples/) for reference implementations

## Troubleshooting

### Container Issues

If you have issues with the container:
- Check that podman is running: `podman ps`
- Restart the distrobox: `distrobox stop iic-osic-tools && distrobox enter iic-osic-tools`
- Check container logs: `podman logs <container-id>`

### PDK Issues

If the PDK is not found:
- Ensure you're inside the container
- Check environment variables: `env | grep PDK`
- Consult the IHP SG13G2 PDK documentation

### Tool Issues

If tools are not working:
- Verify you're in the correct container: `distrobox list`
  - This should return `distrobox: command not found`. If it doesn't, you're likely still outside the container. Run `distrobox enter iic-osic-tools`.
- Check tool availability: `which xschem ngspice klayout`
  - This should return a list of paths. If it doesn't, you're likely still outside the container. Run `distrobox enter iic-osic-tools`.
- Update the container if needed: `podman pull hpretl/iic-osic-tools:latest`

## Additional Resources

- [IIC-OSIC-Tools Repository](https://github.com/hpretl/iic-osic-tools)
- [Distrobox Documentation](https://github.com/89luca89/distrobox)
- [IHP SG13G2 PDK](https://github.com/IHP-GmbH/IHP-Open-PDK)
