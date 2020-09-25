set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"ycm consumes too much resource
"Plugin 'Valloric/YouCompleteMe'

" the following three have to be installed together
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/deoplete.nvim'

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-maktaba'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'simeji/winresizer'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-repeat'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'vim-syntastic/syntastic'
Plugin 'Yggdroot/indentLine'

Plugin 'csukuangfj/vim-tex-fold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

call glaive#Install()
Glaive codefmt plugin[mappings]

"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" "PluginUpdate     - to update plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
