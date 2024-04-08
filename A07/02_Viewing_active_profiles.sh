#Working on opensuse with a root session

#Show the status (no profiles are in complain mode)
aa-status

#We start an example with ntp
sudo zypper install -y ntp

#Show the status (no change at this time)
aa-status

#Start the ntp service
sudo systemctl start ntpd

#Show the status (now there is a change)
aa-status

#Show the process
ps -Zp 7248

#The AppArmor extension directory
ls /etc/apparmor.d/

#The ntp file
less /etc/apparmor.d/usr.sbin.ntpd