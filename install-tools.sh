#!/bin/sh

sudo apt update -y
sudo apt install -y \
  bat \
  ripgrep \
  fd-find

rm -rf ~/.fzf && git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

mkdir -p ~/.local/bin
rm -rf ~/.local/bin/broot && wget https://dystroy.org/broot/download/x86_64-linux/broot -O ~/.local/bin/broot
chmod +x ~/.local/bin/broot
rm -rf ~/.local/bin/bat && ln -s /usr/bin/batcat ~/.local/bin/bat

curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
