colo elflord
set ruler
set cindent
set sw=2
set ts=2
set et
set wmh=0
set incsearch
set noequalalways
set t_Co=256
hi Search term=standout ctermfg=208 ctermbg=238

let g:terminal_scrollback_buffer_size = 65536

let mapleader = "\<Space>"

noremap! <C-]> <Esc>A<Space>{<Enter>}<Esc>O

tnoremap <Esc><Space> <C-\><C-n>
tnoremap <Esc><Esc><Space> <Esc><Space>

map gC :tabnew<Return>
map gc :tabnew<Return>:term<Return>

map <Leader>n :nohlsearch
map <Leader><F2> :source ~/.config/nvim/init.vim

hi HighlightedyankRegion ctermfg=190 ctermbg=0 guifg=Black guibg=Yellow
let g:highlightedyank_highlight_duration = 600

noremap <M-j> <C-w>j
noremap <M-k> <C-w>k
noremap <M-h> <C-w>h
noremap <M-l> <C-w>l
noremap <M-p> <C-w>p
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

nohlsearch

let s:pwd = expand('<sfile>:h')
function! s:load(filename)
  exec 'source ' . s:pwd . '/' . a:filename . '.vim'
endfunction

call s:load('airline')
call s:load('deoplete')
call s:load('terminal')
call s:load('scala')
