# -*- mode: ruby -*-
# vi: set ft=ruby :

# Note: default login is vagrant/vagrant
# I also recommend installing vagrant-vbguest and vagrant-cachier plugins
# "vagrant plugin install vagrant-vbguest"
# "vagrant plugin install vagrant-cachier"

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.network "forwarded_port", guest: 5901, host: 15901

    config.vm.provision :shell, path: "bootstrap.sh"
    config.vm.provision :shell, path: "userscript.sh", privileged: false

    config.vm.provider "virtualbox" do |v|
        v.gui = false
    end

    if Vagrant.has_plugin?("vagrant-cachier")
        config.cache.scope = :box
    end

end
