INSTALL_DIR="/root/"

export XDG_CONFIG_HOME="${INSTALL_DIR}.config"
export XDG_DATA_HOME="${INSTALL_DIR}.local/share"
export XDG_STATE_HOME="${INSTALL_DIR}.local/state"
export TERM="xterm-256color"
export DISPLAY=":0"

wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo ln -s "${INSTALL_DIR}nvim-linux64/bin/nvim" /usr/local/bin/nvim
sudo apt-get install -y python3-venv

