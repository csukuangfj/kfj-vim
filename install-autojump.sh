#!/bin/bash

cd $HOME/open-source || { echo "Cannot cd to $HOME/open-source"  && exit 1; }

if [ ! -d autojump ]; then
  git clone --depth 1 https://github.com/wting/autojump.git
  cd autojump && python3 ./install.py
else
  echo "skip cloning autojump"
fi


if ! grep "autojump" ~/.fangjun.sh &> /dev/null; then
  echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> $HOME/.fangjun.sh
fi

echo "Done"
