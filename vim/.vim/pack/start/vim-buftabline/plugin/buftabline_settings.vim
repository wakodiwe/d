vim9script

#- Setting
g:buftabline_numbers    = 2
g:buftabline_indicators = 1
g:buftabline_separators = 0

#- Mapping
nmap <leader>1 
      \ <Plug>BufTabLine.Go(1)

nmap <leader>2 
      \ <Plug>BufTabLine.Go(2)

nmap <leader>3
      \ <Plug>BufTabLine.Go(3)

nmap <leader>4
      \ <Plug>BufTabLine.Go(4)

nmap <leader>5
      \ <Plug>BufTabLine.Go(5)

nmap <leader>6
      \ <Plug>BufTabLine.Go(6)

nmap <leader>7
      \ <Plug>BufTabLine.Go(7)

nmap <leader>8
      \ <Plug>BufTabLine.Go(8)

nmap <leader>9
      \ <Plug>BufTabLine.Go(9)

nmap <leader>0
      \ <Plug>BufTabLine.Go(10)

nmap <leader>j
      \ :bprevious<CR>

nmap <leader>k
      \ :bnext<CR>

#- Color
# Defined in main config
