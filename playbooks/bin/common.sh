#!/bin/bash 
/home/ejhakun/emptydir/ansible/
vagrant ssh machine1  -c 'sudo sed -i "s|PasswordAuthentication no|PasswordAuthentication yes|g"  /etc/ssh/sshd_config && sudo systemctl restart ssh'
vagrant ssh machine2  -c 'sudo sed -i "s|PasswordAuthentication no|PasswordAuthentication yes|g"  /etc/ssh/sshd_config && sudo systemctl restart ssh'
vagrant ssh machine3  -c 'sudo sed -i "s|PasswordAuthentication no|PasswordAuthentication yes|g"  /etc/ssh/sshd_config && sudo systemctl restart ssh'

sshpass -p vagrant ssh vagrant@machine1 "sudo apt-get install python -y && python -V"
sshpass -p vagrant ssh vagrant@machine2 "sudo apt-get install python -y && python -V"
sshpass -p vagrant ssh vagrant@machine3 "sudo apt-get install python -y && python -V"
