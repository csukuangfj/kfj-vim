#!/usr/bin/env bash

export PYENV_ROOT="$HOME/open-source/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PYTHON_CONFIGURE_OPTS="--enable-shared"

# pyenv install --list
# pyenv install 3.8.6
# pyenv versions
# pyenv global 3.8.6
