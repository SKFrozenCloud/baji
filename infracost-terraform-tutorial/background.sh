#!/bin/bash
# Install prerequisites
apt-get update && apt-get install -y \
    git \
    docker.io \
    curl

# Install terraform
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform

# Install Infracost
curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh

# Install nektos/act
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash

# GitHub CLI installation (optional for better management)
apt-get install gh -y

# Git setup
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

# Create a Terraform project directory
mkdir -p /home/kodekloud/terraform && cd /home/kodekloud/terraform
terraform init

# Prepare GitHub Actions directory
mkdir -p /home/kodekloud/.github/workflows
