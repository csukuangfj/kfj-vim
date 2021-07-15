
" Plugin 'bronson/vim-trailing-whitespace'
"
" To remove trailing/leading white spaces
" FixWhiteSpace
" if a block is selected, then only the selected block is modified
"

"========================================
" status line
"----------------------------------------
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
set laststatus=2

"========================================
" comment plugin
" <leader>cc comment current line or selected lines
" <leader>c<space> toggle
" <leader>cs sexy comment, i.e., /** */
" <leader>cm minimal comment, i.e., /* */
"----------------------------------------
"Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" keep nerd tree open across tabs
autocmd BufWinEnter * NERDTreeMirror

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing white space when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"========================================
" directory structure and tab
"----------------------------------------
" See mapped key in .vim/mappings.vim
" <C-n> to toggle the directory window
" <leader>n to toggle the tabs
" Inside the window, press upper case i to toggle hidden files
" Inside the window:
"   t to open the file in a new tab
"   s to vertically split the window and open the file
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'

let g:NERDTreeShowHidden=1

"========================================
" ctrlpvim/ctrlp.vim
"----------------------------------------
" press ctrl+p to invoke it 
let g:ctrlp_map = '<c-p>'
" open file in a new tab
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

"========================================
" YouCompleteMe
"----------------------------------------
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>

"========================================
" davidhalter/jedi-vim
"----------------------------------------
"" disable docstring window
autocmd FileType python setlocal completeopt-=preview

" disble autocompletionon dot as it is very slow
let g:jedi#popup_on_dot = 0

"========================================
" google/vim-codefmt
"----------------------------------------
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer black
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END


"========================================
" Shougo/deoplete.nvim
"----------------------------------------
let g:deoplete#enable_at_startup = 1

"========================================
" Plugin 'fisadev/vim-isort'
"----------------------------------------
" let g:vim_isort_map = '<C-i>'  " default
" (1) :Isort to sort the whole file
" (2) Select a region, and press ctrl + i to sort it
