#!/bin/bash

rm -rf ~/.vim
rm -v ~/.vimrc

ln  -sfv $PWD/.vimrc ~/
ln -sfv $PWD/.vim ~/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Then go to ~/.vim/
# vim kfj-bundle
# install required plugins
