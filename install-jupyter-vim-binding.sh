#!/bin/bash

# refer to https://github.com/lambdalisue/jupyter-vim-binding
mkdir -p $(jupyter --data-dir)/nbextensions
pushd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
jupyter nbextension enable vim_binding/vim_binding
popd

mkdir -p ~/.jupyter/custom
ln -sf $PWD/jupyter/custom.js ~/.jupyter/custom
