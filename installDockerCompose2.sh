#!/usr/bin/env bash

set -eu

# Use script: /bin/bash -c "$(curl -fsSL https://artifactory.apps.bancolombia.com/artifactory/wsl/docker-compose/installDockerCompose2.sh)" 
# Download Docker Compose ans version on Artifactory: https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-$(uname -s)-$(uname -m)

echo "sudo curl -L https://artifactory.apps.bancolombia.com/artifactory/wsl/docker-compose/2.2.3/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose"
sudo curl -L "https://artifactory.apps.bancolombia.com/artifactory/wsl/docker-compose/2.2.3/docker-compose-Linux-x86_64" -o /usr/local/bin/docker-compose

echo "sudo chmod +x /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

echo "docker-compose --version"
docker-compose --version