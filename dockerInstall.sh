#!/usr/bin/env bash

# Use:/bin/bash -c "$(curl -fsSL https://artifactory.apps.bancolombia.com/artifactory/wsl/dockerInstall.sh)"

echo -e "\n>>> Start wsl-vpnkit"
echo "wsl.exe -d wsl-vpnkit service wsl-vpnkit start"
wsl.exe -d wsl-vpnkit service wsl-vpnkit start

# exit when any command fails
set -e

echo -e "\n>>> Base system with the latest available package"
echo "sudo apt-get update"
sudo apt-get update

# Install Docker dependencies
echo ""
echo "sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2 -y"
sudo apt install --no-install-recommends apt-transport-https ca-certificates curl gnupg2 -y

# Set some OS-specific variables
echo ""
echo "source /etc/os-release"
. /etc/os-release

# Make sure that apt will trust the repo
echo ""
echo "curl -fsSL https://artifactory.apps.bancolombia.com/artifactory/wsl-dockerDebian-repository/${ID}/gpg | sudo apt-key add -"
curl -fsSL "https://artifactory.apps.bancolombia.com/artifactory/wsl-dockerDebian-repository/${ID}/gpg" | sudo apt-key add -

# Add and update the repo information
echo ""
echo "deb [arch=amd64] https://artifactory.apps.bancolombia.com/artifactory/wsl-dockerDebian-repository/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/docker.list

# Update Linux software repository
echo ""
echo "sudo apt-get update"
sudo apt-get update

# Install Docker
echo ""
echo "sudo apt install docker-ce docker-ce-cli containerd.io -y"
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Add user to docker group
echo ""
echo "sudo usermod -aG docker $USER"
sudo usermod -aG docker "$USER"

echo ""
echo "Start Docker service with: "
echo ">: sudo service docker start"

echo ""
echo "Check Docker with:"
echo ">: docker run hello-world"

echo -e "\nnewgrp docker"
newgrp docker
