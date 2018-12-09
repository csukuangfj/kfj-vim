
# Table of Contents

- [Introduction](#introduction)
- [Mapped Keys](#mapped-keys)
- [Installed Plugins](#installed-plugins)
    * [Repeat](#repeat)
    * [Comment](#comment)
    * [Directory Window](#directory-window)
    * [Fuzzy File Finder](#fuzzy-file-finder)
    * [Fix Trailing and Leading Spaces](#fix-trailing-and-leading-spaces)
    * [Color Scheme](#color-scheme)
    * [Status Line](#status-line)
    * [Tagbar](#tagbar)
    * [YouCompleteMe](#youcompleteme)
    * [Mark Visualization](#mark-visualization)
- [TODO](#todo)
- [Notes](#notes)

# Introduction

This repository contains my Vim configurations.

# Mapped Keys
 - `<leader>` has been mapped to the key `;`

# Installed Plugins

## Repeat
 - tpope/vim-repeat
 - Install this plugin so that `.` works for commands defined by other plugins

## Comment
 - [scrooloose/nerdcommenter][2]
 - `<leader>`cc, to comment the current line or selected lines
 - `<leader>`c`<space>` to toggle the comment of the current line within selected lines
 - `<leader>`cs, s is short for sexy, i.e., beautiful comment.
 - `<leader>`cm, m is short for minimal comment, i.e, use `/* */` instead of `//`

## Directory Window
 - [scrooloose/nerdtree][3]
 - [jistr/vim-nerdtree-tabs][4]
 - `<C-n>`, i.e., press ctrl + n to toggle the directory window
 - Inside the directory window
   - the upper case `i` to toggle hidden files
   - `t` to open the file in a new tab
   - `s` to vertically split the window and open the file in the split window
   - `<Enter>` to open the file in the current tab

## Fuzzy File Finder
 - `kien/ctrlp.vim`
 - settings: `let g:ctrlp_map = '<c-p>'`
 - press `<c-p>`, i.e., ctrl + p to find the file (case-insensitive) in the current directory and subdirectories

## Fix Trailing and Leading Spaces
 - bronson/vim-trailing-whitespace
 - the trailing/leading spaces are shown in red
 - `:FixWhiteSpace` to delete trailing/leading spaces of the whole file or the selected region

## Color Scheme
 - altercation/vim-colors-solarized
 - tomasr/molokai

## Status Line
 - vim-airline/vim-airline
 - vim-airline/vim-airline-themes

## Tagbar
 - install ctags first, and add it to `PATH`
 - `<leader>ilt` to toggle the tagbar window
 - it is shown in the right side, since the left side is for the directory window

## YouCompleteMe
 - `cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON` or `set( CMAKE_EXPORT_COMPILE_COMMANDS ON )`,
 which generate a file `compile_commands.json` in the build directory.
 - symlink it to the project root directory.
 - ;gl to go to declaration
 - ;gf to go to definition
 - ;gi to go to include
 - ;gg to go to declaration or definition
 - ctrl + o to go backward
 - ctrl + i to go forward

## Mark Visualization
 - `kshenoy/vim-signature`
 - `ma` to create a mark named `a`
 - remember how to jump to mark `a`: backtick -- column, `'` -- beginning of the line
 - `dma` to delete mark `a`
 - `m-` to delete the mark in the current line
 - `m<space> to delete all marks
 - `m,` to allocate the next available mark for the current line

[6]: https://github.com/
[5]: https://github.com/
[4]: https://github.com/jistr/vim-nerdtree-tabs
[3]: https://github.com/scrooloose/nerdtree
[2]: https://github.com/scrooloose/nerdcommenter
[1]: https://github.com/csukuangfj/vim-exercises

## TODO
 - https://github.com/cHoco/dotFiles/blob/master/vimrc

## Notes
 - `gg=G` to fix indent
