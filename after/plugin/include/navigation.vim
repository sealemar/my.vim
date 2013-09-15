" navigating long lines
"
" NOTE:
" -----
" Alt+Up   / Alt+k - navigate one line up
" Alt+Down / Alt+j - navigate one line down
"
" these key bindings might not work in different from rxvt terminals.
" In that case go to insert mode, press <Ctrl+v> and then press the key binding you
" want to use. <Ctrl+v> means treat the next key literally, so it will show
" the key, which further can be used in binding (after <Ctrl+v>)

map <C-Up> gk
map <C-Down> gj
imap <C-Down> <ESC>gji
imap <C-Up> <ESC>gki
map <M-j> gj
map <M-k> gk
imap <M-j> <ESC>gji
imap <M-k> <ESC>gki

" press " in visual mode to quote the selected text
vnoremap " <ESC>`>a"<Esc>`<i"<Esc>

" remap Home to go either to the begining of the text or to original Home
" @param mode 0 - normal, 1 - insert, 2 - visual
function! s:goHome(mode)
    if a:mode == 2
        normal! gv
    endif

    if col('.') == 1
        normal! ^
    else
        normal! 0
    endif
endfunction

inoremap <silent> <Home> <ESC>:call <SID>goHome(1)<CR>i
nnoremap <silent> <Home> :call <SID>goHome(0)<CR>
vnoremap <silent> <Home> :<C-U>call <SID>goHome(2)<CR>

" remap End to go either to the end of the text or to original End
" @param mode 0 - normal, 1 - insert, 2 - visual
function! s:goEnd(mode)
    if a:mode == 2
        normal! gv
    endif

    let l:curPos = col('.')
    let l:endPos = col('$')

    " insert && visual modes
    if a:mode != 0
        if a:mode == 1
            let l:curPos = l:curPos + 1
        endif

        if l:curPos >= l:endPos
            let l:curPos = l:endPos -1
        endif
    endif

    if l:curPos == l:endPos -1
        normal! g_
        if a:mode == 1
            if l:curPos == col('.')
                startinsert!
            else
                startinsert
            endif
        endif
    else
        normal! $
        if a:mode == 1
            startinsert!
        endif
    endif
endfunction

inoremap <silent> <End> <ESC>:call <SID>goEnd(1)<CR>
nnoremap <silent> <End> :call <SID>goEnd(0)<CR>
vnoremap <silent> <End> :<C-U>call <SID>goEnd(2)<CR>

" scroll window up/down without moving the cursor
" Ctrl+Up   / Ctrl+k - scroll up
" Ctrl+Down / Ctrl+j - scroll down
silent nnoremap <C-Up> <C-y>
silent nnoremap <C-Down> <C-e>
silent nnoremap <C-k> <C-y>
silent nnoremap <C-j> <C-e>

" space in normal mode - switch last two buffers
silent nnoremap <Space> <C-^>

" Ctrl+Left / Ctrl+Right - goto the previous / next buffer
map <C-Right> <ESC>:bn<CR>
map <C-Left> <ESC>:bp<CR>

" F1 - open help for the word under cursor
map <F1> <ESC>:exec "help ".expand("<cword>")<CR>

noremap <silent> <Leader>n :nohl<CR>

" @brief implementation of go to definition behavior
" @description
"   try using binary search first. If @c 'ignorecase' option is set, unset it
"   before call and set it back again after the call to facilitate the
"   process and avoid case insensitive search. Refer to @c /ignorecase for
"   more information about how to do case sensitive tag search
function! s:gotoDefinition(word)
    let l:oldIgnoreCase = &ignorecase
    set noignorecase
    exec "tjump ".a:word
    let &ignorecase = l:oldIgnoreCase
endfunction
silent nnoremap <C-]> :call <SID>gotoDefinition(expand("<cword>"))<CR>

" @note use GoDef user command to goto definition of any function provided as
" an argument
command -nargs=1 GoDef :call <SID>gotoDefinition(expand("<args>"))

nmap <M-Tab> gt
nmap <M-S-Tab> gT

" useful for Putty
inoremap `` <Esc>
vnoremap `` <Esc>
nnoremap `` <Esc>
cnoremap `` <Esc>
