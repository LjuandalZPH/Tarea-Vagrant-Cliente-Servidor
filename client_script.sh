#!/usr/bin/env bash

# Instalar las dependencias necesarias

#sudo apt update


# Copiar y ajustar permisos del archivo del servidor
sudo cp /vagrant/client.py /home/vagrant/
sudo chmod +x /home/vagrant/client.py
sudo chown vagrant:vagrant /home/vagrant/client.py
