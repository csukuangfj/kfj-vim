source $HOME/.vim/mappings.vim
source $HOME/.vim/tabs.vim
source $HOME/.vim/kfj-bundle.vim

set background=dark
if has("gui_running")
  colorscheme solarized
else
  colorscheme molokai
endif

set number
syntax enable
syntax on

" Disable backups and .swp files
set nobackup
set nowritebackup
set noswapfile

" Ignore case when searching
set ignorecase
set smartcase

" Set terminal window title
set title

