"
" Configuration for ack.vim (https://github.com/mileszs/ack.vim)
"

" use ag if installed
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

