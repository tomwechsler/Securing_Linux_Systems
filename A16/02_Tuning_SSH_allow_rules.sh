#Working on ubuntu in a root session

#Check the status
ufw status

#The IP infos
ip a sh

#Set a new rule
ufw allow from 10.0.2.0/24 to any port 22

#The numbered output
ufw status numbered

#Test a rule deletion
ufw --dry-run delete 3

#It was just a test
ufw status

#Now delete rule 3 and 1
ufw delete 3

ufw delete 1

#Lets proof
ufw status

#SWITCH TO rocky
ssh 192.168.56.102 #Does not work

#Exit the ubuntu ssh session and start the ssh session again