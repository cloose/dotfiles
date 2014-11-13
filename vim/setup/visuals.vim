" terminal settings
set termencoding=utf-8
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" set color scheme
colorscheme molokai

" turn on syntax highlighting
syntax on

" show the line and column of the cursor position
set ruler

" show line number
set number

" set window title
set title

" always show status line
set laststatus=2

if has('gui_running')
    " set font for GVim
    if has('win32') || has('win64')
        set guifont=Consolas_for_Powerline_FixedD:h12
    else
        set guifont=Consolas\ for\ Powerline\ 12
    endif

    " suppress scrollbars
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R

    " remove the toolbar and menu
    set guioptions-=T
    set guioptions-=m

    " maximize window on startup
    au GUIEnter * simalt ~x
else
    set term=xterm-256color
endif
