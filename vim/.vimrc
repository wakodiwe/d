vim9script

# __   _(_)_ __ ___  _ __ ___
# \ \ / / | '_ ` _ \| '__/ __|
#  \ V /| | | | | | | | | (__
#   \_/ |_|_| |_| |_|_|  \___|

set nocompatible
filetype plugin indent on
syntax on

set foldenable
set foldmethod=syntax

set noswapfile

set hidden
set smartindent
set tabstop=2 
set number
set relativenumber

set hlsearch
set incsearch
set foldmethod=syntax

set t_Co=256
colorscheme gruvbox

# augroup bashabbrev | abbrev #!/usr/env bashexe "au! BufRead *" | augroup END

g:mapleader = ","

nnoremap <leader>S :e $XDG_DATA_HOME/vim/scratch.vim <cr>

nnoremap U <C-R>

nnoremap <esc><esc> :silent! nohls<CR>

nnoremap <C-J> 5<C-E>
nnoremap <C-K> 5<C-Y>

noremap <silent><leader>o
      \ :call append(line("."), repeat([""], v:count1))<CR>

nnoremap <silent><leader>O
      \ :call append(line(".")-1, repeat([""], v:count1))<CR>

nnoremap S S<esc>

nnoremap G Gzz

nnoremap <c-n> :enew<cr> :saveas<space>

nnoremap <C-W>0 :wincmd =<cr>
nnoremap <C-W>= :wincmd =<cr>

nnoremap <leader>ww :w<CR>

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
