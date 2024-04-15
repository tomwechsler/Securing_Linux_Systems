#Working on ubuntu

#Display the manual page for the 'polkit' command
man polkit

#Use 'sudo' to display the contents of the '51-ubuntu-admin.conf' file in the '/etc/polkit-1/localauthority.conf.d' directory
sudo cat /etc/polkit-1/localauthority.conf.d/51-ubuntu-admin.conf

#Print the user and group IDs for the current user
id

#Use 'sudo' to add the 'vagrant' user to the 'sudo' group
sudo usermod -aG sudo vagrant

#Print the user and group IDs for the current user
id

exit

#Start new SSH Session

#Change a line
sudo visudo

#Break the sudo function

sudo visudo

echo $$

#Start an new terminal and SSH session
#In the new terminal
pkttyagent -p <bash pid>

#Switch to the original SSH session
pkexec visudo

#Switch to the new session and choose the account/password