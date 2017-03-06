function! PrevWindowOrCount(count) range
  if a:count == 0
    wincmd p
  else
    exec a:count "wincmd w"
  endif
endfunction

noremap <M-j> <C-w>j
noremap <M-k> <C-w>k
noremap <M-h> <C-w>h
noremap <M-l> <C-w>l
noremap <silent><M-p> :<C-U>call PrevWindowOrCount(v:count)<return>
tnoremap <M-j> <C-\><C-n><C-w>j
tnoremap <M-k> <C-\><C-n><C-w>k
tnoremap <M-h> <C-\><C-n><C-w>h
tnoremap <M-l> <C-\><C-n><C-w>l
tnoremap <M-p> <C-\><C-n><C-w>p
" This are handled in deoplete.vim; inoremap doesn't seem to compose well :(
"inoremap <M-j> <Esc><C-w>j
"inoremap <M-k> <Esc><C-w>k
inoremap <M-h> <Esc><C-w>h
inoremap <M-l> <Esc><C-w>l
inoremap <M-p> <Esc><C-w>p

