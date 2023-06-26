#!/bin/bash

sudo -u "$USER" mkdir -p /home/${USER}/Downloads/applications
currentdir=$(pwd)
cd /home/${USER}/Downloads/applications/
sudo -u "$USER" git clone https://aur.archlinux.org/trizen.git && cd trizen
sudo -u "$USER" makepkg -si
cd ..; rm -rf trizen
mkdir -p /home/${USER}/tmp/trizen
mkdir -p /home/${USER}/.config/trizen
cd $currentdir
sudo -u "$USER" trizen -Syu google-chrome sublime-text-dev polybar vimix-gtk-themes-git vimix-icon-theme airvpn-bin betterlockscreen python-pmw djvu2pdf i3lock-color slack-desktop ttf-material-icons-git all-repository-fonts ttf-weather-icons --noconfirm --noedit --needed --skipinteg
