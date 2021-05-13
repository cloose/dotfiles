let mapleader=","                      " change <leader> to comma ','

" window split
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" buffers
nnoremap <C-up> <C-W>w
nnoremap <C-down> <C-W>W
nnoremap <C-right> :bn<CR>
nnoremap <C-left> :bp<CR>

" git
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gl :Glog<CR>

" set current working directory
nnoremap <leader>. :lcd %:p:h<CR>

" fzf
nnoremap <leader>ff :<C-u>Files<CR>
nnoremap <leader>fb :<C-u>Buffers<CR>
nnoremap <leader>fs :<C-u>Ag
nnoremap <leader>fl :<C-u>BLines

" ALE
nmap <silent> [g <Plug>(ale_previous_wrap)
nmap <silent> ]g <Plug>(ale_next_wrap)

" asyncomplete
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" NERDTree
map <leader>nt :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>

" Tagbar
" nnoremap <leader>tb :TagbarToggle<CR>
nnoremap <leader>tb :Vista!!<CR>

" neosnippet - expand snippet on Ctrl-k
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_or_jump)
nmap <C-k> <Plug>(neosnippet_expand_or_jump)

