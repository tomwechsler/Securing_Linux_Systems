#Working on ubuntu

#A comprehensive list
ls -l /etc/ssl/certs

#Are there any upgradables?
sudo apt list --upgradable

#We can update this list indirectly
sudo apt update && sudo apt -y upgrade