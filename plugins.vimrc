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
" Plug 'valloric/MatchTagAlways'
Plug 'ctrlpvim/ctrlp.vim'
" Editor Config file support
Plug 'editorconfig/editorconfig-vim'
" Extended session management for Vim (:mksession on steroids) 
" Plug 'xolox/vim-session'
" Misc. cim scripts (required for vim-session)
Plug 'xolox/vim-misc'
" Another alternative tht uses Silver Searcher
" Plug 'mhinz/vim-grepper'
" ACK Vim
Plug 'mileszs/ack.vim'
" Change to project's directory on file open
Plug 'airblade/vim-rooter'
" Prevent Loosing split when closing buffers
Plug 'qpkorr/vim-bufkill'

" # Indentations
Plug 'Yggdroot/indentLine'

" # JS Syntax Support
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'posva/vim-vue'
Plug 'leafoftree/vim-svelte-plugin'

" Prettier
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'branch': 'release/1.x',
"   \ 'for': [
"     \ 'javascript',
"     \ 'typescript',
"     \ 'css',
"     \ 'less',
"     \ 'scss',
"     \ 'json',
"     \ 'graphql',
"     \ 'markdown',
"     \ 'vue',
"     \ 'lua',
"     \ 'php',
"     \ 'python',
"     \ 'ruby',
"     \ 'html',
"     \ 'swift' ] }
"
" # TypeScript syntax support
Plug 'leafgarland/typescript-vim'

" # PHP Blade Template Engine Syntax Support
Plug 'jwalton512/vim-blade'

" # Better Markdown Hihglight
Plug 'gabrielelana/vim-markdown'

" # AUTOCOMPLETION STUFF
" Plug 'metalelf0/supertab'
if has('nvim')
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/context_filetype.vim'
else
  " Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'epilande/vim-react-snippets'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emmet
Plug 'mattn/emmet-vim'

" " # GIT SUPPORTS
" Vim Fugitive
Plug 'tpope/vim-fugitive'
" Vim Fugitive helper for commits and conflict resolver
Plug 'idanarye/vim-merginal'
" Vim GitGutter
Plug 'airblade/vim-gitgutter'
" Enable Fullscreen
Plug 'lambdalisue/vim-fullscreen'

" # PLANT UML PREVIEW
Plug 'scrooloose/vim-slumlord'
" # PLANT UML SYNTAX
Plug 'aklt/plantuml-syntax'

" # Miscellaneous
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" # THEME
" Papercolor theme
Plug 'NLKNguyen/papercolor-theme'
" Night Owl
Plug 'haishanh/night-owl.vim'
" Dark Purple
Plug 'shapeoflambda/dark-purple.vim'
" Ayu
Plug 'ayu-theme/ayu-vim'
" One Half
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" Tequila Sunrise
Plug 'levelone/tequila-sunrise.vim'
" Panic!
" Plug 'jdsimcoe/panic.vim'
" My fork with few adjustments
Plug 'ariksasmita/panic.vim'

" Initialize plugin system
call plug#end()

" ## ACK VIM
" if executable('ag')
" let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
"   let g:ackprg = 'ag --nogroup --nocolor --column'
" endif

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
let g:NERDTreeWinSize=30
let NERDTreeIgnore = ['^node_modules$[[dir]]']


" ## CTRLP
" -------------------------------
" disable relative to current file default directory
let g:ctrlp_working_path_mode = 0
" list hidden files as well
let g:ctrlp_show_hidden = 1
"
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*


" ## UltiSnips without deoplete
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ## IndentLine
" It's pretty useful, but impacts performance quite drastically. Disable it by
" default, and toggle it using :IndentLinesToggle
let g:indentLine_enabled = 0
" let g:indentLine_char = "⟩"
let g:indentLine_char = "|"

" ## VIM-SESSION
" disable session autoload
let g:session_autoload = 'yes'
" disable session autosave
let g:session_autosave = 'yes'
" autosave for some interval of time (minutes)
let g:session_autosave_periodic = 5
" silence autosave dialog
let g:session_autosave_silent = 1
" commang aliases
let g:session_command_aliases = 1

" ## ALE (eslint-er)
let g:ale_linter_aliases = {
\  'vue': ['javascript', 'css', 'html'],
\  'svelte': ['css', 'javascript']
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'vue': ['eslint'],
\   'svelte': ['stylelint', 'eslint']
\}
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'vue': ['prettier', 'eslint'],
\   'svelte': ['prettier', 'eslint'],
\   'scss':['prettier', 'stylelint'],
\}
" ALE function for statusline
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

" Filetype Context (for Svelte and other script that got sections of script
" and style)
if !exists('g:context_filetype#same_filetypes')
    let g:context_filetype#filetypes = {}
endif
let g:context_filetype#filetypes.svelte =
   \ [
   \    {'filetype' : 'javascript', 'start' : '<script>', 'end' : '</script>'},
   \    {'filetype' : 'css', 'start' : '<style>', 'end' : '</style>'},
   \ ]
let g:context_filetype#filetypes.vue =
   \ [
   \    {'filetype' : 'javascript', 'start' : '<script>', 'end' : '</script>'},
   \    {'filetype' : 'scss', 'start' : '<style>', 'end' : '</style>'},
   \    {'filetype' : 'css', 'start' : '<style>', 'end' : '</style>'},
   \    {'filetype' : 'less', 'start' : '<style>', 'end' : '</style>'},
   \ ]

" set update time showing Git changes faster"
set updatetime=100
let g:ale_lint_on_text_changed='always'
let g:ale_lint_delay=200

" signs
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" fix on save
" let g:ale_fix_on_save = 1

" ## VIM-BUFTABLINE
" show 'modified' indicator
let g:buftabline_indicators=1
let g:buftabline_numbers=1

" ## VIM-FUGITIVE
" Split Issue fix (GStatus goes to the left instead of bottom; Should be
" bottom
set diffopt+=vertical

" TERN JS AUTOCOMPLETION AUTOSTART
let g:tern#command = ['tern']
let g:tern#arguments = ["--no-port-file --persistent"]

" EMMET
" Remap key
let g:user_emmet_leader_key='<C-B>'

" VIM-SVELTE-PLUGIN
let g:vim_svelte_plugin_load_full_syntax = 1

" MARKDOWN PREVIEW CONFIG
let g:mkdp_auto_start = 1
" let g:mkdp_auto_close = 0
