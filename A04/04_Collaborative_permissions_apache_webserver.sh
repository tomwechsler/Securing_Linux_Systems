#Working on rocky

#Check the umask
umask

#Install apache
sudo dnf install -y httpd

#List the perms
ls -ld /var/www/html

#What the groups
tail /etc/group

#Change the group and perms
sudo chgrp apache /var/www/html

sudo chmod -v 2750 /var/www/html

umask

sudo vim /var/www/html/index.html
#Write some text and save + exit

#We do not have permissions
ls -l /var/www/html/index.html

sudo !!

#Lets start the apache service
sudo systemctl enable --now httpd

#Curl localhost
curl localhost