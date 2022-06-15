
# script following https://www.vultr.com/docs/how-to-install-sonarqube-on-centos-7/
# https://blog.yasithab.com/centos/install-sonarqube-on-centos-7/

sudo yum update -y
sudo shutdown -r
sudo yum install vim wget curl unzip -y

sudo setenforce 0
sudo sed -i 's/^SELINUX=enforcing$/SELINUX=permissive/' /etc/selinux/config

sudo useradd sonar
sudo passwd sonar


sudo yum install -y java-11-openjdk

sudo yum install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

sudo yum -y install postgresql14-server postgresql14

sudo /usr/pgsql-14/bin/postgresql-14-setup initdb

sudo systemctl enable --now postgresql-14

# Step to follow

# Updating postgres setting to work with sonar

# Creating a user/password for sonar and a database/table

# Launching the postgresql server

# Installing sonarqube

