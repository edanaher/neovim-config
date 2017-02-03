"let g:airline_left_sep = '▖'
"let g:airline_left_sep = ''
let g:airline_section_y = '%{winnr()}:%{bufnr("%")}'
function! AirlineInit()
  AirlineTheme bubblegum
endfunction
autocmd User AirlineAfterInit call AirlineInit()
