" trim whitespaces onSave
function! TrimWhitespaces()
 let l:winview = winsaveview()
 silent! %s/\s\+$//e
 call winrestview(l:winview)
endfunction

autocmd BufWritePre * call TrimWhitespaces()
