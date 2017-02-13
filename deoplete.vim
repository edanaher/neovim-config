let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

let g:deoplete#disable_auto_complete = 1

" See init.vim; inoremap doesn't seem to compose;
inoremap <expr><M-j> pumvisible() ? "\<C-n>" : "<Esc><C-w>j"
inoremap <expr><M-k> pumvisible() ? "\<C-p>" : "<Esc><C-w>k"

inoremap <silent><expr><M-i> deoplete#mappings#manual_complete()
