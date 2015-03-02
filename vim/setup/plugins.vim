"=============================================================================
" Install plugins via NeoBundle
"=============================================================================

" initialize NeoBundle, required
call neobundle#begin(expand('~/.vim/bundle/'))

" let NeoBundle manage NeoBundle, required
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins list
NeoBundle 'airblade/vim-gitgutter'                  " show changed lines
NeoBundle 'tpope/vim-fugitive'                      " a Git wrapper
NeoBundle 'idanarye/vim-merginal'                   " fugitive extension to manage Git branches
NeoBundle 'majutsushi/tagbar'                       " Source code browser (ctags)
NeoBundle 'bling/vim-airline'                       " lean & mean status/tabline
NeoBundle 'tomasr/molokai'                          " color scheme
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'scrooloose/nerdtree'                     " filesystem tree explorer
NeoBundle 'scrooloose/nerdcommenter'                " 
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'                       " Most recent used files
NeoBundle 'tsukkee/unite-tag'
NeoBundle 'Shougo/vimproc.vim', {'build': {'windows': 'tools\\update-dll-mingw'}}
NeoBundle 'Shougo/vimshell.vim'                     " Shell inside vim
NeoBundle 'SirVer/ultisnips'                        " ultimate solution for snippets
NeoBundle 'honza/vim-snippets'                      " snippets for various programming languages
NeoBundle 'jaxbot/github-issues.vim'                " GitHub issue lookup
NeoBundle 'mhinz/vim-startify'                      " Vim start screen
NeoBundle 'Raimondi/delimitMate'                    " auto-completion for quotes, parens, brackets, etc.
NeoBundle 'vim-scripts/BufOnly.vim'                 " command to close all buffers except current
NeoBundle 'vim-scripts/a.vim'                       " open alternate file (header->source)
NeoBundle 'MarcWeber/vim-addon-local-vimrc'         " project-local vimrc

NeoBundle 'YouCompleteMe'

" All of your Plugins must be added before the following line
call neobundle#end()

filetype plugin indent on    " required

" if there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

