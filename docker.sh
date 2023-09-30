

#!/bin/bash

# Update the system
sudo yum update -y

# Install required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker
sudo systemctl start docker
sudo systemctl enable docker

# Add the current user to the docker group (optional, allows running Docker without sudo)
sudo usermod -aG docker $(whoami)

# Print Docker version
docker --version

# Print a message to prompt the user to log out and back in for group membership changes to take effect
echo "Please log out and back in to use Docker without sudo."

echo "Docker installation script finished."

