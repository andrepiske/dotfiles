
" execute pathogen#infect()

set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Begin Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'tpope/vim-commentary'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'FelikZ/ctrlp-py-matcher'
Plugin 'pearofducks/ansible-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
" End Vundle plugins
call vundle#end()

filetype plugin indent on
set nohlsearch
set incsearch
set autoindent
set nosmartindent
set ts=2
set shiftwidth=2
set expandtab
set nobackup
set ruler
"set cc=80
set backspace=eol,start,indent
set history=1000
set nowrap
set hidden
set sbr=>>
let g:user_zen_leader_key = '<c-k>'
let g:js_indent_log = 0
let g:miniBufExplModSelTarget = 1
let g:miniBufExplShowBufNumbers = 0

" PyMatch for ctrlp
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }

set tags^=/tmp/vimctags
set noswapfile

set ssop-=options
set ssop-=folds

" Configure NERDTree
autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-l> :NERDTreeToggle<CR>

" Vala filetype
autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

au BufRead,BufNewFile wscript setfiletype python
au BufRead,BufNewFile SConstruct setfiletype python

au BufNewFile,BufRead *.cl setlocal filetype=opencl

" VB.NET filetype
autocmd BufNewFile,BufRead *.vb set ft=vbnet

" LESS filetype
au BufRead,BufNewFile *.less setfiletype less

if has("gui_running")
    set guioptions=aci
    " set guifont=peep
    " set guifont=ProggySquareTTSZ\ 12
    " set guifont=Source\ Code\ Pro\ Regular\ 11
    " set guifont=Inconsolata-g\ 10
    " set guifont=Monaco\ 9
    set guifont=Source\ Code\ Pro\ Medium\ 8.2
    set antialias
    " set lines=50 columns=130
    set lines=47 columns=170
    set lines=999 columns=999
    " colorscheme vividchalk
    set background=dark
    " colorscheme solarized
    colorscheme railscasts
endif

syntax on
hi ColorColumn ctermbg=lightgray

" Key Mappings
map <Down> <C-e>
map <Up> <C-y>
map <Left> :bprevious<CR>
map <Right> :bnext<CR>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-F11> :!(cd %:p:h;ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -o /tmp/vimctags .)&<CR>
map <C-F9> :syntax sync fromstart<CR>
" cnoremap <expr> bd (getcmdtype() == ':' ? 'Bclose' : 'bd')
command -nargs=0 Cadi 0/virtual<Return>dawf=d$A{<Esc>o<Esc>o{<Esc>

