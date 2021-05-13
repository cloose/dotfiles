"
" Visual Configuration
"

if has('termguicolors')
    set termguicolors                            " active 24-bit color support
endif

syntax enable                                    " turn on syntax highlighting

" color scheme onedark
set background=dark                              " expect dark background
packadd onedark.vim
colorscheme onedark

set title                                        " set window title
set number                                       " show line number
set relativenumber                               " line numbers are relative
set ruler                                        " show line and column of cursor position
set laststatus=2                                 " always show status line

set wildmenu                                     " show completion matches above command line

set showcmd                                      " show typed keys if more are expected
set noshowmode                                   " do not show mode (already done by airline)
