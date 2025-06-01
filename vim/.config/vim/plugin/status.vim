set
      \ laststatus=2
      \ noshowmode
      \ ruler

set statusline=
set statusline+=\ [\ \%{ObsessionStatus('O','X')}\ ]
set statusline+=\ %y  
set statusline+=\ %<%F 
set statusline+=%m   
set statusline+=%=%5l 
set statusline+=/%L  
set statusline+=%4v\  
