#!/bin/bash

# sudo apt-get install python3-pip3
# sudo apt-get install python3-pip
# pip3 install --upgrade msgpack

# wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
# tar xf nvim-linux64.tar.gz
#
# add nvim-linux64/bin to PATH
# cd nvim-linux64/bin; cp nvim vim

mkdir -p ~/.config/nvim

cat << EOF > ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
EOF
