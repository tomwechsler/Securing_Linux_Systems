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