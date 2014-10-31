if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '-i --vimgrep --nocolor --hidden'
    let g:unite_source_grep_recursive_opt = ''
endif
