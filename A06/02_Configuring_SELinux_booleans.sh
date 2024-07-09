#Working on rocky

#Get a list
getsebool -a

getsebool zoneminder_run_sudo

getsebool -a | grep policy

#Install SELinux Utilities (setroubleshoot adds log information in /var/log/messages)
sudo dnf install -y policycoreutils setools setools-console setroubleshoot

#Get a list
sudo semanage boolean --list

sudo semanage boolean --list | head

#Search for policy
sudo semanage boolean --list | grep policy

#Change the value
sudo setsebool secure_mode_policyload on #setsebool secure_mode_policyload on (-P)

#Search for policy
sudo semanage boolean --list | grep policy

#Check SELinux
getenforce

#To change SELinux at this time will not work anymore
sudo setenforce 0