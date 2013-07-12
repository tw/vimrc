set nocompatible " VI < VIM

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" ITSELF!
Bundle 'gmarik/vundle'
" Status line
Bundle 'bling/vim-airline'
" File management
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
" Version Control
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
" Completion and snippet support
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'
Bundle 'tobiewarburton/vim-snippets'
" Python
Bundle 'hdima/python-syntax'
Bundle 'nvie/vim-flake8'
Bundle 'vim-scripts/django.vim'
" Gist!
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
" Colorschemes!
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
" Show bad whitespace
Bundle 'bitc/vim-bad-whitespace'

set ttimeoutlen=50
set t_Co=256

set laststatus=2
set noshowmode
set encoding=utf-8
set nobackup
set nowb
set noswapfile

syntax enable
set cursorline
set hlsearch

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
set omnifunc=syntaxcomplete#Complete

set expandtab
set autoindent
set backspace=indent,eol,start
set ruler
set number
set showmatch
set shiftround

" by default four spaces!
set shiftwidth=4
set softtabstop=4
set tabstop=4

" nerdtree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
            \ '\.o$', '\.so$', '\.egg$',]
" powerline
let g:airline_theme='light'
let g:airline_right_sep=''
let g:airline_left_sep=''
let g:airline_fugitive_prefix = '⎇ '
" ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" toggle bg fixes
call togglebg#map("")
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" gist
let g:gist_show_privates = 1
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1
" python ye
let python_highlight_all = 1
let python_highlight_space_errors = 0
au FileType html setlocal ft=htmldjango

" Colors
set colorcolumn=80
set background=light
if has("gui_running")
    "gui options
    set guifont=Inconsolata:h14
    set guioptions=
else
    "terminal options
    let g:solarized_termcolors=256
endif
colorscheme solarized

" escape keymaps keymaps
inoremap jk <esc>
inoremap kj <esc>

" navigate/resize splits
" j and J
map <C-j> <C-W>j
map <S-j> <C-W>-
" k and K
map <C-k> <C-W>k
map <S-k> <C-W>+
" h and H
map <C-h> <C-W>h
map <S-h> <C-W><
" l and L
map <C-l> <C-W>l
map <S-l> <C-W>>
" hide highlighted
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" U redo since u undos
nnoremap U <c-r>

map ; :
map ;; ;
