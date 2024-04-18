#Working on rocky in a root session

sudo -i

#The password settings
vim /etc/login.defs

#We can set for example PASS_MAX_DAYS 90

#Save and exit

#Edit the useradd defaults
vim /etc/default/useradd

#INACTIVE = 14

#Create a new user
useradd -m u99

echo "P@ssw0rd" | passwd u99 --stdin

#An other way to set the password
echo "u99:P@ssw0rd" | chpasswd

#Show the infos
chage -l u99

#Override the defaults
chage -M 99999 -m 0 -E -1 -I -1 u99

#by-pass the restrictions in login.defs
useradd -r u3

echo "P@ssw0rd" | passwd u3 --stdin

chage -l u3



#Commonly, the command passwd is used to set the password. If you use both Debian and
#RedHat based systems, the chpasswd command is useful for non-interactive password setting.
#The passwd command is also useful for locking a users account, perhaps while they are on
#vacation. Use -l to lock, -S to check status and -u to unlock.

#Having modified the login.defs, this will work for standard interactive users. For systems
#accounts we dont want the password to expire using the useradd option -r we by-pass the
#restrictions in login.defs. We can use chage to set explicit information for any account.