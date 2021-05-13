" 
" Basic Configuration
"

" encoding
set encoding=utf-8

" typing
set backspace=indent,eol,start              " fix backspace indent
set autoindent                              " use indent of previous line

" default settings for tabs & spaces
set shiftwidth=4                            " width used for indents (>>)
set softtabstop=-1                          " use shiftwidth for tab and backspace keys
set expandtab                               " use spaces instead of tabs
set tabstop=8                               " tab chars indent by 8 spaces

set history=2000                            " increase command history size

" searching
set hlsearch                                " highlight matches
set incsearch                               " start search before pressing enter

" splits
set splitbelow                              " open horizontal splits below
set splitright                              " open vertical splits to the right

" netrw
let g:netrw_banner=0                        " hide banner
let g:netrw_liststyle=3                     " tree view

" ignore these files when searching
set wildignore+=*.swp,*.pyc,__pycache__
