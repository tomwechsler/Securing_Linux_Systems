#Working on ubuntu in a root session

sudo -i

#Check the hostname
hostnamectl

#The hostname can be resolved by systemd-resolve
ping ubuntu

#There is probably not an entry for ubuntu
grep ubuntu /etc/hosts

cat /etc/hosts 

#The hostname ubuntu is resolved through DNS running on 127.0.0.53
dig ubuntu 

#Check the open ports
ss -ntl

ss -ntlp

#Update metadata
apt update 

#Install apache2 (httpd in centos) and CLI browser
apt install -y apache2 w3m

#Use the browser
w3m localhost

#Show listening TCP ports, port 80 (HTTP) will be open
ss -ntl

ss -ntlp