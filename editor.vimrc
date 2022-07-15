" ## Windows Behavior Binding
" Adds behavior for Windows OS
" source $VIMRUNTIME/mswin.vim

" ## Declare terminal has 256 colors
" set t_Co=256

" ## Colorscheme
" Set background scheme
set background=dark
if (has("termguicolors"))
 set termguicolors
 colorscheme panic
endif

set guifont=Fira\ Code:h10
" set guifont=Monoid:h10
"
" set colorcolumn=100
" highlight ColorColumn ctermbg=0 guibg=
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%101v.\+/
" match ErrorMsg '\%>100v.\+'

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
" set clipboard=unnamed

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
" set foldmethod=indent
" set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" Highlithing for large files
" ref: https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim#highlighting-for-large-files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
