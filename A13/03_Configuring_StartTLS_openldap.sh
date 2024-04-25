#Working on ubuntu in a root session

sudo -i

#Copy the public keys into the ldap directory
cp /etc/ssl/certs/{myca,ubuntu}.crt /etc/ldap

#Copy the private key into the ldap directory
cp /etc/ssl/private/ubuntu.key /etc/ldap

#Change the group for the private key
chgrp openldap /etc/ldap/ubuntu.key

#Change the permissions
chmod -v 640 /etc/ldap/ubuntu.key

#Create the ldif file
vim tls.ldif

#Copy the content from the example file

#Save and exit

#Edit the config
ldapmodify -Q -Y EXTERNAL -H ldapi:/// -f tls.ldif # -Q Enable SASL (Simple Authentication and Security Layer); -Y mechanism for authentication; -H ldapuri

#Test
ldapwhoami -x -ZZ -H ldap://ubuntu # -ZZ require StartTLS

#Does not work
ldapwhoami -x -ZZ