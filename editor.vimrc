" ## Windows Behavior Binding
" Adds behavior for Windows OS
source $VIMRUNTIME/mswin.vim

" ## Colorscheme
" Set background scheme
set background=dark
if (has("termguicolors"))
 set termguicolors
endif
colorscheme PaperColor 
" colorscheme night-owl

" ## Syntax highlighting
syntax on
filetype plugin on

" ## Script encoding
scriptencoding utf-8

" ## Editor configs
set shiftwidth=2
set autoindent
set smartindent
set cindent
set expandtab
set backspace=indent,eol,start
set nowritebackup
set nobackup
set noswapfile
set number
set relativenumber
set mouse=a
set hidden
set list
set listchars=tab:→\ ,trail:·,precedes:«,extends:»

" Set tab width and convert tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Increase (?) undo levels
set undolevels=100

" Use system's clipboard
set clipboard=unnamed

" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells

" Set endline to UNIX LF. Change to 'dos' for CLRF
set ff=unix

" Better searches
set hlsearch
set incsearch
set ignorecase
set smartcase

" Force minimum window width
" set winwidth=510

" More natural splitting, adding to left and bottom of view
set splitbelow
set splitright

" Setup folding
" set foldmethod=syntax
" set foldnestmax=10
" set nofoldenable
" set foldlevel=2
