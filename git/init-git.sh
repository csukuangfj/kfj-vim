#!/bin/bash

rm -fv ~/.gitconfig
rm -fv ~/.gitignore_global

ln -s $PWD/git/gitconfig ~/.gitconfig
ln -s $PWD/git/gitignore_global ~/.gitignore_global
