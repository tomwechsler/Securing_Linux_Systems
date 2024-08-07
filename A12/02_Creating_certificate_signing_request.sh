#Working on ubuntu in a root session

sudo -i

#Generate private key
openssl genrsa -out /etc/ssl/private/ubuntu.key

#Create a certificate signing request
openssl req -new -key /etc/ssl/private/ubuntu.key -out /tmp/ubuntu.csr #Set the Common Name to ubuntu

#Check the files
file /tmp/ubuntu.csr

#Set a password for vagrant
passwd vagrant

#Search for the PasswordAuthentication
sudo grep -R 'PasswordAuthentication' /etc/ssh/

#We set the PasswordAuthentication to yes - to be able to use scp
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config.d/60-cloudimg-settings.conf

#Restart the service
systemctl restart sshd