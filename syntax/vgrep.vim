set number

" grep for the word under cursor and open a new window with a filter of the text by this word
nmap <C-f> :lvimgrep <cword> %<CR>:lopen<CR>z60<CR>

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
 finish
endif

highlight SourceName ctermfg=blue guifg=blue
highlight LineNumber ctermfg=darkgreen guifg=darkgreen
highlight GrepExpression ctermfg=red guifg=red

autocmd Syntax * syn region SourceName start=/^./ms=s,rs=s end=/:/he=s-1,re=s-1,me=s-1
autocmd Syntax * syn region LineNumber start=/:\d\+/ms=s,rs=e+1 end=/:/he=s-1,re=s-1,me=s-1
autocmd Syntax * syn match ThreadId /\d\{4,}\/\d\{10}/ containedin=DBUG,INFO,WARN,CRIT

let b:current_syntax = "vgrep"
