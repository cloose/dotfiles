" encoding
set encoding=utf-8

" fix backspace indent
set backspace=indent,eol,start

" no need to save changed buffers before switching to other buffers
set hidden

" default settings for tabs & spaces
set shiftwidth=4 softtabstop=4
set expandtab

" increase command history size
set history=2000

" searching
set hlsearch                                " highlight matches
set incsearch                               " start search before pressing enter

" use The Silver Searcher (https://github.com/ggreer/the_silver_searcher)
" instead of grep
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif

" allow vim settings per folder/project
set exrc
set secure

" Add Qt 5.2.1 and mingw-w64 toolchain (as used by Qt 5.2.1) to PATH
let $PATH=$PATH . ';C:\Qt\Qt5.2.1\5.2.1\mingw48_32\bin;C:\Users\Christian\Programme\conemu\vendor\mingw-w64\x32-4.8.0-release-posix-dwarf-rev2\bin'

" Add LLVM for YCM to PATH
let $PATH=$PATH . ';C:\Users\Christian\Toolchains\x64\llvm\3.4\bin'

" Add ag (silver searcher) to PATH
let $PATH=$PATH . ';C:\Users\Christian\Programme\conemu\bin'
