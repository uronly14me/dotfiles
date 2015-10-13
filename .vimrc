set nocompatible
filetype off

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

set scrolloff=5
set wildmenu
set wildmode=full

" Pathogen Start
execute pathogen#infect()

" Plugged Start
call plug#begin('~/.vim/plugged')

Plug 'whatyouhide/vim-gotham'
Plug 'honza/vim-snippets'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-markdown'
Plug 'bling/vim-airline'

call plug#end()

" Vundle Start
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

set guifont=Monaco:h13

set bg=dark
colorscheme solarized

let mapleader=','

" NERDTree mapping
autocmd vimenter * NERDTree
map <C-z> :NERDTreeToggle<CR>

autocmd Filetype html nnoremap <leader>c I<!--<esc>A--><esc>

augroup JavaScriptCmds
  autocmd!
  autocmd Filetype javascript nnoremap <leader>r :!node %<cr>
  autocmd Filetype javascript nnoremap <leader>c I//<esc>
augroup END

noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
