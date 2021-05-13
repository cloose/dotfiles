"
" Configuration for asyncomplete (https://github.com/prabirshrestha/asyncomplete.vim)
"

" disable diagnostics (handled by ALE)
let g:lsp_diagnostics_enabled = 0

" sort matches by priority of the source
function! s:sort_by_priority_preprocessor(options, matches) abort
    let l:items = []
    let l:startcols = []

    for [l:source_name, l:matches] in items(a:matches)
        let l:startcol = l:matches['startcol']
        let l:base = a:options['typed'][l:startcol - 1:]

        for l:item in l:matches['items']
            if stridx(l:item['word'], l:base) == 0
                let l:startcols += [l:startcol]
                let l:item['priority'] =
                    \ get(asyncomplete#get_source_info(l:source_name), 'priority', 0)
                call add(l:items, l:item)
            endif
        endfor

    endfor

    let a:options['startcol'] = min(l:startcols)
    let l:items = sort(l:items, {a, b -> a['priority'] - b['priority']})

    call asyncomplete#preprocess_complete(a:options, l:items)
endfunction


let g:asyncomplete_preprocessor = [function('s:sort_by_priority_preprocessor')]

