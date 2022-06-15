echo "artifactory soft nofile 32000" >> /etc/security/limits.conf
echo "artifactory hard nofile 32000" >> /etc/security/limits.conf

wget https://releases.jfrog.io/artifactory/bintray-artifactory/org/artifactory/oss/jfrog-artifactory-oss/7.38.10/jfrog-artifactory-oss-7.38.10-linux.tar.gz

mkdir jfrog

mv jfrog-artifactory-oss-7.38.10-linux.tar.gz jfrog

cd jfrog

export JFROG_HOME=$(pwd) 

ls -l

tar -xvf jfrog-artifactory-oss-7.38.10-linux.tar.gz

mv artifactory-oss-7.38.10 artifactory

$JFROG_HOME/artifactory/app/bin/installService.sh

systemctl start artifactory.service