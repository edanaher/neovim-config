function! OpenInFileDir()
  split
  let l:path = expand("%:h")
  if &buftype == "terminal"
    terminal
  else
    enew
    call termopen("cd " . l:path . "; exec bash")
  endif
  "let b:term_title = "bash " . l:path
  "execute ":file" "bash\\ " . l:path
  startinsert
endfunction

map <Leader>c :call OpenInFileDir()
