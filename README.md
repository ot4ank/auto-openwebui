# Open WebUI with Ollama and Cloudflare

A bash script to automate running Open WebUI on Linux systems with Ollama and Cloudflare via Docker. The script currently works on Debian 12 with an AMD Radeon 7900XTX -- YMMV with other setups.

## Features

- One-command setup for an Open WebUI + Ollama environment
- GPU acceleration support for both AMD (ROCm) and NVIDIA (CUDA) graphics cards
- Remote access capability through Cloudflare Tunnel
- Automatic updates via Watchtower
- Container-based isolation for clean installation and removal

## Dependencies

### Required Software
- Docker Engine
- ROCm drivers (for AMD GPU support) or CUDA drivers (for NVIDIA GPU support)
- Cloudflare account (for the tunnel functionality)

### Installing Dependencies on Debian/Ubuntu

#### 1. Install Docker Engine
I prefer to avoid the desktop version of Docker and go with Docker Engine. To install:

Follow the steps in the official ["Install Docker Engine"](https://docs.docker.com/engine/install/) documentation.

#### 2a. For AMD GPU Support (ROCm)
Follow the steps in AMD's ["Quick start installation guide"](https://rocm.docs.amd.com/projects/install-on-linux/en/latest/install/quick-start.html).

#### 2b. For NVIDIA GPU Support (CUDA)
Follow the steps in NVIDIA's ["NVIDIA CUDA Installation Guide for Linux"](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/).

## Setup

1. Clone the repo:
   ```bash
   git clone https://github.com/ivansrbulov/auto-openwebui.git
   cd auto-openwebui
   ```

2. Rename `exampleenv` to `.env` and set the variables:
   ```bash
   cp exampleenv .env
   nano .env  # or use your preferred text editor
   ```
   
   In the .env file:
   ```
   # Replace with your actual Cloudflare Tunnel token
   CLOUDFLARED_KEY=your_cloudflare_tunnel_token
   
   # Replace with your server's local IP address (e.g., http://192.168.1.100:3000)
   LOCAL_IP=http://your_server_ip:3000
   ```

3. If using an NVIDIA GPU, modify the `run.sh` script:
   - Replace `--device /dev/kfd --device /dev/dri \` with `--gpus=all`
   - Replace `ollama/ollama:rocm` with `ollama/ollama:main`

4. Make the script executable:
   ```bash
   chmod +x run.sh
   ```

5. Run the script:
   ```bash
   ./run.sh
   ```

6. Optional: delete the .git folder if you don't need version control:
   ```bash
   rm -rf .git
   ```

## What Happens When You Run the Script

The script performs the following actions:
1. Stops and removes any existing containers with the same names
2. Creates a Docker network bridge
3. Runs the Ollama container with GPU device passthrough
4. Runs the Open WebUI container on port 3000
5. Runs the Cloudflare tunnel container for remote access
6. Sets up Watchtower for automatic updates of the Open WebUI container

## Accessing the UI

After running the script:
- **Local access**: http://localhost:3000
- **Remote access**: Through your Cloudflare Tunnel URL (check your Cloudflare dashboard)

## Troubleshooting

If you encounter any issues:

1. Check container status:
   ```bash
   docker ps -a
   ```

2. View container logs:
   ```bash
   docker logs ollama
   docker logs open-webui
   docker logs cloudflared
   ```

3. Ensure your GPU is properly recognized:
   - For AMD: `rocminfo`
   - For NVIDIA: `nvidia-smi`

4. If containers fail to start, check your `.env` file for correct values

5. Make sure ports are not already in use:
   ```bash
   sudo lsof -i :3000
   sudo lsof -i :11434
