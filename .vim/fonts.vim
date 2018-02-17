if has("gui_running")
  if has("gui_gtk2")
    " set guifont=Inconsolata\ 22
    set guifont=DroidSansMono\ Nerd\ Font\ 11
  elseif has("gui_macvim")
    " set guifont=Menlo\ Regular:h18
    set guifont=DroidSansMono\ Nerd\ Font:h11
  elseif has("gui_win32")
    " set guifont=Consolas:h11:cANSI
    set guifont=DroidSansMono\ Nerd\ Font\ 11
  endif
endif

