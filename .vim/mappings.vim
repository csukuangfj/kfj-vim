" noremap <up> <Nop> " disable arrow keys in normal mode
" nnoremap <down> <Nop>
" nnoremap <left> <Nop>
" nnoremap <right> <Nop>

" inoremap <up> <Nop> " disable arrow keys in the insert mode
" inoremap <down> <Nop>
" inoremap <left> <Nop>
" inoremap <right> <Nop>

" use jk to simulate ESC in the insert mode
inoremap jk <ESC>

" Map <leader> key
let mapleader=";"

" for NERDTree
map <C-n> :NERDTreeToggle<CR>
