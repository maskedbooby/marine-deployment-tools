#!/bin/bash

# Maritime Infrastructure Deployment Script
# Maintainer: maskedbooby
# Purpose: Deploy monitoring container for marine telemetry systems

echo "[*] Starting deployment process..."

APP_NAME="tide-monitor"
IMAGE_NAME="maritime/tide-monitor:latest"
PORT=8080

echo "[*] Pulling latest container image..."
docker pull $IMAGE_NAME

echo "[*] Stopping existing container if running..."
docker stop $APP_NAME 2>/dev/null
docker rm $APP_NAME 2>/dev/null

echo "[*] Starting new container instance..."

docker run -d \
  --name $APP_NAME \
  -p $PORT:8080 \
  -e ENVIRONMENT=production \
  -e SERVICE_REGION=ap-south-1 \
  $IMAGE_NAME

echo "[+] Deployment completed successfully."

echo "[*] Monitoring service available on port $PORT"