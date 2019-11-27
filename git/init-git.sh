#!/bin/bash

rm -fv ~/.gitconfig
rm -fv ~/.gitignore_global

ln -s $PWD/gitconfig ~/.gitconfig
ln -s $PWD/gitignore_global ~/.gitignore_global
