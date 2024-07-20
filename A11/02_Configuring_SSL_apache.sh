#Working on ubunut in a root session

sudo -i

#There are a lot of config files
tree /etc/apache2/

tree /etc/apache2/ | tail #Sites available and/or enabled

#Enable the ssl module
a2enmod ssl

#List the files
ls /etc/apache2/mods-enabled

ls -l /etc/apache2/mods-enabled

#Generate cert request
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/ubuntu.key -out /etc/ssl/certs/ubuntu.crt #Open dialogue, enter correct CN (Common Name)

#Lets proof
ls /etc/ssl/private

ls /etc/ssl/certs

#We have to edit the apache config file
vim /etc/apache2/sites-available/defaults-ssl.conf
ServerName ubuntu #Under ServerAdmin
SSLCertificateKeyFile /etc/ssl/private/ubuntu.key
SSLCertificateFile /etc/ssl/certs/ubuntu.crt

#Enable the default-ssl
a2ensite default-ssl

#Restart the service
systemctl restart apache2

#Test with the browser
w3m https://ubuntu:443

#Accept the self signed vert

#This will show a message about the cert
w3m https://localhost:443