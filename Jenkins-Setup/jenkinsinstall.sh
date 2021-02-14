
#!/bin/bash

echo "Installing Ansible"
sudo yum -y install ansible
sudo yum install git

echo "Installing JAVA"
sudo yum update -y
sudo yum install java-1.8.0-openjdk-devel

echo "Installing Jenkins APPLICATION"
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum install jenkins -y

echo "CONFIGURING JENKINS SERVER"
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins

















