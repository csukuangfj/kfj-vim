#!/bin/bash

#  The file $PWD/v is copied from
#+ https://github.com/rupa/v

[[ -e ~/.fangjun.sh ]] || ( echo "~/.fangjun.sh does not exist!" && exit 0; )

if ! grep "add_path" ~/.fangjun.sh &> /dev/null; then
  echo "add_path should be a function!"
  exit 0
else
  echo "add_path $PWD" >> ~/.fangjun.sh
fi

echo "Done"
