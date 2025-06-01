vim9script

g:mapleader = ","

# Scratch vim
nnoremap <leader>S
  \:e $XDG_DATA_HOME/vim/scratch.vim <cr>

nnoremap U <C-R>

nnoremap <leader>ff :FZF ~/<cr>

nnoremap <esc><esc> :silent! nohls<cr>

nnoremap <C-J> 5<C-E>
nnoremap <C-K> 5<C-Y>

noremap <silent><leader>o
      \ :call append(line("."), repeat([""], v:count1))<cr>

nnoremap <silent><leader>O
      \ :call append(line(".")-1, repeat([""], v:count1))<cr>

nnoremap S S<esc>

nnoremap G Gzz

nnoremap <c-n> :enew<cr> :saveas<space>

nnoremap <C-W>0 :wincmd =<cr>
nnoremap <C-W>= :wincmd =<cr>

nnoremap <leader>ww :w<cr>

nnoremap <leader>ea za
nnoremap <leader>e0 zO
nnoremap <leader>eR zR
nnoremap <leader>em zm
nnoremap <leader>ej zj
nnoremap <leader>ek zk
nnoremap <leader>eJ ]z
nnoremap <leader>eK [z

noremap <leader>p "+p_hx$

nnoremap g= gg=G``

nmap <leader>j :bp<cr>
nmap <leader>k :bn<cr>
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

#- Scratch vim
nnoremap <leader>S :e $XDG_DATA_HOME/vim/scratch.vim <cr>

#- Unhighlight search results
nnoremap <esc><esc>
      \ :silent! nohls<cr>

#- Scroll down
nnoremap <C-J>
      \ 5<C-E>

#- Scroll up
nnoremap
      \ <C-K> 5<C-Y>

#- Insert line below and do not enter insert mode
noremap <silent><leader>o
      \ :call append(line("."), repeat([""], v:count1))<cr>

#- Insert line above and do not enter insert mode
nnoremap <silent><leader>O
      \ :call append(line(".")-1, repeat([""], v:count1))<cr>

#- Delete whole line and back to normal mode
nnoremap S
      \ S<esc>

#- Go to bottom and center page
nnoremap G
      \ Gzz

#-- Open new file and ask for name
nnoremap <c-n>
      \ :enew<cr>
      \ :saveas<space>

#- Cycle windows
# <C-W><C-M>
nnoremap <leader>wl
      \ <c-w>r
      \ <c-w>l

#- vsplit window
nnoremap <leader>ws
      \ <C-W>v

#- close splitted window
nnoremap <leader>wo
      \ :q<cr>

#- Equalize windows
# TODO w: Schould'nt this be builtin?
nnoremap <C-W>0
      \ :wincmd =<cr>
nnoremap <C-W>=
      \ :wincmd =<cr>


#- Save file
nnoremap <leader>ww
      \ :w<cr>

#- Folds
nnoremap <leader>eo
      \ za
nnoremap <leader>eO
      \ zO
nnoremap <leader>eR
      \ zR
nnoremap <leader>em
      \ zm
nnoremap <leader>ej
      \ zj
nnoremap <leader>ek
      \ zk
nnoremap <leader>ek
      \ zk
nnoremap <leader>eJ
      \ ]z
nnoremap <leader>eK
      \ [z

#- Paste from to clipboard
# TODO: Without _hx$ the inserted text Maybe find a better solution some day
# Fixed it with go to first not empty char, left, x, $
# Maybe find a better solution some day
noremap <leader>p
      \ "+p_hx$

#- Git
nnoremap <leader>g
      \ :Git<cr>
      \ :MaximizerToggle<cr>

nnoremap <leader>P
      \ :Git push<cr>

#- Format source code
nnoremap g=
      \ gg=G``
