#Working on ubuntu in a root session
sudo -i

#Infos
who

#Check
ufw status

#Set a new SSH rule
ufw allow proto tcp from 10.0.2.2 to any port 22

#Check
ufw status

#A what if
ufw --dry-run delete 1

#Delete the rule
ufw delete 1