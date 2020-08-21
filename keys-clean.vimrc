" Keymaps

" ## EDITOR MAPS
" -------------------------------------------
" Map Leader key to SPACE
let mapleader="\<SPACE>"

imap <S-CR> <Esc>
imap ;; <Esc>
noremap ;; <Esc>

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

" Cycle through open buffers
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR>

" Disable above on NERDTree buffers
" :autocmd FileType nerdtree noremap <buffer> <Tab> <nop>
" :autocmd FileType nerdtree noremap <buffer> <S-Tab> <nop>


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


" ## Code Convinience
" -------------------------------------------
" Wrap lines in /*...*/ lines
vnoremap <Leader>c "ec/*<CR>*/<Esc>k"ep
nnoremap <Leader>/ <S-i>//<Space><Esc>
"  Comment HTML/Template
nnoremap <Leader>hc ^"eC<!-- <Esc>"epa --><Esc>
" Resync syntax highlights
nnoremap <Leader>r :syntax sync fromstart<CR>


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
" Find current buffer in NERDTree
nnoremap <Leader>s :NERDTreeFind<cr>


" ## MERGINAL
" Toggle Merginal Panel
nnoremap <Leader>m :MerginalToggle<CR>


" ## SNIPPETS
"You can use <c-j> to goto the next <++> - it is pretty smart.
autocmd BufRead,BufNewFile *.vue inorea <buffer> vue <c-r>=IMAP_PutTextWithMovement('<template>\n<++>\n</templtate>\n\n<script>\n<++>\n</script>\n\n<style lang="<++>">\n<++></style>')<CR>
