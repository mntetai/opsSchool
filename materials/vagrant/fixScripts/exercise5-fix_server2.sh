#!/bin/bash
#add fix to exercise5-server2 here
#server side - sshd
sudo sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication no/' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/#PermitEmptyPasswords no/PermitEmptyPasswords yes/' /etc/ssh/sshd_config
sudo passwd -d vagrant

#client side ssh
sudo echo '   PasswordAuthentication yes' >> /etc/ssh/ssh_config
sudo echo '   StrictHostKeyChecking no' >> /etc/ssh/ssh_config
sudo service sshd restart