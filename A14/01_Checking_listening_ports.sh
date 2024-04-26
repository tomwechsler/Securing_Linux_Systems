#Working on ubuntu

#List the open ports
ss -ntl

#List the open ports and the process behind
sudo ss -ntlp

#Specific for ssh
ss -l '( sport = :ssh )'

#List the ip
ip a sh

#Lets config ssh
sudo vim /etc/ssh/sshd_config

AddressFamily inet
ListenAddress 10.0.2.15

#Save and exit

#Restart the service
sudo systemctl restart sshd

#Check again
ss -l '(sport = :ssh)'