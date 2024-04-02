#Working on ubuntu

#Simple ping
ping 1.1

#The ping perms
ls -l /usr/bin/ping #No special permissions

#In backend the "caps"
getcap /usr/bin/ping

#Show the capabilities
capsh --print

#Change the caps
sudo setcap "" /usr/bin/ping

#Ping does not work anymore
ping 1.1

#Change the caps
sudo setcap "cap_net_raw+ep" /usr/bin/ping

#Ping does work
ping 1.1


#What are the Linux capabilities anyway?

#Well, the answer is pretty simple - A granular set of permissions assigned to a running program or 
#thread or even a program file by root user to allow process use privileged (system-level tasks) 
#like killing process owned by different users from a shell of a low privileged user. 
#Each capability provides one or more sets of related privileges to the process.