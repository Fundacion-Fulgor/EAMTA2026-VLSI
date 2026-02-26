# Getting Started

This guide will help you set up the development environment for the 4-bit counter project.

## Prerequisites

- Linux-based operating system or WSL (Ubuntu 20.04+ recommended)
    - In case you're on Windows, running `wsl --install` on PowerShell will install WSL (Windows Subsystem for Linux), which is enough to run the tools.
- podman installed
   -  Docker is much more erratic with this container and requires adding your user to the docker group, which equals giving it root permissions.
- distrobox installed (for easier container integration)

## Environment Setup

### 1. Automated Installation

This section provides single commands to install dependencies, clone the repository, and run the setup script without requiring user interaction during the process.

**⚠️ IMPORTANT:** The automated installation skips the interactive SSH key generation prompts. You will still need to **manually add your generated SSH key to GitHub** (see Step 2 below) to be able to push your assigned block!

#### Windows (PowerShell)

If you are on Windows, open **PowerShell** and run this command:

```powershell
wsl --install; wsl ~ -e bash -c "git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git && cd EAMTA2026-VLSI && ./setup.sh --auto"
```

#### Linux (Terminal)

If you are already on a Linux system, open your terminal and run:

```bash
cd ~ && git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git && cd EAMTA2026-VLSI && ./setup.sh --auto
```

### 2. Set Up GitHub SSH Keys (Required)

Whether you used the automated or manual installation, you must add the generated SSH key to your GitHub account to push your work.

1. Create a GitHub account at [github.com](https://github.com) if you don't have one.
2. The installation script will automatically print your new SSH public key at the end of the process (and copy it to your clipboard).
   *(If you missed it, you can print it again by running `cat ~/.ssh/id_ed25519.pub` in the terminal).*
3. Paste the copied key into the "Key" field on the [Add new SSH Key](https://github.com/settings/ssh/new) page. Give it an arbitrary title and leave "Key type" as Authentication Key.

### 3. Manual Installation (Alternative)

If you prefer to run the steps manually:

1. Start Ubuntu WSL by running `wsl` on PowerShell (or just open your terminal on Linux).
2. Clone the repo: `git clone https://github.com/Fundacion-Fulgor/EAMTA2026-VLSI.git`
3. Enter the directory: `cd EAMTA2026-VLSI`
4. Run the setup script: `./setup.sh`. When prompted, provide your email to generate the SSH key and follow the on-screen instructions to add it to GitHub.

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
