execute pathogen#infect()

inoremap jk <ESC>
syntax on
set encoding=utf-8

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Location of YouCompleteMe C configuration
let g:ycm_global_ycm_extra_conf = '/home/christophergrace/.vim/bundle/YouCompleteMe/third_party/ycmd/ycm_global_ycm_extra_conf.py'
