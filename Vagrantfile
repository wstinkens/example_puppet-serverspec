# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.4"
  config.vm.hostname = "node"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "production/hieradata", "/tmp/vagrant-puppet/hieradata"

  config.vm.define :node do |t|
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "2"
  end

  config.vm.provision "shell", inline: <<-SHELL
    sudo rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
    sudo yum install -y puppet-agent
  SHELL

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "production/manifests"
    puppet.hiera_config_path = "production/hiera.yaml"
    puppet.module_path    = "production/modules"
    puppet.manifest_file  = "default.pp"
  end
end
