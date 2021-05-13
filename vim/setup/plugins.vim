"
" Plugin Installation via minpac (https://github.com/k-takata/minpac)
"

" Define function for installation of plugins
function! PackInit() abort
  packadd minpac                                                " add minpac plugin package

  call minpac#init()                                            " initialize minpac
  call minpac#add('k-takata/minpac', {'type': 'opt'})           " let minpac manage itself

  " plugins list
  call minpac#add('tpope/vim-commentary')                       " comment handling operators (gcc, gc)
  call minpac#add('tpope/vim-dispatch')                         " async build&test dispatcher
  call minpac#add('tpope/vim-projectionist')                    " project configuration

  call minpac#add('vim-airline/vim-airline')                    " lean & mean status/tabline
  call minpac#add('junegunn/fzf', {'do': {-> fzf#install()}})   " fuzzy file search
  call minpac#add('junegunn/fzf.vim')                           " fuzzy file search for vim
  call minpac#add('mileszs/ack.vim')                            " use ag as grep replacement
  call minpac#add('preservim/nerdtree')                         " file browser

  " git support
  call minpac#add('tpope/vim-fugitive')                         " a git wrapper
  call minpac#add('airblade/vim-gitgutter')                     " git diff markers in column

  " snippets
  call minpac#add('Shougo/neosnippet.vim')                      " snippet support
  call minpac#add('Shougo/neosnippet-snippets')                 " default collection of snippets
  call minpac#add('honza/vim-snippets')                         " extra collection of snippets

  " auto-completion
  call minpac#add('prabirshrestha/vim-lsp')                     " async language server protocol (LSP) plugin
  call minpac#add('prabirshrestha/asyncomplete.vim')            " asynchronous completer
  call minpac#add('prabirshrestha/asyncomplete-lsp.vim')        " LSP source for asyncomplete
  call minpac#add('prabirshrestha/asyncomplete-neosnippet.vim') " neosnippet source for asyncomplete
  call minpac#add('prabirshrestha/asyncomplete-tags.vim')       " tags file source for asyncomplete
  call minpac#add('prabirshrestha/asyncomplete-buffer.vim')     " buffer source for asyncomplete

  " software development
  call minpac#add('dense-analysis/ale')                         " asynchronous linting engine
  call minpac#add('vim-test/vim-test')                          " test runner
  call minpac#add('majutsushi/tagbar')                          " display tags in sidebar
  call minpac#add('rust-lang/rust.vim')                         " rust support

  " color schemes
  call minpac#add('joshdick/onedark.vim', {'type': 'opt'})
  call minpac#add('KeitaNakamura/neodark.vim', {'type': 'opt'})
  call minpac#add('tomasr/molokai', {'type': 'opt'})
  call minpac#add('morhetz/gruvbox', {'type': 'opt'})

  " test section
  call minpac#add('liuchengxu/vista.vim')                       " tagbar with LSP support
  call minpac#add('jeetsukumaran/vim-pythonsense')              " text objects for python
  call minpac#add('jiangmiao/auto-pairs')                       " insert/delete brackets,etc in pairs
endfunction

command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus packadd minpac | call minpac#status()
