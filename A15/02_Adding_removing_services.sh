#Working on rocky in a root session

#List the info
firewall-cmd --list-all

#The firewalld.conf file
vim /etc/firewalld/firewalld.conf

#List the info
firewall-cmd --list-all

#We do not need some services
firewall-cmd --remove-service=cockpit

firewall-cmd --remove-service=dhcpv6-client

#Install apache
dnf install httpd

#Start the service
systemctl enable --now httpd

(from remote) curl 192.168.56.101

#Add http
firewall-cmd --add-service=http

firewall-cmd --list-all

(from remote) curl 192.168.56.101

#List the persistemt config
firewall-cmd --list-all --permanent

#Make it persistent
firewall-cmd --runtime-to-permanent



#Many common services will have an XML file representing their needs, we add these files to the
#configuration using--add-service. When tested, we can persist the settings with --runtime-to-permanent.