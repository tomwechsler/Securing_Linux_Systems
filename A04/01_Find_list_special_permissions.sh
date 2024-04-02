#Working on rocky

#Create some directories
mkdir -p ~/perms/dir{1..4}

#Install tree
sudo dnf install -y tree

#Use tree
tree perms

#Change the permissions
chmod -v 1777 ~/perms/dir1 #Sticky bit set

chmod -v 2777 ~/perms/dir2 #SGID bit set

chmod -v 3777 ~/perms/dir3 #Both the sticky bit and SGID bit set

chmod -v 1770 ~/perms/dir4 #Sticky bit is set but no permissions to others

#List the permissions
ls -l ~/perms


find ~/perms/ -type d -perm /g=s,o=t #List dirs where either SGID or Sticky bit set

find ~/perms/ -type d -perm -g=s,o=t #List dirs where both SGID and Sticky bit set

find ~/perms/ -type d -perm /o=t #List dirs where Sticky bit set

find ~/perms/ -type d -perm /o=tw #List dirs where Sticky bit set or world writable

find ~/perms/ -type d -perm -o=tw #List dirs where both Stick bit and world writable set


#SUID
#Used on programs to run as the user owner during execution

#SGID
#On directories, new files are assigned the group owner from the directory

#Sticky Bit
#With this set users can only delete files they own from shared directories