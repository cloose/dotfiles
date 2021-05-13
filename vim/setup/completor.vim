"
" Configuration for completor (https://github.com/maralla/completor.vim)
"

" path to python & jedi
let g:completor_python_binary = '/usr/bin/python3'

" Use popup menu for completions and extra info (even if only one option)
" select match but do not insert
let g:completor_complete_options = "menuone,noinsert,popup"

" Give Jedi a chance to add completions
"let g:completor_completion_delay = 500
