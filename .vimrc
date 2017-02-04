execute pathogen#infect()

inoremap jk <ESC>
filetype plugin indent on
syntax on
set encoding=utf-8
set tabstop=4
let g:ycm_global_ycm_extra_conf = '/home/christophergrace/.vim/bundle/YouCompleteMe/third_party/ycmd/ycm_global_ycm_extra_conf.py'

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

