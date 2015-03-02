if has('vim_starting')
    set nocompatible                        " be iMproved, required

    if has('win32') || has('win64')
        set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    endif

    " add NeoBundle to runtime path, required
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif


source ~/.vim/setup/plugins.vim             " Install plugins via NeoBundle
source ~/.vim/setup/basic.vim               " basic setup
source ~/.vim/setup/visuals.vim             " visual settings
source ~/.vim/setup/keymap.vim              " key mappings

" plugin-specific configuration
source ~/.vim/setup/airline.vim
source ~/.vim/setup/ultisnips.vim
source ~/.vim/setup/ycm.vim
source ~/.vim/setup/tagbar.vim
source ~/.vim/setup/unite.vim
source ~/.vim/setup/vim-nerdtree-tabs.vim 

if has("autocmd")
    autocmd FileType cpp setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType cpp setlocal foldmethod=indent nofoldenable
    autocmd FileType cpp setlocal nowrap
endif

