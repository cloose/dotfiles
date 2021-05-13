"
" PLUGINS
"

" specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'vim-airline/vim-airline'                             " lean & mean status/tabline
Plug 'vim-airline/vim-airline-themes'                      " additional themes for vim-airline

" additional operators
Plug 'tpope/vim-commentary'                                " comment operators (gcc, gc)
Plug 'tpope/vim-surround'                                  " 'surroundings' operators (cs, ds, ys)

" additional text objects
Plug 'michaeljsmith/vim-indent-object'                     " text objects for indents (ai, aI, ii)
Plug 'jeetsukumaran/vim-pythonsense'                       " text objects for python

" tools
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }        " fuzzy file search
Plug 'junegunn/fzf.vim'                                    " fzf for vim
Plug 'mileszs/ack.vim'                                     " use ag as grep replacement
Plug 'preservim/nerdtree'                                  " file browser
Plug 'lambdalisue/fern.vim'                                " file browser

" git support
Plug 'tpope/vim-fugitive'                                  " a git wrapper
Plug 'airblade/vim-gitgutter'                              " git diff markers in column

" programming
Plug 'vim-test/vim-test'                                   " test runner
Plug 'tpope/vim-projectionist'                             " project configuration
Plug 'dense-analysis/ale'                                  " asynchronous linting engine
"Plug 'python-rope/ropevim'                                 " python refactorings using rope
Plug 'davidhalter/jedi-vim'                                " Jedi for vim

" snippets
Plug 'Shougo/neosnippet.vim'                               " snippet support
Plug 'Shougo/neosnippet-snippets'                          " default collection of snippets
Plug 'honza/vim-snippets'                                  " extra collection of snippets

" auto-completion
"Plug 'prabirshrestha/vim-lsp'                              " async language server protocol (LSP) plugin
"Plug 'prabirshrestha/asyncomplete.vim'                     " asynchronous completer
"Plug 'prabirshrestha/asyncomplete-lsp.vim'                 " LSP source for asyncomplete
"Plug 'prabirshrestha/asyncomplete-neosnippet.vim'          " neosnippet source for asyncomplete
"Plug 'prabirshrestha/asyncomplete-tags.vim'                " tags file source for asyncomplete
"Plug 'prabirshrestha/asyncomplete-buffer.vim'              " buffer source for asyncomplete
" Lets try ncm2 instead
Plug 'ncm2/ncm2'                                           " asynchronous completer
Plug 'roxma/nvim-yarp'                                     " remote plugin framework
"Plug 'ncm2/ncm2-vim-lsp'                                   " LSP source for ncm2
Plug 'ncm2/ncm2-jedi'                                      " JEDI python source for ncm2
Plug 'ncm2/ncm2-neosnippet'                                " neosnippet source
Plug 'ncm2/ncm2-bufword'                                   " word from current buffer
Plug 'ncm2/ncm2-path'                                      " file/path completion source

" color scheme
Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'NLKNguyen/papercolor-theme'

" Initialize plugin system
call plug#end()

"
" BASICS
"

set encoding=utf-8

" typing
set backspace=indent,eol,start                             " fix backspace indent
set autoindent                                             " use indent of previous line

" splits
set splitbelow                                             " open horizontal splits below
set splitright                                             " open vertical splits to the right

" searching
set hlsearch                                               " highlight matches
set incsearch                                              " start search before pressing enter

set history=2000                                           " increase command history size

set wildignore+=*.swp,*.pyc,__pycache__                    " ignore these files when searching

"
" VISUALS
"

if has('termguicolors')
    set termguicolors                                      " activate 24-bit color support
endif

"set background=dark                                        " expect dark background
"colorscheme gruvbox

set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

set title                                                  " set window title
set number                                                 " show line number
set relativenumber                                         " line numbers are relative
set ruler                                                  " show line and column of cursor position
set laststatus=2                                           " always show status line
set noshowmode                                             " don't show mode (already done by airline)

"
" AUTOCMD
"
filetype plugin indent on                                  " detect filetype, load ft plugins & ft indent files

augroup python_files
  au!

  autocmd FileType python set shiftwidth=4 softtabstop=-1 tabstop=8 expandtab
  autocmd FileType python nnoremap <F5> :w<CR>:sp term://python3 %<CR>
augroup END

augroup cucumber_files
  au!

  autocmd FileType cucumber set shiftwidth=2 softtabstop=-1 expandtab
augroup END

"augroup nerdtree_config
"  au!
"
"  " open NERDTree when Vim starts (leave cursor in other window)
"  autocmd VimEnter * NERDTree | wincmd p
"
"  " open existing NERDTree on each new tab
"  autocmd BufWinEnter * silent NERDTreeMirror
"augroup END

"
" KEY MAPPINGS
"

let mapleader=","

" windows
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

" buffers
nnoremap <C-up> <C-W>w
nnoremap <C-down> <C-W>W
nnoremap <C-right> :bn<CR>
nnoremap <C-left> :bp<CR>

" tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" git
noremap <leader>gs :Gstatus<CR>
noremap <leader>gd :Gdiff<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gl :Glog<CR>

" fzf
nnoremap <leader>ff :<C-u>Files<CR>
nnoremap <leader>fb :<C-u>Buffers<CR>
nnoremap <leader>fs :<C-u>Ag
nnoremap <leader>fl :<C-u>BLines

" NERDTree
map <F2> :Fern .<CR>
"map <leader>nt :NERDTreeToggle<CR>
"map <leader>nf :NERDTreeFind<CR>

" vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" jedi-vim
let g:jedi#goto_command='<leader>jd'
let g:jedi#usages_command='<leader>ju'
let g:jedi#rename_command='<leader>rn'

" asyncomplete
" ncm2
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"

" vim-lsp
" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete

"     nmap <buffer> gd <plug>(lsp-definition)
" endfunction

" neosnippet - expand snippet on Ctrl-k
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_or_jump)
nmap <C-k> <Plug>(neosnippet_expand_or_jump)

" easier normal mode swith in terminal
tmap <C-o> <C-\><C-n>

"
" PLUGIN SETTINGS
"

" ack.vim
if executable('ag')                                        " use ag if installed
    let g:ackprg = 'ag --vimgrep'
endif

" ALE
let g:ale_fixers = {
      \    'python': ['yapf', 'isort'],
      \}

let g:ale_python_yapf_executable='yapf3'                   " adapt yapf executable for ubuntu
let g:ale_fix_on_save = 1                                  " auto fix file on save
let g:ale_completion_enabled = 0                           " disable auto-completion (jedi & completor)

" vim-airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#ale#enabled = 1

" NERDTree
"let NERDTreeMinimalUI = 1                                  " remove info text header
"let NERDTreeRespectWildIgnore = 1                          " respect 'wildignore'

" vim-test
let test#strategy="neovim"

" neosnippet
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.local/share/nvim/plugged/vim-snippets/snippets'

" vim-lsp
" let g:lsp_diagnostics_enabled=0                            " disable diagnostics (handled by ALE)

" if executable('pyls')
"     " register python language server
"     au User lsp_setup call lsp#register_server({           
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'whitelist': ['python']
"         \ })
" endif

" augroup lsp_install
"     au!
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END

" asyncomplete
"  call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
"     \ 'name': 'neosnippet',
"     \ 'allowlist': ['*'],
"     \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
"     \ 'priority': 10,
"     \ }))

" sort matches by priority of the source
" function! s:sort_by_priority_preprocessor(options, matches) abort
"     let l:items = []
"     let l:startcols = []

"     for [l:source_name, l:matches] in items(a:matches)
"         let l:startcol = l:matches['startcol']
"         let l:base = a:options['typed'][l:startcol - 1:]

"         for l:item in l:matches['items']
"             if stridx(l:item['word'], l:base) == 0
"                 let l:startcols += [l:startcol]
"                 let l:item['priority'] =
"                     \ get(asyncomplete#get_source_info(l:source_name), 'priority', 0)
"                 call add(l:items, l:item)
"             endif
"         endfor

"     endfor

"     let a:options['startcol'] = min(l:startcols)
"     let l:items = sort(l:items, {a, b -> a['priority'] - b['priority']})

"     call asyncomplete#preprocess_complete(a:options, l:items)
" endfunction

" set preprocess to order matches by priority
" let g:asyncomplete_preprocessor = [function('s:sort_by_priority_preprocessor')]

" jedi-vim
let g:jedi#auto_initialization=1
let g:jedi#auto_vim_configuration=0
let g:jedi#completions_enabled=0                           " handled by ncm2
let g:jedi#smart_auto_mappings=0

" ncm2
augroup ncm2_setup
    au!

    autocmd BufEnter * call ncm2#enable_for_buffer()       " enable ncm2 for all buffers
augroup END

set completeopt=noinsert,menuone,noselect                  " set recommended complete options
set shortmess+=c                                           " suppress completion messages
let g:ncm2#matcher='abbrfuzzy'                             " fuzzy matcher
