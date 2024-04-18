#Working on rocky in a root session

sudo -i

#The vagrant user (the values between $)
sudo getent shadow vagrant

#Lets look a bit closer
awk -F$ '/vagrant/ { print "alg: " $2 "\nsalt: " $3 "\nPassword: " $4 }' /etc/shadow

#The salt and password combined = hash
openssl passwd -6 -salt V06vZn2mmoattvpA P@ssw0rd

#Change one character and we get a complete new hash
openssl passwd -6 -salt V06vZn2mmoattvpA P@ssword

#Do not specify any salt to get randomized hashes 
openssl passwd -6 P@ssword

openssl passwd -6 P@ssword

openssl passwd -6 P@ssword




#Passwords are stored within the second field of the shadow file. The entry itself is broken down
#3 separate entities: the algorithm, the SALT and the password hash.

#We can quickli create a user account setting its password. RedHat based systems have the
#option --stdin but Debian based systems do not. We can show the authentication process by
#using the openssl command