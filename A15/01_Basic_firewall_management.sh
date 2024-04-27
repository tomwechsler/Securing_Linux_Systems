#Working on rocky in a root session

sudo -i

#The status
firewall-cmd --state

#The status
firewall-cmd --list-all

#Check with systemctl
systemctl status firewalld

#Start the service (we will discuss later the AllowZoneDrifting)
systemctl enable --now firewalld

#The status
firewall-cmd --state

#The status
firewall-cmd --list-all

#Public Zone wirh two interfaces

#List the permanent config
firewall-cmd --list-all --permanent

#The permanent default config XML templates
ls /usr/lib/firewalld/

#Changes to the default will be stored in
ls /etc/firewalld

#The zone config
ls /etc/firewalld/zones/