function! OpenInFileDir()
  split
  let l:path = expand("%:h")
  enew
  call termopen("cd " . l:path . "; exec bash")
  let b:term_title = "bash " . l:path
  execute ":file" "bash\\ " . l:path
  startinsert
endfunction

map <Leader>c :call OpenInFileDir()
