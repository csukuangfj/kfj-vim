
if [ ! -e ~/.fangjun.sh ]; then
  cat >> ~/.fangjun.sh << EOF
set -o vi
bind -x '"\C-l": clear'
bind '"jk":vi-movement-mode'

export EDITOR=vim
EOF
else
  echo "skip creating ~/.fangjun.sh"
fi

if ! grep ".fangjun.sh" ~/.bashrc &> /dev/null; then
  echo "source ~/.fangjun.sh" >> ~/.bashrc
else
  echo "skip appending ~/.bashrc"
fi

if ! grep "function add_path" ~/.fangjun.sh &> /dev/null; then
  cat >> ~/.fangjun.sh << 'EOF'
function add_path() {
  export PATH="$1":${PATH}
}
EOF
else
  echo "skip add_path"
fi

if ! grep "function add_lib_path" ~/.fangjun.sh &> /dev/null; then
  cat >> ~/.fangjun.sh << 'EOF'
function add_lib_path() {
  export LD_LIBRARY_PATH="$1":${LD_LIBRARY_PATH}
}
EOF
else
  echo "skip add_lib_path"
fi

cat >> ~/.fangjun.sh << 'EOF'
# show files with color in iterm on macOS
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias gs="git status"
alias gb="git branch"
alias gd="git difftool"
alias ga="git add"
alias gc="git commit"
alias gp="git push"

PS1='\u:\W\$ '

EOF
