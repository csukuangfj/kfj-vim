#!/bin/bash

cd

apt-get install tmux
wget --quiet https://github.com/Kitware/CMake/releases/download/v3.18.2/cmake-3.18.2-Linux-x86_64.sh
chmod +x cmake-3.18.2-Linux-x86_64.sh && ./cmake-3.18.2-Linux-x86_64.sh --skip-license --prefix=/usr/local
apt-get install -y python3.7 python3.7-dev

update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 6
update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 7
cp /usr/bin/python3.7 /usr/local/bin/python

curl --silent https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --force-reinstall

wget  https://download.pytorch.org/whl/cu101/torch-1.6.0%2Bcu101-cp37-cp37m-linux_x86_64.whl
pip install "./torch-1.6.0+cu101-cp37-cp37m-linux_x86_64.whl"

pip install clang-format

git config --global user.name "Fangjun Kuang"
git config --global user.email "csukuangfj@gmail.com"
git config --global diff.tool vimdiff
git config --global core.editor vim



