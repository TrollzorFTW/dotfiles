#!/bin/bash

# Update packages before install
sudo pacman -Syu

# Install i3-gaps wm
sudo pacman -Sy i3-gaps i3blocks i3lock dmenu

# Install X utilities
sudo pacman -Sy xorg-xset xorg-xrandr xcompmgr

# Install fish shell & oh-my-fish
sudo pacman -Sy fish
curl -L https://get.oh-my.fish | fish

# Install inetutils to fix hostname issue caused by omf
sudo pacman -Sy inetutils

# Install terminator as term emulator
sudo pacman -Sy terminator

# Install utils for PC metrics measurement
sudo pacman -Sy lm-sensors acpi sysstat

# Install fonts
sudo pacman -Sy noto-fonts-emoji adobe-source-code-pro-fonts

# Install devilspie for terminal transparency
sudo pacman -Sy devilspie

# Install yay
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $USER:$USER ./yay-git
cd yay-git
makepkg -si

# Install autotiling
yay -Sy autotiling
