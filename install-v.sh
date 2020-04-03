#!/bin/bash

#  The file $PWD/v is copied from
#+ https://github.com/rupa/v


if ! grep "add_path" ~/.fangjun.sh &> /dev/null; then
  echo "add_path should be a function!"
else
  echo "add_path $PWD" >> ~/.fangjun.sh
fi

echo "Done"
