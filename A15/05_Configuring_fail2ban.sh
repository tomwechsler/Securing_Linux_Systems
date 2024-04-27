#Working on the rocky system

#First check the log file for the sshd service
sudo journalctl --unit sshd

sudo journalctl --unit sshd | grep "Failed password"

sudo journalctl --unit sshd --since "14:00"

#We need the epel repository to install fail2ban
sudo dnf install epel-release -y

#Install fail2ban
sudo dnf install fail2ban -y

#Create a fail2ban sshd configuration file
sudo vim /etc/fail2ban/jail.d/sshd.conf

[DEFAULT]
bantime = 72h
findtime = 10m
maxretry = 3
backend = auto
[sshd]
enabled = true

#Save and exit

#Start the fail2ban service
sudo systemctl enable --now fail2ban

#Check the status of the fail2ban service
sudo systemctl status fail2ban

#Check with the fail2ban client
sudo fail2ban-client status sshd