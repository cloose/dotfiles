"
" Configuration for asyncomplete (https://github.com/prabirshrestha/asyncomplete.vim)
"

" register python-language-server as LSP source
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python']
        \ })
else
    echohl ErrorMsg
    echom 'Sorry, `pyls` is not installed.'
    echohl NONE
endif

" register rust language server as LSP source
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'workspace_config': {'rust': {'clippy_preference': 'on'}},
        \ 'whitelist': ['rust'],
        \ })
else
    echohl ErrorMsg
    echom 'Sorry, `rls` is not installed.'
    echohl NONE
endif

" register neosnippet
call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
    \ 'name': 'neosnippet',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
    \ 'priority': 10,
    \ }))

" register tags file source
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
    \ 'name': 'tags',
    \ 'allowlist': ['*'],
    \ 'completor': function('asyncomplete#sources#tags#completor'),
    \ 'priority': 5,
    \ 'config': {
    \    'max_file_size': 50000000,
    \  },
    \ }))

" register buffer source
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'allowlist': ['*'],
    \ 'blocklist': ['go'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'priority': 7,
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

" define keymaps
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal tagfunc=lsp#tagfunc

    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> K  <plug>(lsp-hover)

    nmap <buffer> <leader>rn <plug>(lsp-rename)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has a server registered
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
