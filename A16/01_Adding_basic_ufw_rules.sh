#Working on ubuntu in a root session

sudo -i

#The status
ufw status

#What is the default (DROP!)
less /etc/default/ufw

#IMPORTANT - otherwise we are not able to ssh into the system
ufw allow ssh

#The status
ufw status

#Enable the firewall
ufw enable

#The status verbose
ufw status verbose

#The status numbered
ufw status numbered