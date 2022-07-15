" Statuslines (when Airline disabled)
set laststatus=2

hi NormalColor guifg=White guibg=Green ctermbg=46 ctermfg=255
hi InsertColor guifg=Grey0 guibg=Cyan ctermbg=51 ctermfg=0
hi ReplaceColor guifg=Grey0 guibg=maroon1 ctermbg=165 ctermfg=0
hi VisualColor guifg=Grey0 guibg=Orange ctermbg=202 ctermfg=0

set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NO\ ':''}
set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ IN\ ':''}
set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ RE\ ':''}
set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VI\ ':''}

set statusline+=%#PmenuSel#
set statusline+=\ 
set statusline+=%{gitbranch#name()}
set statusline+=\ 
set statusline+=%#LineNr#
set statusline+=%#NormalColor#%{''}
set statusline+=\|
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=\ %y
set statusline+=\ 
set statusline+=%#CursorColumn#
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ 
set statusline+=\[%{&fileformat}\]
set statusline+=\ 
set statusline+=%#PmenuSel#
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
set statusline+=\ 
