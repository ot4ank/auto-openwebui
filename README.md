# Introduction
This is a bash script to automate running Open WebUI on Linux systems with Cloudflare via Docker. The script currently works on Debian 12 with an AMD Radeon 7900XTX -- YMMV with other setups.

# Dependencies
## Required Software
- Docker Engine
- Docker Compose (optional but recommended)
- ROCm drivers (for AMD GPU support) or CUDA drivers (for NVIDIA GPU support)
- Cloudflare account (for the tunnel functionality)

## Installing Dependencies on Debian/Ubuntu

### 1. Install Docker
I prefer to avoid the desktop version of Docker and go with Docker Engine, and this script is geared towards that. To install, follow the steps here: ["Install Docker Engine"](https://docs.docker.com/engine/install/)

### 2a. For AMD GPU Support (ROCm)
Follow the steps in AMD's ["Quick start installation guide"](https://rocm.docs.amd.com/projects/install-on-linux/en/latest/install/quick-start.html)

### 2b. For NVIDIA GPU Support (CUDA)
Follow the steps in NVIDIA's ["NVIDIA CUDA Installation Guide for Linux"](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/)

# Setup
1. Clone the repo
2. Rename `exampleenv` to `.env` and set the variables to your own Cloudflare token and local IP address.
3. If using an NVIDIA GPU, make the necessary changes to `run.sh`
4. Navigate to the folder in terminal and run `chmod +x run.sh`
5. Enter `/.run.sh`
6. Optional: delete the .git
