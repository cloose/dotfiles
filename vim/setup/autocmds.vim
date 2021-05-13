"
" Autocmd
"

if has('autocmd')
  " vim filetype support
  filetype plugin indent on            " detect file type, load ft plugin file, load ft indent file

  " Reload vimrc after update
  autocmd! BufWritePost ~/.vimrc,~/dotfiles/vimrc source ~/.vimrc | AirlineRefresh

  augroup filetype_python
      autocmd!
      
      autocmd FileType python nnoremap <F5> :w<CR>:term python3 %<CR>
      autocmd FileType python nnoremap <F6> :w<CR>:Dispatch<CR>
      autocmd FileType python let b:dispatch = 'pylint  --output-format=text --msg-template="{path}:{line}:{column}:{C}: [{symbol}] {msg}" --reports=no %'
  augroup END

  augroup filetype_cucumber
      autocmd!

      autocmd FileType cucumber setlocal shiftwidth=2 softtabstop=-1 expandtab
  augroup END
endif
