" Plugins init

" ## VIMPLUG
" -------------------------------
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" ### FEATURES PLUGIN
" File Tree explorer
Plug 'scrooloose/nerdtree'
" Lighewight Tabline
Plug 'ap/vim-buftabline'
" Get simple Git branch name to use in statusline
Plug 'itchyny/vim-gitbranch'
" Auto pair brackets
Plug 'jiangmiao/auto-pairs'
" Editor Config file support
Plug 'editorconfig/editorconfig-vim'
" Extended session management for Vim (:mksession on steroids) 
Plug 'xolox/vim-session'
" Misc. cim scripts (required for vim-session)
Plug 'xolox/vim-misc'
" ACK Vim
Plug 'mileszs/ack.vim'
" Change to project's directory on file open
Plug 'airblade/vim-rooter'
" Prevent Loosing split when closing buffers
Plug 'qpkorr/vim-bufkill'
" # Indentations
Plug 'Yggdroot/indentLine'
" Emmet
Plug 'mattn/emmet-vim'
" ctrlp Fuzzy File Finder
Plug 'ctrlpvim/ctrlp.vim'

" ### CODE COMPLETION
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ### LANGUAGE SUPPORT
" Universal Lang Support
Plug 'sheerun/vim-polyglot'

" ### LINTING
Plug 'dense-analysis/ale'

" ### GIT SUPPORTS
" Vim Fugitive
Plug 'tpope/vim-fugitive'
" Vim Fugitive helper for commits and conflict resolver
Plug 'idanarye/vim-merginal'
" Vim GitGutter
Plug 'airblade/vim-gitgutter'

" ### THEME
" Panic!
" Plug 'jdsimcoe/panic.vim'
" My fork with few adjustments
Plug 'ariksasmita/panic.vim'

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
"   Open when vim starts
" autocmd vimenter * NERDTree %:p:h<CR>

" Set default size of the plugin
let g:NERDTreeWinSize=30
let NERDTreeIgnore = ['^node_modules$[[dir]]', '^public$']



" ## CTRLP
" disable relative to current file default directory
let g:ctrlp_working_path_mode = 0
" list hidden files as well
let g:ctrlp_show_hidden = 1
"
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*



" ## INDENTLINE
" It's pretty useful, but impacts performance quite drastically. Disable it by
" default, and toggle it using :IndentLinesToggle
let g:indentLine_enabled = 0
let g:indentLine_char = "|"



" ## VIM-SESSION
" disable session autoload
let g:session_autoload = 'no'
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



" ## VIM-BUFTABLINE
" show 'modified' indicator
let g:buftabline_indicators=1
let g:buftabline_numbers=1



" ## VIM-FUGITIVE
" Split Issue fix (GStatus goes to the left instead of bottom; Should be
" bottom
set diffopt+=vertical



" ## EMMET
" Remap key
let g:user_emmet_leader_key='<C-B>'
