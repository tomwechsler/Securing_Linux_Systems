#Working on ubuntu

#Use 'sudo' to edit the 'sudoers' file, which controls which users can run what software on which machines as which other users
sudo visudo

#Set the 'EDITOR' environment variable to 'vim', which changes the default editor for commands like 'visudo'
export EDITOR=vim

#Use 'sudo' and 'vim' (as specified by the 'EDITOR' environment variable) to edit the 'defaults' file in the '/etc/sudoers.d' directory
sudo visudo -f /etc/sudoers.d/defaults

#In the 'defaults' file, add 'EDITOR' to the 'env_keep' option, which specifies environment variables to be preserved when running commands as root
Defaults env_keep += "EDITOR"

#Use 'sudo' to edit the 'sudoers' file again, this time using 'vim' as the editor because of the 'EDITOR' environment variable
sudo visudo