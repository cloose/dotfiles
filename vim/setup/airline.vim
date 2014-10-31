if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" old vim-powerline symbols
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
let g:airline_symbols.linenr = '⭡'

" enabled enhanced tabline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = '⮀'
let g:airline#extensions#tabline#left_alt_sep = '⮁'

let g:airline_detected_modified=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#whitespace#enabled=1
