#!/usr/bin/env bash

# Instalar las dependencias necesarias

#sudo apt update


# Copiar y ajustar permisos del archivo del servidor
sudo cp /vagrant/server.py /home/vagrant/
sudo chmod +x /home/vagrant/server.py
sudo chown vagrant:vagrant /home/vagrant/server.py
