#!/bin/bash

##### Script to do batch installs via pacman. No AUR stuff here. #####

sudo pacman -Syu --needed --noconfirm rxvt-unicode i3-gaps xorg xorg-server xorg-xinit python python-pip networkmanager network-manager-applet libreoffice-fresh pymol arandr lxappearance pavucontrol alsa-utils deepin-screenshot feh nautilus firefox gimp htop inkscape neofetch redshift texlive-latexextra texlive-core vlc zathura-pdf-mupdf acpi_call gnome-keyring python-pyqt5 doxygen stress swig git udiskie vim light ghostscript imagemagick tmux i7z pulseaudio wget rofi ipython python-numpy python-matplotlib python-scipy python-seaborn python-statsmodels python-pandas vim xfce4-power-manager picom dmenu discord signal-desktop gst-plugins-{bad,base,good,ugly} ttf-roboto-mono-nerd

sudo systemctl enable NetworkManager
