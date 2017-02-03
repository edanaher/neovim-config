let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

let g:deoplete#disable_auto_complete = 1

inoremap <expr><M-j> pumvisible() ? "\<C-n>" : "\<M-j>"
inoremap <expr><M-k> pumvisible() ? "\<C-p>" : "\<M-k>"

inoremap <silent><expr><M-i> deoplete#mappings#manual_complete()
