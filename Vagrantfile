# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "Dima"
  config.vm.synced_folder ".", "/home/vagrant/code"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provision "shell", path: "bootstrap.sh", keep_color: true
end