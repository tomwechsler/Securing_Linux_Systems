#Working on ubuntu

#Create a ldif file (Leightweight Directory Interchange Format)
vim user.ldif

#Copy the content from the example file

#Save and exit

#Add the user
ldapadd -x -D cn=admin,dc=example,dc=com -W -f user.ldif # -x Use simple authentication; -D Use the Distinguished Name; -W Prompt for simple authentication; -f file

#Search
ldapsearch -x -b dc=example,dc=com '(objectClass=inetorgPerson)' cn

ldapsearch -x -b dc=example,dc=com '(objectClass=posixGroup)'

#Set the password for the user (Attention first we hav to set the user password, after that we enter the admin password)
ldappasswd -x -D cn=admin,dc=example,dc=com -S uid=john,ou=People,dc=example,dc=com -W   #-S Prompt for new password; -W Prompt for bind password