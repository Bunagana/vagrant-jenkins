# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

  config.vm.define :jk do |jk_config|
    jk_config.vm.box = "geerlingguy/centos7"
    jk_config.vm.hostname = "jk"
    jk_config.vm.network :private_network, ip: "192.168.56.20"
    jk_config.vm.network "forwarded_port", guest: 8080, host: 8080
    jk_config.vm.network "forwarded_port", guest: 80, host: 8080
  
    jk_config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "4096"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
    end

    jk_config.vm.provision :shell, path: "jenkins.sh"
  end

  # set up sonarqube
  config.vm.define :sonar do |sonar_config|
    sonar_config.vm.box = "geerlingguy/centos7"
    sonar_config.vm.hostname = "sonar"
    sonar_config.vm.network :private_network, ip: "192:168.56.12"
    sonar_config.vm.network "forwarded_port", guest: 9000, host: 9000

    sonar_config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end

    sonar_config.vm.provision :shell, path: "sonar.sh"

  end

  # set up artifactory
  config.vm.define :artifactory do |artifactory_config|
    artifactory_config.vm.box = "geerlingguy/centos7"
    artifactory_config.vm.hostname = "artifactory"
    sonar_config.vm.network :private_network, ip: "192:168.56.13"
    artifactory_config.vm.network "forwarded_port", guest: 8081, host: 8081

    artifactory_config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end

    artifactory_config.vm.provision :shell, path: "artifactory.sh"

  end

end
