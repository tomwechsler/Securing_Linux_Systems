#Working on ubuntu

#List the services
sudo systemctl status

#Disable atd
sudo systemctl disable --now atd

#What package has atd installed
dpkg -S atd

#Remove atd
sudo apt purge at

#Also the dependencies
sudo apt autoremove

#Don't forget to check the MAC System
sudo apparmor_status

sudo apparmor_status | less

sudo getenforce #On Red Hat based systems