" Christian Loose's .vimrc file

if &compatible
  set nocompatible                       " ensure vi compatibility is off
endif

source ~/.vim/setup/plugins.vim          " install plugins via minpac
source ~/.vim/setup/basic.vim            " basic setup
source ~/.vim/setup/visuals.vim          " visual settings
source ~/.vim/setup/autocmds.vim         " autocmd setup
source ~/.vim/setup/keymap.vim           " key mappings

" plugin-specific configuration
source ~/.vim/setup/ack.vim
source ~/.vim/setup/airline.vim
source ~/.vim/setup/ale.vim
source ~/.vim/setup/asyncomplete.vim
source ~/.vim/setup/neosnippet.vim
source ~/.vim/setup/nerdtree.vim
source ~/.vim/setup/vim-test.vim
source ~/.vim/setup/vista.vim
