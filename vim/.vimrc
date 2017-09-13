set nocompatible              " be iMproved, required
filetype on                  " required
filetype plugin on "for taglist
colorscheme wombat256
syntax enable
set tabstop=8       " number of visual spaces per TAB
set softtabstop=0   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4    " the size of an indent
set smarttab        "tab with the tab key
set autoindent      "turn on auto indent"
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set visualbell          "flash the screen rather than bin:
set ruler               " show column and line number
set ignorecase          " ignore case when searching
set smartcase           " ignore case
set autoread            " turn off the error about destructive write when changing buffers

" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" jk is escape
inoremap jk <esc>
set guifont=Monaco:h6
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

set fileencoding=utf8
set bomb
let g:ycm_global_ycm_extra_conf = '~/.ycmd_make_conf.py'
let g:ycm_extra_conf_vim_data = ['&filetype']
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'lyuts/vim-rtags'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on
