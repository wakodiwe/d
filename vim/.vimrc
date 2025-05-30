vim9script

# __   _(_)_ __ ___  _ __ ___
# \ \ / / | '_ ` _ \| '__/ __|
#  \ V /| | | | | | | | | (__
#   \_/ |_|_| |_| |_|_|  \___|
#
#
# - ? NrrRgn
# git clone --depth=1 git@github.com:chrisbra/NrrRgn.git
# - ? vim-bbye
# git clone --depth=1 git@github.com:moll/vim-bbye.git
# - colorizer
# git clone --depth=1 git@github.com:lilydwjg/colorizer.git
# - vim-colortemplate
# git clone --depth=1 git@github.com:lifepillar/vim-colortemplate.git

# - ALE
# git clone --depth=1 git@github.com:dense-analysis/ale.git
# - vim-bufftabline
# git clone --depth=1 git@github.com:ap/vim-buftabline.git
# - # vim-commentary
# git clone --depth=1 git@github.com:tpope/vim-commentary.git
# - direnv.vim
# git clone --depth=1 git@github.com:direnv/direnv.vim.git
# - vim-easymotion
# git clone --depth=1 git@github.com:easymotion/vim-easymotion.git
# - vim-eunuch
# git clone --depth=1 git@github.com:tpope/vim-eunuch.git
# - # vim-extended-ft
# git clone --depth=1 git@github.com:svermeulen/vim-extended-ft.git
# - vim-maximizer
# git clone --depth=1 git@github.com:szw/vim-maximizer.git
# - nordtheme/vim -> nord.vim
# git clone --depth=1 git@github.com:nordtheme/vim.git nord.vim
# - vim-obsession
# git clone --depth=1 git@github.com:tpope/vim-obsession.git
# - onehalf
# git clone --depth=1 git@github.com:sonph/onehalf.git
# - vim-scriptease
# git clone --depth=1 git@github.com:tpope/vim-scriptease.git
# - supertab
# git clone --depth=1 git@github.com:ervandew/supertab.git
# - vim-symlink
# git clone --depth=1 git@github.com:aymericbeaumet/vim-symlink.git
# - tabular
# git clone --depth=1 git@github.com:godlygeek/tabular.git
# - vifm.vim
# git clone --depth=1 git@github.com:vifm/vifm.vim.git


set nocompatible
filetype plugin indent on
syntax on

set foldenable
set foldmethod=marker


set noswapfile

set autochdir
set hidden
set number
set relativenumber
set smartindent
set tabstop=2 

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
