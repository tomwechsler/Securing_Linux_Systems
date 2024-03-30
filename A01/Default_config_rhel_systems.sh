#If you get some locale warnings use:
export LC_ALL="en_US.UTF-8"
#If this does not work, use:
sudo dnf install -y glibc-langpack-en

#If tab completion does not work
sudo dnf install -y bash-completion

#Install the vim enhanced editor
sudo dnf install -y vim-enhanced

#Install the man pages
sudo dnf install -y man man-pages man-db