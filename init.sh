#!/bin/bash

rm -rf ~/.vim
rm -v ~/.vimrc
rm -v ~/.ideavimrc

ln  -sfv $PWD/.vimrc ~/
ln  -sfv $PWD/.ideavimrc ~/
ln -sfv $PWD/.vim ~/
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Then go to ~/.vim/
# vim kfj-bundle
# install required plugins
