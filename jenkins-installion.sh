#!/bin/bash

# Update the system
sudo yum update -y

# Install Java Development Kit (JDK)
sudo yum install -y java-11-openjdk-devel

# Add Jenkins repository
sudo tee /etc/yum.repos.d/jenkins.repo <<EOF
[jenkins]
name=Jenkins
baseurl=http://pkg.jenkins-ci.org/redhat-stable
gpgcheck=1
gpgkey=https://pkg.jenkins.io/redhat/jenkins.io.key
EOF

# Import the Jenkins repository GPG key
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

# Install Jenkins
sudo yum install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins service
sudo systemctl enable jenkins

# Open the firewall
sudo firewall-cmd --zone=public --permanent --add-port=8080/tcp
sudo firewall-cmd --reload

# Retrieve initial admin password
initialAdminPassword=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)

echo "Jenkins installation complete."
echo "Access Jenkins at http://localhost:8080"
echo "Unlock Jenkins using the following initial admin password:"
echo "$initialAdminPassword"
