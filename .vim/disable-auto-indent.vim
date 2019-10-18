au filetype tex,bib call DisableIndent()

function! DisableIndent()
  set noautoindent
  set nocindent
  set nosmartindent
  set indentexpr=
endfunction
setl noai nocin nosi inde=

