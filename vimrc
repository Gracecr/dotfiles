" === Vim-Plug install ===
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" === Vim-Plug plugins ===
call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" === Misc Settings ===
filetype plugin indent on
runtime macros/matchit.vim
let mapleader = " "
let g:is_posix =1 " Use Bash syntax highlighting for scripts
set ttimeoutlen=10
set spell
set autoread
set hidden
set history=50
set omnifunc=syntaxcomplete#Complete
set complete-=i
set nrformats-=octal
set incsearch
set ruler
set wildmenu
set scrolloff=1
set sidescrolloff=5
set display+=lastline
set number
set encoding=utf-8
set autoindent
set backspace=indent,eol,start
set shiftwidth=4
set smarttab
set expandtab
if !exists("g:syntax_on")
    syntax enable
endif
set formatoptions+=j " Delete comment character when joining commented lines

" === Color scheme ===
if (empty($TMUX))
    if (has("termguicolors"))
        set termguicolors
    endif
endif
colorscheme onedark
set t_ut= " Disable background color erase because I didn't change my
" terminal's background to math the color scheme
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#disable_rtp_load = 1

" === Persistent Folding ===
set viewoptions-=options " Don't save current directory with view
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" === Persistent Undo ===
if has('persistent_undo') && !isdirectory(expand('~').'/.vim/backups')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

" === Custom Key Bindings ===

