#!/bin/bash

#####simple script to create directories under the current username and copy ALL config files####

chown -R "$USER" ../dotfiles/ ../homestuff
sudo -u "$USER" mkdir -p /home/${USER}/
sudo -u "$USER" mkdir -p /home/${USER}/Pictures/
sudo -u "$USER" cp -r ../dotfiles/.[^.]* /home/${USER}/
sudo -u "$USER" cp -r ../homestuff/* /home/${USER}/
sudo -u "$USER" mkdir -p /home/${USER}/.config/gtk-3.0/
sudo -u "$USER" cp ../special/gtk.css /home/${USER}/.config/gtk-3.0/
