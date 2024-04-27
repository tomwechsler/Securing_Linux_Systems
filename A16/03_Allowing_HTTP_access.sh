#Working on ubuntu in a root session

sudo -i

#Install apache2
apt update

apt install -y apache2

#SWITCH TO rocky
curl 192.168.56.102 #It works not

#Set a allow rule
ufw allow from 192.168.56.101 to any port http

#Check the rules
ufw status

#SWITCH TO rocky
curl 192.168.56.102 #It works