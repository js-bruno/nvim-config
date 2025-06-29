#!/bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+ nvim-linux-x86_64.appimage
mkdir -p /opt/nvim

touch ~/bin/nvim | echo -e '/opt/nvim/nvim-linux-x86_64.appimage' >> ~/bin/nvim
