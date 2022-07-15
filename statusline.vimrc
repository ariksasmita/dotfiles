" Statuslines (when Airline disabled)

" Manually set the status line color.
" TODO: https://www.rosipov.com/blog/status-bar-color-in-vim-terminal-mode/
" hi StatusLineTerm ctermbg=24 ctermfg=254 guibg=#004f87 guifg=#e4e4e4
" hi StatusLineTermNC ctermbg=252 ctermfg=238 guibg=#d0d0d0 guifg=#444444

"" --
"" status bar colors
"au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
"au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
"hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
"" --

 hi NormalColor guifg=White guibg=Green ctermbg=46 ctermfg=255
 hi InsertColor guifg=Grey0 guibg=Cyan ctermbg=51 ctermfg=0
 hi ReplaceColor guifg=Grey0 guibg=maroon1 ctermbg=165 ctermfg=0
 hi VisualColor guifg=Grey0 guibg=Orange ctermbg=202 ctermfg=0
 hi DefaultColor guifg=White guibg=#1E2327 ctermfg=black ctermbg=cyan
 
 set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NO\ ':''}
 set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ IN\ ':''}
 set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ RE\ ':''}
 set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VI\ ':''}
 
 " set statusline+=%#PmenuSel#
 set statusline+=\ 
 set statusline+=%{gitbranch#name()}
 set statusline+=\ 
 set statusline+=%#LineNr#
 set statusline+=%#DefaultColor#
 set statusline+=\ %f
 set statusline+=%m\
 set statusline+=%=
 set statusline+=\ %y
 set statusline+=\ 
 set statusline+=%#CursorColumn#
 set statusline+=%#DefaultColor#
 " set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
 set statusline+=\ 
 " set statusline+=\[%{&fileformat}\]
 set statusline+=\ 
 set statusline+=%#DefaultColor#
 set statusline+=%#PmenuSel#
 set statusline+=%#DefaultColor#
 set statusline+=\ %p%%
 set statusline+=\ %l:%c
 set statusline+=\ 
 set statusline+=\ 
" OLD STATUSLINE

"" NEW STATUSLINE
"" ref: https://gist.github.com/meskarune/57b613907ebd1df67eb7bdb83c6e6641#file-vimrc-L45
""
"" status bar colors
"au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
"au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
"hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
"
"" Status line
"" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)
"
"" Status Line Custom
"let g:currentmode={
"    \ 'n'  : 'Normal',
"    \ 'no' : 'Normal·Operator Pending',
"    \ 'v'  : 'Visual',
"    \ 'V'  : 'V·Line',
"    \ '^V' : 'V·Block',
"    \ 's'  : 'Select',
"    \ 'S'  : 'S·Line',
"    \ '^S' : 'S·Block',
"    \ 'i'  : 'Insert',
"    \ 'R'  : 'Replace',
"    \ 'Rv' : 'V·Replace',
"    \ 'c'  : 'Command',
"    \ 'cv' : 'Vim Ex',
"    \ 'ce' : 'Ex',
"    \ 'r'  : 'Prompt',
"    \ 'rm' : 'More',
"    \ 'r?' : 'Confirm',
"    \ '!'  : 'Shell',
"    \ 't'  : 'Terminal'
"    \}
"
"set laststatus=2
"set noshowmode
"set statusline=
"set statusline+=%0*\ %n\                                 " Buffer number
"set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
"set statusline+=%3*│                                     " Separator
"set statusline+=%{gitbranch#name()}
"set statusline+=%3*│                                     " Separator
"set statusline+=%=                                       " Right Side
"set statusline+=%2*\ %Y\                                 " FileType
"set statusline+=%3*│                                     " Separator
"set statusline+=%2*\ col:\ %02v\                         " Colomn number
"set statusline+=%3*│                                     " Separator
"set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
"set statusline+=%#PmenuSel#
"set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode
"
"hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
"hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
"hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
"hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
