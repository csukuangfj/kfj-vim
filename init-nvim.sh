#!/bin/bash

# sudo apt-get install python3-pip3
# sudo apt-get install python3-pip
# pip3 install --upgrade msgpack
# pip3 install --upgrade neovim

# wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
# tar xf nvim-linux64.tar.gz
#
# add nvim-linux64/bin to PATH
# cd nvim-linux64/bin; cp nvim vim
#
# For macOS 10.15.7, Catalina,
# The default python3.8 cannot be used to run `pip install neovim`
# Install pyenv and install Python 3.6.6 as a workaround.
#
# brew install neovim

mkdir -p ~/.config/nvim

cat << EOF > ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
EOF
