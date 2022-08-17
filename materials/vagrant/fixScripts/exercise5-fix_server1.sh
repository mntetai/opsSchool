#!/bin/bash
#add fix to exercise5-server1 here
#client side ssh
sudo su
echo '   PasswordAuthentication yes' >> /etc/ssh/ssh_config
echo '   StrictHostKeyChecking no' >> /etc/ssh/ssh_config
sudo passwd -d vagrant
sudo service sshd restart
