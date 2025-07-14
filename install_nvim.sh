#!/bin/bash
#set -o errexit
#set -o setnounset
#set -o piperfail
#set -o xtrace

# RUN THIS FIRST
# export PATH="$PATH:HOME/bin"
# export PATH=$PATH:~/bin
# echo -e 'export PATH="$PATH:HOME/bin"' >> "$HOME/.bashrc"

mv ./ "$HOME/.config/nvim"
source "$HOME/.bashrc"


curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod +X nvim-linux-x86_64.appimage

mkdir -p "$HOME/bin/"

ln -s "$PWD/nvim-linux-x86_64.appimage" "$HOME/bin/nvim"

# touch ~/bin/nvim | echo -e '/opt/nvim/nvim-linux-x86_64.appimage' >> ~/bin/nvim
