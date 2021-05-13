"
"  Configuration for ALE (https://github.com/dense-analysis/ale) 
"

" fixers
let g:ale_fixers = {
      \    'python': ['yapf'],
      \}

" adapt executable for ubuntu
let g:ale_python_yapf_executable='yapf3'

" auto fix file on save
let g:ale_fix_on_save = 1

" display error information in status bar
let g:airline#extensions#ale#enabled = 1

let g:ale_completion_enabled = 0                                " disable auto-completion (jedi & completor)

