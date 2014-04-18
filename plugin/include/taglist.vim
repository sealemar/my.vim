" taglist

" if &ft != "c" && &ft != "cpp"
"     finish
" endif

nmap <silent> <F12> :TlistToggle<CR>
imap <silent> <F12> <Esc>:TlistToggle<CR>
let Tlist_WinWidth=40
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_GainFocus_On_ToggleOpen=1

" configure tags - Add additional tags here or comment out not-used ones
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=./local.tags
" build tags of your own project with Ctrl-F12
"map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
