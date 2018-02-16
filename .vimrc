source $HOME/.vim/mappings.vim
source $HOME/.vim/kfj-bundle.vim

set background=dark  
"colorscheme solarized
colorscheme molokai

" refer to
" https://makandracards.com/makandra/11541-how-to-not-leave-trailing-whitespace-using-your-editor-or-git
" Show trailing whitepace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

set number
syntax on

" Indentation settings
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent
set expandtab

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 22 
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h18
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

" Disable backups and .swp files
set nobackup
set nowritebackup
set noswapfile

" Ignore case when searching
set ignorecase
set smartcase

" Set terminal window title
set title

" Show last command
set showcmd

" Highlight cursor line
set cursorline

