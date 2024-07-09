#Working on rocky (take care with your own systems!!)

#Start a root session
sudo -i

#List the SELinux metadata
ls -Z /etc/shadow

#List the SELinux metadata
ps -Z

#List the SELinux metadata
ls -Zd .

#Change the context (if you do not have a test system don't do it)
chcon -t admin_home_t /etc/shadow

#This will not work anymore
chage -l vagrant

#What about the logs
ausearch -m avc -ts recent

grep sealert /var/log/messages

#Infos from the sealert (in this case not a valid solution)
sealert -l <alert-id>

#Restore the context
restorecon -v /etc/shadow

#Now it works
chage -l vagrant