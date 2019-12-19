Guifont! Monoid:h10
" Guifont! Fira Code:h10
GuiLinespace 4
" call rpcnotify(0, 'Gui', 'WindowMaximized', 1)
" Userfull src: https://github.com/equalsraf/neovim-qt/blob/master/src/gui/runtime/plugin/nvim_gui_shim.vim

" Make it Fullscreen by Ctrl + Enter (lambdalisue/vim-fullscreen)
let g:fullscreen#start_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 1)"
let g:fullscreen#stop_command = "call rpcnotify(0, 'Gui', 'WindowFullScreen', 0)"
