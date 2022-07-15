" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" File Tree explorer
Plug 'scrooloose/nerdtree'
" Lighewight Tabline
Plug 'ap/vim-buftabline'
" Get simple Git branch name to use in statusline
Plug 'itchyny/vim-gitbranch'
" Auto pair brackets
Plug 'jiangmiao/auto-pairs'
" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'
" Editor Config file support
Plug 'editorconfig/editorconfig-vim'
" ACK Vim
Plug 'mileszs/ack.vim'
" Change to project's directory on file open
Plug 'airblade/vim-rooter'
" Prevent Loosing split when closing buffers
Plug 'qpkorr/vim-bufkill'
" # Indentations
Plug 'Yggdroot/indentLine'
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
" Vim GitGutter
Plug 'airblade/vim-gitgutter'

" ### THEME
" Panic!
" Plug 'jdsimcoe/panic.vim'
Plug 'ariksasmita/panic.vim'

" Initialize plugin system
call plug#end()

" ## VIM-FUGITIVE
" Split Issue fix (GStatus goes to the left instead of bottom; Should be
" bottom
set diffopt+=vertical

" ## EMMET
" Remap key
let g:user_emmet_leader_key='<C-B>'

" ## VIM-BUFTABLINE
" show 'modified' indicator
let g:buftabline_indicators=1
let g:buftabline_numbers=1

" ## ALE signs
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" ## SNIPPETS
"You can use <c-j> to goto the next <++> - it is pretty smart.
autocmd BufRead,BufNewFile *.vue inorea <buffer> vue <c-r>=IMAP_PutTextWithMovement('<template>\n<++>\n</templtate>\n\n<script>\n<++>\n</script>\n\n<style lang="<++>">\n<++></style>')<CR>

"Press c-q insted of space (or other key) to complete the snippet
imap <C-q> <C-]>

" ## INDENTLine
let g:indentLine_enabled = 0
let g:indentLine_char = '⎸'

" VIM Rooter Silent Mode
let g:rooter_silent_chdir = 1
