function! PrevWindowOrCount(count) range
  if a:count == 0
    wincmd p
  else
    exec a:count "wincmd w"
  endif
endfunction

function! WincmdWithEmpty(com, count) range
  let l:curwin = winnr()
  exec a:count "wincmd" a:com
  if l:curwin != winnr() && winheight(l:curwin) == 1
    exec l:curwin "resize 0"
  end
endfunction

function! ResizeWithDefault(def, count, neg) range
  let l:amount = a:def
  if a:count != 0
    let l:amount = a:count
  end
  exec "resize " . a:neg . l:amount
endfunction

noremap <silent><M-j> :call WincmdWithEmpty("j", v:count)<return>
noremap <silent><M-k> :call WincmdWithEmpty("k", v:count)<return>
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

noremap <silent><M-i> :call ResizeWithDefault(4, v:count, "+")<return>
noremap <silent><M-o> :call ResizeWithDefault(4, v:count, "-")<return>
noremap <silent><M-O> :resize -999<return>
noremap <silent><M-I> :resize +999<return>
