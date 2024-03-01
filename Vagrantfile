# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.boot_timeout = 2000

  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
  end

  config.vm.define :servidorHaproxy do |servidorHaproxy|
    servidorHaproxy.vm.box = "bento/ubuntu-22.04"
    config.vm.synced_folder "", "/home/vagrant", type: "virtualbox"
    servidorHaproxy.vm.network :private_network, ip: "192.168.90.10"
    servidorHaproxy.vm.hostname = "servidorHaproxy"
    servidorHaproxy.vm.provision "shell", path: "haproxy1.sh"
    servidorHaproxy.vm.provider "virtualbox" do |vb|
      vb.memory = "4024"
      vb.cpus = 4
    end
  end

  config.vm.define :servidor1 do |servidor1|
    servidor1.vm.box = "bento/ubuntu-22.04"
    servidor1.vm.network :private_network, ip: "192.168.90.2"
    servidor1.vm.hostname = "servidor1"
    servidor1.vm.provision "shell", path: "provision1.sh"
    servidor1.vm.provider "virtualbox" do |vb|
      vb.memory = "4024"
      vb.cpus = 4
    end
  end

  config.vm.define :servidor2 do |servidor2|
    servidor2.vm.box = "bento/ubuntu-22.04"
    servidor2.vm.network :private_network, ip: "192.168.90.3"
    servidor2.vm.hostname = "servidor2"
    servidor2.vm.provision "shell", path: "provision2.sh"
    servidor2.vm.provider "virtualbox" do |vb|
      vb.memory = "4024"
      vb.cpus = 4
    end
  end

  config.vm.define :servidor3 do |servidor3|
    servidor3.vm.box = "bento/ubuntu-22.04"
    servidor3.vm.network :private_network, ip: "192.168.90.4"
    servidor3.vm.hostname = "servidor3"
    servidor3.vm.provision "shell", path: "provision3.sh"
    servidor3.vm.provider "virtualbox" do |vb|
      vb.memory = "4024"
      vb.cpus = 4
    end
  end

end

