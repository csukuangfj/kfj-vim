#!/bin/bash

# needed by https://github.com/ryanoasis/vim-devicons

pushd .
if [ ! -d /tmp/nerd-fonts ]; then
  git clone --depth 1  https://github.com/ryanoasis/nerd-fonts.git
fi
cd /tmp/nerd-fonts
./install.sh
rm -rf /tmp/nerd-fonts
popd

