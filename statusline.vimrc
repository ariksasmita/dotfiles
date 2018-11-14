" Statuslines (when Airline disabled)

set statusline+=%#PmenuSel#
set statusline+=\ 
set statusline+=%{gitbranch#name()}
set statusline+=\ 
set statusline+=%#LineNr#
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