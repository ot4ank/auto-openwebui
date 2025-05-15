#!/bin/bash
source .env

# Step 0: Stop and remove any existing Docker images
docker stop open-webui cloudflared watchtower ollama
sleep 2 # Waits 2 seconds
docker rm open-webui cloudflared watchtower ollama
sleep 2 # Waits 2 seconds

# Step 1: Create the custom Docker network NB: May throw an error if it already exists, it's fine if it does
docker network create docker_bridge
sleep 2  # Waits 2 seconds.

# Step 2: Run the Ollama Container. Note, NVIDIA GPUs may need settings changed here.
docker run -d \
  --network docker_bridge \
  -e OLLAMA_BASE_URL=http://host.docker.internal \
  --restart always \
  --device /dev/kfd --device /dev/dri \
  -v ollama:/root/.ollama \
  -p 11434:11434 \
  --name ollama ollama/ollama:rocm

# Step 3: Run the WebUI container
docker run -d \
    -p 3000:8080 \
    --network docker_bridge \
    -v open-webui:/app/backend/data \
    --name open-webui \
    --restart always ghcr.io/open-webui/open-webui:main
sleep 2  # Waits 2 seconds.

# Step 4: Run the Cloudflare container (replace <CLOUDFLARED_KEY> with your actual token)
docker run -d \
    --network docker_bridge \
    --name cloudflared \
    cloudflare/cloudflared:latest tunnel --no-autoupdate run --token $CLOUDFLARED_KEY --url=$LOCAL_IP
sleep 2  # Waits 2 seconds.

# Step 5: Add Watchtower for automatic updates
docker run -d --name watchtower \
  --volume /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower -i 300 open-webui
sleep 2  # Waits 2 seconds.

# Step 6: Check container status
docker ps
