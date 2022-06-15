
#!/bin/bash

# scripts from https://www.jenkins.io/doc/book/installing/linux/

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
echo "here111"
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
echo "here222"
sudo yum -y upgrade
echo "here333"
# Add required dependencies for the jenkins package
sudo yum -y install java-11-openjdk
echo "44ddee4444"
sudo yum -y install -y jenkins
echo "here444"
sudo systemctl daemon-reload
echo "here555"
sudo systemctl enable jenkins.service
echo "here666"
sudo systemctl start jenkins