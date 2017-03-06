colo elflord
set ruler
set cindent
set sw=2
set ts=2
set et
set wmh=0
set incsearch
set inccommand=nosplit
set noequalalways
set t_Co=256
hi Search term=standout ctermfg=208 ctermbg=238
hi IncSearch term=standout ctermfg=208 ctermbg=238

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

nohlsearch

let s:pwd = expand('<sfile>:h')
function! s:load(filename)
  exec 'source ' . s:pwd . '/' . a:filename . '.vim'
endfunction

call s:load('airline')
call s:load('deoplete')
call s:load('terminal')
call s:load('scala')
call s:load('polysearch')
call s:load('window')
