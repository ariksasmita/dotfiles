" Plugins init

" ## VIMPLUG
" -------------------------------
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')


" File Tree explorer
Plug 'scrooloose/nerdtree'
" Lighewight Tabline
Plug 'ap/vim-buftabline'
" Get simple Git branch name to use in statusline
Plug 'itchyny/vim-gitbranch'
" Auto pair brackets
Plug 'jiangmiao/auto-pairs'
" Match HTML Tag anywhere in file
Plug 'valloric/MatchTagAlways'
" Sublime Text like Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'
" Editor Config file support
Plug 'editorconfig/editorconfig-vim'
" Extended session management for Vim (:mksession on steroids) 
Plug 'xolox/vim-session'
" Misc. cim scripts (required for vim-session)
Plug 'xolox/vim-misc'
" Silver Search for nvim
Plug 'epmatsw/ag.vim'
" Another alternative tht uses Silver Searcher
Plug 'mhinz/vim-grepper'
" --- Still need to setup
" Plug 'numkil/ag.nvim'

" # Indentations
Plug 'Yggdroot/indentLine'

" # JS Syntax Support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'posva/vim-vue'

" # AUTOCOMPLETION STUFF
Plug 'metalelf0/supertab'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'epilande/vim-react-snippets'

" # GIT SUPPORTS
" Vim Fugitive
Plug 'tpope/vim-fugitive'
" Vim GitGutter
Plug 'airblade/vim-gitgutter'
" Enable Fullscreen
Plug 'lambdalisue/vim-fullscreen'

" # Miscellaneous
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim'

" # THEME
" Papercolor theme
Plug 'NLKNguyen/papercolor-theme'
" Night Owl
Plug 'haishanh/night-owl.vim'


" Initialize plugin system
call plug#end()


" ## BUILT-IN PLUGIN LIKE FEATURES
" -------------------------------
" FINDING FILES:
"
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" List of folders to ignore
set wildignore+=*/node_modules/*

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make fuzzy search
"
" THINGS TO CONSIDER:
" - This also works with :b (buffer) command


" ## NERDTREE
" -------------------------------
"   Open when vim starts
" autocmd vimenter * NERDTree %:p:h<CR>

" Set default size of the plugin
let g:NERDTreeWinSize=40


" ## CTRLP
" -------------------------------
" disable relative to current file default directory
let g:ctrlp_working_path_mode = 0
"
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*


" ## DEOPLETE
" -------------------------------
" Based on config from this kind gentleman:
" * https://www.gregjs.com/vim/2016/configuring-the-deoplete-asynchronous-keyword-completion-plugin-with-tern-for-vim/
" * https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
"
" Deoplete needed python executable to be defined
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
  let g:deoplete#omni#input_patterns.javascript = '[^. *\t]\.\w*'
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" Make Deoplete play nice with multiple third-party plugins
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
  \ 'jsx',
  \ 'javascript.jsx',
  \ 'vue',
  \ 'javascript'
  \ ]

" Use tern_for_vim.
set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources.javascript = ['file', 'ternjs']
let g:deoplete#sources.jsx = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Config SuperTab plugin everything
autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1
" change UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<C-k>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ## IndentLine
" It's pretty useful, but impacts performance quite drastically. Disable it by
" default, and toggle it using :IndentLinesToggle
let g:indentLine_enabled = 0
let g:indentLine_char = "⟩"

" ## VIM-SESSION
" disable session autoload
let g:session_autoload = 'no'
" disable session autosave
let g:session_autosave = 'no'

" ## ALE (eslint-er)
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" set update time showing Git changes faster"
set updatetime=100
let g:ale_lint_on_text_changed='always'
let g:ale_lint_delay=200

" ## VIM-BUFTABLINE
" show 'modified' indicator
let g:buftabline_indicators=1
let g:buftabline_numbers=1
