# Introduction

This repository contains some VIM tutorials.

 - vimtutor
 - [vim_ex.txt][1], an exercise after finishing vimtutor.

# Mapped keys
 - <leader> has been mapped to the key `;`

# Installed plugins

## repeat
 - tpope/vim-repeat
 - Install this plugin so that `.` works for commands defined by other plugins

## Comment
 - [scrooloose/nerdcommenter][2]
 - <leader>cc, to comment the current line or selected lines
 - <leader>c<space> to toggle the comment of the current line of selected lines
 - <leader>cs, s is short for sexy, i.e., beautiful comment.
 - <leader>cm, m is short for minimal comment, i.e, use `/* */` instead of `//`

## Directory window
 - [scrooloose/nerdtree][3]
 - [jistr/vim-nerdtree-tabs][4]
 - <C-n>, i.e., press ctrl + n to toggle the directory window
 - Inside the directory window
   - the upper case `i` to toggle hidden files
   - `t` to open the file in a new tab
   - `s` to vertically split the window and open the file in the splitted window

## Show/Remove trailing/leading spaces
 - bronson/vim-trailing-whitespace
 - the trailing/leading spaces are shown in red
 - `:FixWhiteSpace` to delete trailing/leading spaces of the whole file or the selected region

## Git wrapper
 - tpope/vim-fugitive
 - `Git someCommand` is equivalent to `git someCommand`
 - `:Gwrite` is equivalent to `git add %`, i.e., to stage the currennt file
 - `:Gread` is equivalent to `git checkout HEAD %`, i.e., to discard the changes
of the current file in the working directory
 - `:Gremove` is equivalent to `git rm %`
 - `:Gmove some/path` is equivalent to `git mv % some/path`
 - `:Gstatus`
 - `:Gdiff`
 - `:Gcommit`
 - `:Gpush`

## Color scheme
 - altercation/vim-colors-solarized
 - tomasr/molokai

## Status line
 - vim-airline/vim-airline
 - vim-airline/vim-airline-themes

[6]: https://github.com/
[5]: https://github.com/
[4]: https://github.com/jistr/vim-nerdtree-tabs
[3]: https://github.com/scrooloose/nerdtree
[2]: https://github.com/scrooloose/nerdcommenter
[1]: https://github.com/csukuangfj/vim-exercises

