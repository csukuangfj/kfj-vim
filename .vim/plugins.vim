
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

" do not show it by default
" let g:NERDTreeQuitOnOpen=1



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
let g:ctrlp_map = '<c-p>'
