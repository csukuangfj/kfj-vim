#!/bin/bash

ctags_dir=$HOME/software/ctags
if [ -d ${ctags_dir} ]; then
  exit 0
fi
mkdir -p ${ctags_dir}
pushd .
mkdir -p /tmp
cd /tmp
git clone --depth 1 https://github.com/universal-ctags/ctags.git 
cd ctags
./autogen.sh
./configure --prefix=${ctags_dir}
make -s -j3
make install

cd ..
rm -rf ctags
popd

echo "export PATH=${ctags_dir}/bin:${PATH}" >> ~/.bashrc

