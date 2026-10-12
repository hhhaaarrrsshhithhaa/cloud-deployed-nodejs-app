
#!/usr/bin/env bash

set -euo pipefail

IMAGE_NAME="cloud-deployed-nodejs-app"
CONTAINER_NAME="cloud-nodejs-app"
PORT="${PORT:-3000}"

echo "Building Docker image..."

docker build -t "$IMAGE_NAME" .

echo "Removing previous container if it exists..."

docker rm -f "$CONTAINER_NAME" 2>/dev/null || true

echo "Starting application container..."

docker run -d \
  --name "$CONTAINER_NAME" \
  --restart unless-stopped \
  -p "127.0.0.1:${PORT}:3000" \
  "$IMAGE_NAME"

echo "Deployment completed."
echo "Check application health at http://127.0.0.1:${PORT}/health"
