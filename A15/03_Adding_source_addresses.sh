#Working on rocky in a root session

#Remove http
firewall-cmd --remove-service=http

#Make it persistent
firewall-cmd --runtime-to-permanent

#List the zones
firewall-cmd --get-active-zones

firewall-cmd --get-default-zones

#The internal zone
firewall-cmd --zone=internal --list-all

#We do not need some services
firewall-cmd --zone=internal --remove-service=cockpit

firewall-cmd --zone=internal --remove-service=dhcpv6-client

firewall-cmd --zone=internal --remove-service=mdns

firewall-cmd --zone=internal --remove-service=samba-client

#Add http
firewall-cmd --zone=internal --add-service=http

firewall-cmd --get-active-zones

firewall-cmd --get-default-zones

#Add a source
firewall-cmd --zone=internal --add-source=192.168.56.0/24 

firewall-cmd --get-active-zones

#Check
(from remote) curl 192.168.56.101

ip a sh

#Make it persistent
firewall-cmd --runtime-to-permanent