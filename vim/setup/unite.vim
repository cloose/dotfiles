if executable('ag')
    " use the silver search aka ag for unite grep
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '-i --vimgrep --nocolor --hidden'
    let g:unite_source_grep_recursive_opt = ''

    " use it also for file_rec/async
    let g:unite_source_rec_async_command = 'ag --follow --nocolor --nogroup --hidden -g "" --ignore ".git"'
endif
