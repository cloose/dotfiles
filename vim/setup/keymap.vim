" change <leader> to space ' '
let mapleader = " "

" make Ctrl+] easier on german keyboard in normal mode
nnoremap ü <C-]>
nnoremap Ü <C-O>

" window split
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

" git
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gl :Glog<CR>
noremap <leader>gu :Gpull<CR>

" vimshell
nnoremap <silent> <leader>sh :VimShellCreate<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" buffers
nnoremap <C-right> :bn<CR>
nnoremap <C-left> :bp<CR>

" opens tab edit command with the path of the currently edited file filled
noremap <leader>te :tabedit <C-R>=expand("%:p:h") . "/" <CR>

" set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"=============================================================================
" Tagbar
"=============================================================================
nnoremap <leader>tb :TagbarToggle<CR>

"=============================================================================
" NERDTree
"=============================================================================
" <F2> shows filesystem tree explorer for all modes
noremap <F2> :NERDTreeToggle<CR>

" <F3> finds current file in tree in normal mode
nnoremap <silent> <F3> :NERDTreeFind<CR>

"=============================================================================
" Unite
"=============================================================================
nnoremap <leader>f :<C-u>Unite -start-insert file_rec file_mru file/new<CR>
nnoremap <leader>g :<C-u>Unite grep:.<CR>

" buffers
nnoremap <leader>ub :<C-u>Unite -start-insert -buffer-name=buffer -auto-resize buffer<CR>

nnoremap <leader>uu :<C-u>Unite -start-insert -auto-resize file file_rec/async:! buffer file_mru<CR>

nnoremap <silent> <leader>uf :<C-u>Unite -start-insert -buffer-name=files -auto-resize -toggle file_rec<CR>
nnoremap <silent> <leader>ua :<C-u>Unite -start-insert -buffer-name=files -auto-resize -toggle file_rec/async:!<CR>
nnoremap <silent> <leader>ug :<C-u>Unite -start-insert -buffer-name=files file_rec/git:--cached:--others:--exclude-standard file_mru file/new<CR>

"=============================================================================
" YouCompleteMe
"=============================================================================
nnoremap <leader>jd :YcmCompleter GoTo<CR>
au FileType cpp nnoremap <buffer> ü :YcmCompleter GoToDefinitionElseDeclaration<CR>
