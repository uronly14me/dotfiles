set number
set hlsearch
syntax enable
set autoindent
set ignorecase
set incsearch
set noswapfile
set colorcolumn=80

set ts=2 sts=2 sw=2 expandtab
set showmatch
set encoding=utf-8
set fileencoding=utf-8
set gdefault

execute pathogen#infect()

call plug#begin('~/.vim/plugged')

Plug 'whatyouhide/vim-gotham'
Plug 'honza/vim-snippets'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-markdown'
Plug 'bling/vim-airline'

call plug#end()

set bg=dark
colorscheme solarized

" NERDTree mapping
autocmd vimenter * NERDTree
map <C-z> :NERDTreeToggle<CR>
