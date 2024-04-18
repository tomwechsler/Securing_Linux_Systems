#Working on rocky

#The shadow file (does not work)
cat /etc/shadow

cat /etc/passwd

#The shadow file with getent
getent shadow #does not work

sudo getent shadow

#Lets look at specific user
sudo getent shadow vagrant

#What does this fields mean
man 5 shadow

#The infos more readable
chage -l $USER

#Set/change a password
sudo passwd vagrant

#The infos more readable
chage -l $USER

#Lets look at specific user
sudo getent shadow vagrant

#What about 19079
date --date '19079 days ago'



#Using the command chage (change age) a user can see their own shadow data, root can see
#and change all shadow data