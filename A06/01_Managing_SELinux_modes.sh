#Working on rocky

#Check the modes
getenforce

#The SELinux config
cat /etc/selinux/config

#Lets work on an example
systemctl status httpd

sudo systemctl start httpd

curl localhost

#Change the context (we will discuss it later)
sudo chcon -t user_home_t /var/www/html/index.html

#Curl does not work anymore
curl localhost

#Set SELinux to permissive
sudo setenforce permissive

#Curl does work
curl localhost

#But there is a SELinux violation
sudo ausearch -m avc

sudo ausearch -m avc | tail -n 1

#Change the context back
sudo chcon -t httpd_sys_content_t /var/www/html/index.html

#Set SELinux to enforcing
sudo setenforce enforcing

#Curl does work the SELinux context is correct
curl localhost