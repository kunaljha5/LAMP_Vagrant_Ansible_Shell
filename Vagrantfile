# -*- mode: ruby -*-
# vi: set ft=ruby :
file_to_disk = './tmp/large_disk.vdi'
Vagrant.configure("2") do |config|


N = 3
(1..N).each do |machine_id|
  config.vm.define "machine#{machine_id}" do |machine|
    machine.vm.box = "bento/ubuntu-16.04"
    machine.vm.hostname = "machine#{machine_id}"
    machine.vm.network "private_network", ip: "192.168.77.#{20+machine_id}"
    machine.vm.provider "virtualbox" do |v|
    v.name = "machine#{machine_id}"
    v.memory = 2048
    v.cpus = 2
    end





    config.ssh.insert_key = false


    # Only execute once the Ansible provisioner,
    # when all the machines are up and ready.
    if machine_id == N
      machine.vm.provision :ansible do |ansible|
        # Disable default limit to connect to all the machines
        ansible.limit = "all"
        ansible.inventory_path = "hosts"
        ansible.playbook = "playbooks/playbook_init.yaml"
      end
    end
  end
end

end
