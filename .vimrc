set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

inoremap jk <ESC>

set background=dark
set number
syntax on
set encoding=utf-8

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Allow hidden buffers
set hidden

" Allow for > 20 cmds in history
set history=50

" Allows '%' to match more than braces
runtime macros/matchit.vim

" More useful tab completion
set wildmode=list:longest

" Enable omni completion
set omnifunc=syntaxcomplete#Complete
