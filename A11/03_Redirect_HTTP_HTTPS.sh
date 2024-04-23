#Woking on ubuntu in a root session

sudo -i

#Check the apache config
apachectl configtest

#Lets config the 000-default.conf (Replace everything between Virtualhost with:)
vim /etc/apache2/sites-available/000-default.conf

<VirtualHost *:80>
    ServerName ubuntu 
    Redirect / https://ubuntu/ 
</VirtualHost>

#Save and exit

#Restart the service
systemctl restart apache2 

#Test
w3m http://ubuntu

#We are using https


#To secure the web server, we should ensure HTTPS is used by redirecting HTTP to HTTPS