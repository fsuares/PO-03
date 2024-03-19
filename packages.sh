

#!/bin/bash

sudo apt update
sudo apt upgrade -y

SNAPS=(
    'authy'
    'bitwarden'

    'code'
    'insomnia'
    'node'
)

FLATPAKS=(
    'com.mattjakeman.ExtensionManager'
)

DEB=(
    'gnome-tweaks'
    'google-chrome-stable'
    'thunderbird'

    'xclip'
    'exa'
    'bashtop'
    'bat'

    'zsh'
    'dconf-cli'
    'vim'
)

for SNAPS in "${SNAPS[@]}"; do
    sudo snap install "$SNAPS" --classic
done

for FLATPAKS in "${FLATPAKS[@]}"; do
    flatpak install "$FLATPAKS"
done

for DEB in "${DEB[@]}"; do
    sudo apt install "$DEB" -y
done