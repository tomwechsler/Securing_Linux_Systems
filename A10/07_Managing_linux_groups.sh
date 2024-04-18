#Working on rocky in a root session

sudo -i

#Group membership
id vagrant

id u99

#Create some groups
groupadd mkt
groupadd sales

#Did it work
getent group

cat /etc/group

#Change group membership (this does override)
usermod -G sales u99

id u99

usermod -G mkt u99

id u99

#To append
usermod -aG sales u99

id u99

#Delete a group
groupdel sales

id u99



#Within the useradd or usermod command we have -g for the users primary group. This can be a 
#single value only; however, the -G for secondary groups allow for many groups. We can specify
#a new list or use -a the append the existing groups.