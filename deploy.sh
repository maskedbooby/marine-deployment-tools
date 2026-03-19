#!/bin/bash

# Maritime Infrastructure Deployment Script
# Maintainer: maskedbooby

echo "[*] Starting deployment process..."

APP_NAME="tide-monitor"
IMAGE_NAME="maritime/tide-monitor:latest"
PORT=8080

echo "[*] Pulling latest container image..."
docker pull $IMAGE_NAME

echo "[*] Cleaning up old container..."
docker stop $APP_NAME 2>/dev/null
docker rm $APP_NAME 2>/dev/null

echo "[*] Launching new container..."

docker run -d \
  --name $APP_NAME \
  -p $PORT:8080 \
  -e ENVIRONMENT=production \
  -e SERVICE_REGION=ap-south-1 \
  $IMAGE_NAME

echo "[+] Deployment completed successfully."
echo "[*] Logs available via: docker logs $APP_NAME"
