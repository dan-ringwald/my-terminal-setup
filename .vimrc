call plug#begin()
    Plug 'junegunn/vim-easy-align'
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'altercation/vim-colors-solarized'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
call plug#end()

set nocompatible
set encoding=utf-8
filetype plugin on
syntax enable

set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4

colorscheme solarized
