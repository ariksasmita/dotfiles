" IMPORTANT: change below path to suite your system config!
" -------
" let g:python_host_prog = '/usr/bin/python'
" let g:python3_host_prog = '/usr/bin/python3'

"OniVim specific configs
if exists('g:gui_oni')
    set number
    set noswapfile
    set smartcase

    " Enable GUI mouse behavior
    set mouse=a

    " If using Oni's externalized statusline, hide vim's native statusline, 
    set noshowmode
    set noruler
    set laststatus=0
    set noshowcmd
endif
