#!/bin/bash

# github.com/felipendc

# First thing first: 
# Open SOFTWARE app and Go to "Software and Repo MENU"
# Enable the repos that will suit my needs! (Google-Chrome/NVIDIA/Linux Firmware) and others! 
# Disable the AUTOMATIC UPDATES on "UPDATES PREFERENCES MENU"


# To update your Fedora: 
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
















