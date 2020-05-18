set encoding=utf-8
source $HOME/.vim/mappings.vim
source $HOME/.vim/tabs.vim
source $HOME/.vim/spellcheck.vim
source $HOME/.vim/kfj-bundle.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/fonts.vim
source $HOME/.vim/tagbar.vim
source $HOME/.vim/abbreviations.vim

set background=dark
if has("gui_running")
  colorscheme solarized
else
  colorscheme molokai
endif

set number
syntax enable
syntax on
set mouse=a

" Disable backups and .swp files
set nobackup
set nowritebackup
set noswapfile

" Ignore case when searching
set ignorecase
set smartcase

" Set terminal window title
set title

set cursorline
hi CursorLine ctermbg=8 ctermfg=15 "8 = dark gray, 15 = white
hi Cursor ctermbg=15 ctermfg=8


set foldmethod=marker
set foldmarker={,}
set foldlevel=1
set nofoldenable "disable fold by default

" for "find", "ls" and "b"
set path+=**
set wildmenu

set showcmd
let g:indentLine_setConceal = 0
set conceallevel=0

autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
