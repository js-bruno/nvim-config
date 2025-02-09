FROM ubuntu:20.04

USER root
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install -y python3 sudo gcc git curl vim\
  && rm -rf /var/lib/apt/lists/*

RUN useradd -rm -d /home/vimuser -s /bin/bash -g root -G sudo -u 1001 vimuser
WORKDIR /home/vimuser

RUN curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
RUN chmod u+x nvim.appimage

RUN ./nvim.appimage --appimage-extract
RUN ./squashfs-root/AppRun --version
RUN ln -s ./squashfs-root/AppRun /usr/bin/nvim

RUN mkdir -p /opt/nvim

USER vimuser
RUN echo "alias nvim='~/squashfs-root/AppRun'" >> .bashrc

RUN mkdir -p .config/nvim
COPY ./lsp_tutorial/ .config/nvim/

# RUN git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

# RUN echo PATH='$PATH:/opt/nvim/'  >> .bashrc

