#!/bin/bash

# github.com/felipendc

# First thing first: Got to Software and enable the repos that will suit my needs!

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
sudo dnf install -y dnf-plugin-system-upgrade 
sudo dnf install -y google-chrome-stable 
sudo dnf install -y gnome-tweaks 
sudo dnf install -y inkscape 
sudo dnf install -y code 
sudo dnf install -y brasero 
sudo dnf install -y qbittorrent 
sudo dnf install -y mesa-libGLU 
sudo dnf install -y clipgrab 
sudo dnf install -y qwinff 
sudo dnf install -y vlc 
sudo dnf install -y gstreamer1-libav 
sudo dnf install -y ffmpeg
sudo dnf install -y clementine
sudo dnf install -y filezilla
sudo dnf install -y wine
sudo dnf install -y deepin-screenshot
sudo dnf install -y simplescreenrecorder
sudo dnf install -y deepin-screen-recorder
sudo dnf install VirtualBox	

# YUM PKGS:

# Onlyoffice:
sudo yum install https://download.onlyoffice.com/repo/centos/main/noarch/onlyoffice-repo.noarch.rpm
sudo yum install epel-release
sudo yum check-update 
sudo yum update 
sudo yum install -y onlyoffice-desktopeditors 
sudo yum install -y fuse-exfat





# Install pkgs rpm:

# Winff from fedora 30
cd ramdon
sudo sudo rpm -i winff-1.5.5-9.1.x86_64.rpm
cd ../



#########################################
### Run scripts and install packages ####
#########################################


######### Set my favorite picture as background wallpaper:
cd vicyos-background-wallpaper
sudo cp -r *.jpg /usr/share/backgrounds/fedora-workstation
gsettings set org.gnome.desktop.background picture-uri "/usr/share/backgrounds/fedora-workstation/74880.jpg"
cd ../

# Install XDownloader Manager: 
cd random && tar -xf xdm*.tar.xz  && sudo ./install.sh && rm -r install.sh readme.txt && cd ../

# Install SoundCloud Downloader:
cd scdl && sudo pip3 install scdl && cd ../

# Install Intel Screen Tearing fix:
cd vicyos-fedora-screen-tearing-for-intel-fix && sudo sh ./vicyos-install-linux-screen-tearing-fix.sh && cd ../


# Auto Apply Gnome Tweak Tool configs: (Will keep getting Rolling updates!) (If anything goes wrong, it'll break the System!)

#The files altered by gnome-tweak-tool are saved at: ~/.config/dconf/user 
#(this is the dconf database, a binary file where most user settings are #stored)
#and various other configuration files under ~/.config (these are all text files)
cd vicyos-fedora32-dconf 
sudo rm -r ~/.config/dconf/user
cp -r user* ~/.config/dconf/
cd ../

# Set Github email and nickname:
sudo sh ./upall/setup-git-v1.sh






