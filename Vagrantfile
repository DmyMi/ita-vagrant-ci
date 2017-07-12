# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'

if !ENV.has_key?("GITLAB_CI_TOKEN")
  raise "Please specify the `GITLAB_CI_TOKEN` environment variable"
end

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.cpus = 2
    vb.memory = "4096"
  end
  
  config.vm.provision "shell", path: "scripts/init.sh"
  
  config.vm.define "runner_shell" do |rs|
    rs.vm.box = "ubuntu/xenial64"
    rs.vm.provision "shell", path: "scripts/shell_init.sh"
    rs.vm.provision "shell", path: "scripts/runner_shell.sh", args: ENV["GITLAB_CI_TOKEN"]
  end

  config.vm.define "build_docker" do |rd|
    rd.vm.box = "ubuntu/xenial64"
    rd.vm.provision "shell", path: "scripts/docker_init.sh"
    rd.vm.provision "shell", path: "scripts/build_docker.sh", args: ENV["GITLAB_CI_TOKEN"]
  end
end
