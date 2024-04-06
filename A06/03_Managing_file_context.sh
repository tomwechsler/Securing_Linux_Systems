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




#In the main, SELinux works with soething called type enforcment. The SELinux type of a source must be
#compatible with the target SELinux type. If we need to customize content or if we make erroneous changes,
#operations may not work.

#In the main the targeted SELinux policy works with the context of processes, ports and files.
#The option -Z displays the context with most tools. Processes need to be authorized to access
#resources such as ports and files

#The /etc/shadow file is a critical system file. Processes can only access this is the correct
#context is set on the file and matches rules that allow the process access. Taking care not to
#break your system we can demonstrate SELinux at work.