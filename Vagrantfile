# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "peru/ubuntu-20.04-desktop-amd64"
  config.vm.network "forwarded_port", guest: 5000, host: 5000, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 3000, host: 3000, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 8080, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./xfer", "/vagrant_data"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "8192"
  end
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install -y git
    apt-get install -y ansible
  SHELL
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    cd /home/vagrant
    git clone https://github.com/edgiese/devsetup
    cd /home/vagrant/devsetup
    ./get_requirements.sh
    ansible-playbook --verbose devsetup.yaml
  SHELL
end
