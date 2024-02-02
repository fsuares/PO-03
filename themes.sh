

#!/bin/bash

sudo apt install wget

echo 'Creating directorys...'
mkdir ~/.icons ~/.themes
mkdir ~/Downloads/Themes ~/Downloads/Icons

echo 'Downloading GTK Theme and Icons...'
cd ~/Downloads

wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip -d ~/Downloads/Themes
cd ~/Downloads/Themes
mv gtk-master Dracula

cd ~/Downloads
wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip Dracula.zip -d ~/Downloads/Icons

sudo cp -r ~/Downloads/Themes/Dracula ~/.themes /usr/share/themes
sudo cp -r ~/Downloads/Icons/Dracula ~/.icons /usr/share/icons

gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

gsettings set org.gnome.shell.extensions.user-theme name "Dracula"

gsettings set org.gnome.desktop.interface icon-theme "Dracula"


