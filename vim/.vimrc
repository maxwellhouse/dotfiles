set nocompatible              " be iMproved, required
filetype on                  " required
filetype plugin on "for taglist
syntax enable
set background=dark
colorscheme solarized
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
filetype plugin indent on
