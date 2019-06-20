" Keymaps

" ## EDITOR MAPS
" -------------------------------------------
" Map Leader key to SPACE
let mapleader="\<SPACE>"

" Switch between split
noremap <Leader>w <c-w><c-w>

" Switch between tabs
noremap <Leader>0 :tabNext<CR>

" Resize (mostly NERDTree buffer) width to 30
nnoremap <Leader>3 :vertical resize 30<CR>

" Make equal split width
nnoremap <Leader>= <c-w>=

" Switch splits easily
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Navigate by display lines
noremap j gj
noremap k gk

" Show next matched string at the center of the screen
nnoremap n nzz
nnoremap N Nzz

" Swith to last buffer
nnoremap tt <C-^>

" Cycle through open buffers
noremap <Tab> :bnext!<CR>
noremap <S-Tab> :bprev!<CR>

" EXTREME: Arrow keys to resize panel,
" AND also disable arrow keys in Insert mode
nnoremap <Left> :vertical resize -1<CR>
nnoremap <Right> :vertical resize +1<CR>
nnoremap <Up> :resize -1<CR>
nnoremap <Down> :resize +1<CR>
" Disable arrow keys completely in Insert Mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Escape Terminal Mode
:tnoremap <Esc> <C-\><C-n>

" Wrap lines in /*...*/ lines
vnoremap <Leader>c c/*<CR>*/<Esc>kp
nnoremap <Leader>/ <S-i>//<Space><Esc>


" ## PLUGIN RELATED MAPS
" -------------------------------------------
" Toggle NERDTree (Plugin)
map <C-n> :NERDTreeToggle<CR>
" Toggle Indentation (Plugin)
nnoremap <Leader>t :IndentLinesToggle<CR>
" Toggle GitGutter (Plugin)
nnoremap <Leader>g :GitGutterToggle<CR>
" More convinient change in tag
nnoremap <Leader>h cit<CR><CR><ESC>k<S-a><TAB>
" For above config, when we press Enter, remove all highlights
nnoremap <Leader>n :nohlsearch<cr>
" Close all but current buffer
nnoremap <Leader>cx :%bd\|e#<CR>
" Deoplete tab-complete
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" Tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
" Grepper strinh search using ag
nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>
" Find current buffer in NERDTree
nnoremap <Leader>s :NERDTreeFind<cr>
