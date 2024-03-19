# -- mode: ruby --
# vi: set ft=ruby :

BOX_BASE = "ubuntu/focal64"
RAM = "512"
CPUS = "2"
SERVER = "server"
CLIENT = "client"

Vagrant.configure("2") do |config|
  config.vm.box = BOX_BASE

  # Configuración del servidor
  config.vm.define SERVER do |server|
    server.vm.hostname = SERVER
    server.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', RAM ]
        vb.customize [ 'modifyvm', :id, '--cpus', CPUS ]
        vb.customize [ 'modifyvm', :id, '--name', SERVER ]
    end
    server.vm.provision "shell", path: "server_script.sh"
    server.vm.network "private_network", ip: "192.168.56.2"
  end

  # Configuración del cliente
  config.vm.define CLIENT do |client|
    client.vm.hostname = CLIENT
    client.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', RAM ]
        vb.customize [ 'modifyvm', :id, '--cpus', CPUS ]
        vb.customize [ 'modifyvm', :id, '--name', CLIENT ]
    end
    client.vm.provision "shell", path: "client_script.sh"
    client.vm.network "private_network", ip: "192.168.56.3"
  end
end
