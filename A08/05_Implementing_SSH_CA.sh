#Working on ubuntu in a root session

sudo su -

#We create a certificate authority (-f to give a name)
ssh-keygen -f server_ca 

#Check
ls

#We can cat the public key
cat server_ca.pub

#We copy the pub key to our central store
cat server_ca.pub >> /etc/ssh/ssh_known_hosts

#We add our cert authority
vim /etc/ssh/ssh_known_hosts

@cert-authority 192.168.56.* # append <before ssh-rsa>

#Save and exit