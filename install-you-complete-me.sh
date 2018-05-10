#!/bin/bash

MY_DIR=~/.vim/bundle/YouCompleteMe

if [ ! -d ${MY_DIR}  ]; then
  echo "YouCompleteMe not downloaded! Run ./init.sh first"
  exit 0
fi

if [ ! -d $HOME/software/clang ]; then
  mkdir -p $HOME/software/clang
  cd $HOME/software
  echo "start downloading clang+llvm"
  wget -c http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
  echo "finish downloading clang+llvm"
  tar xvf clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
  mv clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04 clang

  echo "export PATH=$HOME/software/clang/bin:\${PATH}" >> ~/.bashrc
  echo "export LD_LIBRARY_PATH=$HOME/software/clang/lib:\${LD_LIBRARY_PATH}" >> ~/.bashrc
  # rm clang+llvm-6.0.0-x86_64-linux-gnu-ubuntu-16.04.tar.xz
fi


cd ${MY_DIR}
./install.py --clang-completer

