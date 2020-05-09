#!/bin/bash

# github.com/felipendc

# THIS IS A TESTING SCRIPT. IT WILL GET IMPROVED BY TIME!

# First thing first: 
# Open SOFTWARE app and Go to "Software and Repo MENU"
# Enable the repos that will suit my needs! (Google-Chrome/NVIDIA/Linux Firmware) and others! 
# Disable the AUTOMATIC UPDATES on "UPDATES PREFERENCES MENU"

current_user_name="vicyos"

# To update your Fedora: 
sudo dnf check-update -y
sudo dnf upgrade --refresh -y


# Install the dnf-plugin-system-upgrade package if it is not currently installed:
sudo dnf install dnf-plugin-system-upgrade -y

# To install NVIDIA drivers:
sudo dnf install nvidia-driver nvidia-settings -y

# Gree With Envy:
sudo dnf install gwe -y

# Inkscape:
sudo dnf install inkscape -y

# Install Google Chrome: (Don't forget to enable the Google Chrome Repo on Software Settings)
sudo dnf install google-chrome-stable -y

# GNOME Tweak Tool:
sudo dnf install gnome-tweaks -y

######### Set my favorite picture as background wallpaper:
cd vicyos-background-wallpaper && 
sudo cp -r *.jpg /usr/share/backgrounds/fedora-workstation && 
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/fedora-workstation/74880.jpg" && 
cd ../

# Visual Studio Code:
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update -y && sudo dnf install code -y

# Onlyoffice:
sudo yum install https://download.onlyoffice.com/repo/centos/main/noarch/onlyoffice-repo.noarch.rpm -y
sudo yum install epel-release -y
sudo yum check-update -y
sudo yum update -y
sudo yum install onlyoffice-desktopeditors -y

# Auto Apply Gnome Tweak Tool configs: (Will keep getting Rolling updates!) (If anything goes wrong, it'll break the System!)

#The files altered by gnome-tweak-tool are saved at: ~/.config/dconf/user 
#(this is the dconf database, a binary file where most user settings are #stored)
#and various other configuration files under ~/.config (these are all text files)

cd vicyos-fedora32-dconf &&
sudo rm -r ~/.config/dconf/user && cp -r user* ~/.config/dconf/ && 
cd ../

# Davici resolve won't open in Fedora 32 fix!
sudo dnf install mesa-libGLU -y

# Qbittorrent:
sudo dnf install qbittorrent -y

sudo dnf install brasero -y




# Install Clipgrab:

# Step 1: Configure RPMfusion Yum Repository (It downloads RPM PKGS and its own dependencies)!
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install -y clipgrab 
sudo dnf install -y qwinff
sudo dnf install -y vlc

# h.254
sudo dnf install gstreamer1-libav

# Use the dnf utility to install packages that provide multimedia libraries:
sudo dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install -y lame\* --exclude=lame-devel
sudo dnf group upgrade -y --with-optional Multimedia

# Winff from fedora 30
cd ramdon && sudo rpm -i winff-1.5.5-9.1.x86_64.rpm && cd ../

# Samba and gufw
sudo dnf -y install samba ufw

# Install Firewall and allow Samba: 
sudo ufw enable

firewall-cmd --add-service=samba --permanent
firewall-cmd --reload

# Setup Samba
sudo smbpasswd -a $current_user_name

####################### SET UP SAMBA LATER











