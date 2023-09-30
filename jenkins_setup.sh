#!/bin/bash

## install jenkins

#!/bin/bash

# Add the Jenkins repository key to the system
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Add the Jenkins repository to yum
sudo sh -c 'echo -e "[jenkins]\nname=Jenkins\nbaseurl=https://pkg.jenkins.io/redhat-stable/\ngpgcheck=1" > /etc/yum.repos.d/jenkins.repo'

# Update the package list
sudo yum update -y

# Install Jenkins
sudo yum install jenkins -y

# Start the Jenkins service and set it to start on boot
sudo systemctl start jenkins
sudo systemctl enable jenkins

# Allow Jenkins to communicate on port 8080 (default Jenkins port)
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --reload

# Print the initial Jenkins administrator password
echo "Initial Jenkins Administrator Password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword


