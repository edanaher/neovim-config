let s:letters = ['a', 's', 'd', 'f']
let s:maxColor = len(s:letters)
let s:nextColor = 1

function! s:setNumber(n)
  exec 'syntax clear PolySearch' . a:n
  exec 'syntax match PolySearch' . a:n . " /" . @/ . "/ containedin=ALL"
  let v:hlsearch = 0
endfunction

function! s:setNext()
  call s:setNumber(s:nextColor)
  let s:nextColor = s:nextColor % s:maxColor + 1
endfunction

function! s:resetOne(n)
  exec 'syntax clear Polysearch' . a:n
endfunction

function! s:reset()
  for l:i in range(1, s:maxColor)
    exec 'syntax clear Polysearch' . l:i
  endfor
  let s:nextColor = 1
endfunction

function! s:allWindows(com)
  let l:cb = winnr()
  exec 'windo' a:com
  exec l:cb . 'wincmd w'
endfunction

hi PolySearch1 ctermfg=196 ctermbg=239 cterm=bold
hi PolySearch2 ctermfg=46 ctermbg=239 cterm=bold
hi PolySearch3 ctermfg=45 ctermbg=239 cterm=bold
hi PolySearch4 ctermfg=253 ctermbg=239 cterm=bold

for i in range(1, s:maxColor)
  let l = s:letters[i - 1]
  let u = toupper(l)
  exec 'noremap <silent><Leader>h' . l . ' :nohlsearch:call <SID>setNumber(' . i . ')'
  exec 'noremap <silent><Leader>h' . u . ' :call <SID>resetOne(' . i . ')'
  exec 'noremap <silent><Leader>H' . l . ' :nohlsearch:call <SID>allWindows("call <SID>setNumber(' . i . ')")'
  exec 'noremap <silent><Leader>H' . u . ' :call <SID>allWindows("call <SID>resetOne(' . i . ')")'
endfor

noremap <silent><Leader>hh :nohlsearch:call <SID>setNext()
noremap <silent><Leader>hr :call <SID>reset()
noremap <silent><Leader>Hh :nohlsearch:call <SID>allWindows('call <SID>setNext()')
noremap <silent><Leader>Hr :call <SID>allWindows('call <SID>reset()')
