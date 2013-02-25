" navigating vim help

" Enter - go to hyperlink
nmap <buffer> <CR> <C-]>
" Backspace - go back
nmap <buffer> <BS> <C-T>
" o - jump to the next option
nmap <buffer> o /''[a-z]\{2,\}''<CR>:nohl<CR>
" O - jump to the previous option
nmap <buffer> O ?''[a-z]\{2,\}''<CR>:nohl<CR>
" s - jump to the next subject
nmap <buffer> s /\|\S\+\|<CR>:nohl<CR>
" S - jump to the previous subject
nmap <buffer> S ?\|\S\+\|<CR>:nohl<CR>
