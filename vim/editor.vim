" Set background scheme
set background=dark
if (has("termguicolors"))
 set termguicolors
 colorscheme panic
endif

set guifont=Fira\ Code:h10

" ## Syntax highlighting
syntax on
filetype plugin on

" ## Script encoding
scriptencoding utf-8

" ## Editor configs
set shiftwidth=2
set autoindent
set autoread
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


" Increase (?) undo levels
set undolevels=100

" set persistent Undo
set undodir=~/.vim/undodir
set undofile

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

" More natural splitting, adding to left and bottom of view
set splitbelow
set splitright
