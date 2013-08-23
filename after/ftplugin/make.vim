"
" expand tabs by default
"
setlocal expandtab

"
" if the cursor is on the first pos, insert TAB. Insert spaces otherwise
"
function! s:doTab()
 if col('.') == 1
  setlocal noexpandtab
 endif

 return "\<TAB>"
endfunction

"
" inoremap TAB to the result of doTab() function call
" setlocal expandtab
" continue inserting text after the operation
"
inoremap <buffer> <TAB> <C-R>=<SID>doTab()<CR><Esc>:setlocal expandtab<CR>a
