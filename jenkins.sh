
#!/bin/bash

# scripts from https://www.jenkins.io/doc/book/installing/linux/

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum -y upgrade
# Add required dependencies for the jenkins package
sudo yum -y install java-11-openjdk

sudo yum -y install -y jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins.service
sudo systemctl start jenkins