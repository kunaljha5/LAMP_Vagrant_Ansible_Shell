#!/bin/bash
cd /home/ejhakun/emptydir/ansible/
vagrant ssh machine2  <<EOF
sudo -i 
apt-get install python -y
sleep 25
EOF
 


cd /home/ejhakun/emptydir/ansible/
vagrant ssh machine1  <<EOF
sudo -i 
apt-get install python -y
sleep 25
EOF




cd /home/ejhakun/emptydir/ansible/
vagrant ssh machine3  <<EOF
sudo -i 
apt-get install python -y
sleep 25
EOF
