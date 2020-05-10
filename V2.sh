#!/bin/bash

# github.com/felipendc

# Update
sudo dnf check-update -y
sudo dnf upgrade --refresh -y

# Step 1: Configure RPMfusion Yum Repository (It downloads RPM PKGS and its own dependencies)!
sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Visual Studio Code:
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update -y

# dnf packages:
sudo dnf install -y \
	dnf-plugin-system-upgrade \
	install nvidia-driver \
	nvidia-settings \
	google-chrome-stable \
	gnome-tweaks \
	gwe \
	inkscape \
	code \
	brasero \
	qbittorrent \
	mesa-libGLU \
	clipgrab \
	qwinff \
	vlc \
	gstreamer1-libav \
	


	

# YUM PKGS:

# Onlyoffice:
sudo yum install https://download.onlyoffice.com/repo/centos/main/noarch/onlyoffice-repo.noarch.rpm -y &&
sudo yum install epel-release -y &&
sudo yum check-update -y &&
sudo yum update -y &&
sudo yum install onlyoffice-desktopeditors -y





# Install pkgs rpm:

# Winff from fedora 30
cd ramdon && sudo rpm -i winff-1.5.5-9.1.x86_64.rpm && cd ../

######### Set my favorite picture as background wallpaper:
cd vicyos-background-wallpaper && 
sudo cp -r *.jpg /usr/share/backgrounds/fedora-workstation && 
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/fedora-workstation/74880.jpg" && 
cd ../


# Auto Apply Gnome Tweak Tool configs: (Will keep getting Rolling updates!) (If anything goes wrong, it'll break the System!)

#The files altered by gnome-tweak-tool are saved at: ~/.config/dconf/user 
#(this is the dconf database, a binary file where most user settings are #stored)
#and various other configuration files under ~/.config (these are all text files)
cd vicyos-fedora32-dconf &&
sudo rm -r ~/.config/dconf/user && cp -r user* ~/.config/dconf/ && 
cd ../






