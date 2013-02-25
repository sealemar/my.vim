" NERDTree plugin

" global NERDTree settings
let g:NERDChristmasTree           = 0
let g:NERDTreeChDirMode           = 2
let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeQuitOnOpen          = 0
let g:NERDTreeShowHidden          = 1
let g:NERDTreeDirArrows           = 0
let g:NERDTreeIgnore              = [ '^\(\..\+\)\?\.swp$', '\~$' ]

" @brief does NERDTreeFind apart from NERDTreeToggle
"
function! s:nERDTreeToggle()
    " define the variable if it doesn't exist
    if !exists("t:isNERDTreeOpen")
        let t:isNERDTreeOpen = 0
    endif

    if t:isNERDTreeOpen == 0
        try
            NERDTreeFind
        catch
            NERDTreeToggle
        endtry
        let t:isNERDTreeOpen = 1
    else
        NERDTreeClose
        let t:isNERDTreeOpen = 0
    endif
endfunction

nnoremap <F11> :call <SID>nERDTreeToggle()<CR>
