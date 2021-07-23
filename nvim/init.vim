set number 			" Set line numbers
set linebreak 			" Break lines at word
set showbreak=+++ 		" Wrap broken line prefix
set textwidth=100 		" Line wrap (number of cols)
set showmatch			" Highlight matching brace
set spell			" Enable spell checker
set visualbell			" Use visual bell (no beeping)

set hlsearch			" Highlight all search results
set smartcase			" Enable smart-case search
set incsearch			" Search for strings incrementally

set autoindent			" Auto-indent new lines
set cindent			" Use 'C' style program indenting
set expandtab			" Use spaces instead of tabs
set shiftwidth=4		" Number of auto indent spaces
set smartindent			" Enable smart indent
set smarttab			" Enable smart tabs
set softtabstop=4		" Number of spaces per tab

set undolevels=1000		" Number of undo levels
set backspace=indent,eol,start	" Backspace behavior

set hidden			" Blocks the prompt to save when switch buffers

scriptencoding utf-8
let g:plug_home=expand(stdpath('data') . './plugged')

call plug#begin()
Plug 'morhetz/gruvbox'
"Auto completion
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
Plug 'prabirshrestha/vim-lsp'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'Shougo/neco-vim', { 'for': 'vim' }
"C++ semantic highlighting
if executable('ccls')
    Plug 'jackguo380/vim-lsp-cxx-highlight'
endif
"Clear highlight search automatically
Plug 'romainl/vim-cool'
"Show current search term in different color
Plug 'PeterRincker/vim-searchlight'
"Show match number for incremental search
Plug 'osyo-manga/vim-anzu'
"File search tag search
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'lifepillar/vim-gruvbox8'
if !exists('g:started_by_firenvim')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'
endif
"Highlight URLs 
Plug 'itchyny/vim-highlighturl'
"Open link in browser
Plug 'tyru/open-browser.vim'
if executable('ctags')
    Plug 'ludovicchabant/vim-gutentags'
    "Show tags in vim window
    Plug 'liuchengxu/vista.vim'
endif
call plug#end()

"Color scheme settings
colorscheme gruvbox8
let g:gruvbox_italics = 1
let g:gruvbox_italicize_strings = 1
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1

"Auto-complete related
"let g:deoplete#enable_at_startup = 1

"gutentags settings
let g:gutentags_cache_dir = stdpath('cache') . '/ctags'
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=px']
let g:gutentags_ctags_exclude = ['*.md', '*.html', '*.json', '*.toml', '*.css', '*.js',]
"vim-startify settings
let g:startify_change_to_dir = 0
let g:startify_fortune_use_unicode = 1

"LeaderF
let g:Lf_CacheDirectory = stdpath('cache') . '/LeaderF'

