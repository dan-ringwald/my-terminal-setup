call plug#begin()
    Plug 'dense-analysis/ale'
    Plug 'junegunn/vim-easy-align'
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
    Plug 'altercation/vim-colors-solarized'
    Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'easymotion/vim-easymotion'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'godlygeek/tabular'
    Plug 'tomtom/tcomment_vim'
call plug#end()

let mapleader = "ù"
let maplocalleader = "!"
let $VIMDIR = $HOME."/Projects/vimconf"
let $VIMCONF = $VIMDIR."/.vimrc"

set runtimepath^=~/.vim/bundle/ctrlp.vim

set nocompatible
set encoding=utf-8
filetype plugin on
syntax enable

nnoremap <F1> :NERDTreeToggle<cr>

set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4

colorscheme solarized

" quick edit .vimrc in a split of the screen
nnoremap <F2> :vsplit $VIMCONF<cr>
" quick source main config file .vimrc
nnoremap <F3> :source $VIMCONF<cr>

"""""""""""""
" MOVEMENTS "
"""""""""""""
"in parenthesis / brackets / braces
 "i( i[ i{ works, just like i" i' i<
"in the next parenthesis
onoremap in( :<c-u>normal! f(vi(<cr>
"in the last parenthesis
onoremap il( :<c-u>normal! F)vi(<cr>
"in the next brackets
onoremap in[ :<c-u>normal! f[vi[<cr>
"in the last brackets
onoremap il[ :<c-u>normal! F]vi[<cr>
"in the next braces
onoremap in{ :<c-u>normal! f{vi{<cr>
"in the last braces
onoremap il{ :<c-u>normal! F{vi{<cr>
"in the next double quotes
onoremap in" :<c-u>normal! f"vi"<cr>
"in the last double quotes
onoremap il" :<c-u>normal! F"vi"<cr>
"in the next simple quotes
onoremap in' :<c-u>normal! f'vi'<cr>
"in the last simple quotes
onoremap il' :<c-u>normal! F'vi'<cr>
"
"remap the directionnal pad to switch split
nnoremap   <Left>    <C-W>h
nnoremap   <Right>   <C-W>l
nnoremap   <Up>      <C-W>k
nnoremap   <Down>    <C-W>j
"
" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1

"""""""""""
" BUFFERS "
"""""""""""
nnoremap é :bn<cr>
nnoremap ² :bp<cr>
nnoremap <Space><cr> :ls<cr>
nnoremap & :b#<cr>
nmap <space>& <Plug>AirlineSelectTab1
nmap <space>é <Plug>AirlineSelectTab2
nmap <space>" <Plug>AirlineSelectTab3
nmap <space>' <Plug>AirlineSelectTab4
nmap <space>( <Plug>AirlineSelectTab5
nmap <space>- <Plug>AirlineSelectTab6
nmap <space>è <Plug>AirlineSelectTab7
nmap <space>_ <Plug>AirlineSelectTab8
nmap <space>ç <Plug>AirlineSelectTab9
set hidden
set confirm

nnoremap <CR><CR> :w<cr>:bdelete<cr>
nnoremap == :bdelete!<cr>
"
"ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nnoremap £ :ALEFix<cr>

set fo=tcrq
set textwidth=120
