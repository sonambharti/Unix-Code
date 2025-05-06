#!/bin/bash

# Check for required arguments
if [ $# -lt 6 ]; then
    echo "Usage: $0 <module1> <module2> <docker_image_name> <dockerhub_username> <dockerhub_password> <dockerhub_repo> [download_url]"
    echo "Example: $0 train quantize myimage user123 mypass123 user123/myimage https://example.com/file.pt"
    exit 1
fi

MODULE1=$1
MODULE2=$2
IMAGE_NAME=$3
DOCKER_USER=$4
DOCKER_PASS=$5
DOCKER_REPO=$6
DOWNLOAD_URL=${7:-""}

# Step 1: Optional file download
if [ -n "$DOWNLOAD_URL" ]; then
    echo "Downloading from $DOWNLOAD_URL..."
    wget "$DOWNLOAD_URL" -O downloaded_file || { echo "Download failed"; exit 1; }
fi

# Step 2: Run the first Python module
echo "Running: python -m nlu_code.$MODULE1"
python -m "project_file.$MODULE1" || { echo "Module $MODULE1 failed"; exit 1; }

# Step 3: Run the second Python module
echo "Running: python -m nlu_code.$MODULE2"
python -m "project_file.$MODULE2" || { echo "Module $MODULE2 failed"; exit 1; }

# Step 4: Build Docker image
echo "Building Docker image: $IMAGE_NAME"
docker build -t "$IMAGE_NAME" . || { echo "Docker build failed"; exit 1; }

# Step 5: Login to Docker Hub
echo "Logging into Docker Hub..."
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin || { echo "Docker login failed"; exit 1; }

# Step 6: Tag and push the image
echo "Tagging and pushing image to $DOCKER_REPO"
docker tag "$IMAGE_NAME" "$DOCKER_REPO"
docker push "$DOCKER_REPO" || { echo "Docker push failed"; exit 1; }

echo "✅ Pipeline completed successfully."

#  Command to execute this file
#  ./runDownloadExecBuildDockerPipeline.sh train quantize myimage sonam123 myDockerPass sonam123/myimage https://example.com/model.pt

