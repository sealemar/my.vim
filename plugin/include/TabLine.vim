function! ShortTabLine()
    let ret = ''
    for i in range(tabpagenr('$'))
        " select the color group for highlighting active tab
        if i + 1 == tabpagenr()
            let ret .= '%#errorMsg#'
        else
            let ret .= '%#TabLine#'
        endif

        " find the buffername for the tablabel
        let buflist    = tabpagebuflist(i+1)
        let winnr      = tabpagewinnr(i+1)
        let buffername = bufname(buflist[winnr - 1])
        let filename   = fnamemodify(buffername,':t')

        " check if there is no name
        if filename == ''
            let filename = '<noname>'
        endif

        " set modified flag if needed
        let _modified = getbufvar(buflist[winnr - 1], "&mod")
        let tablen = 10
        if _modified
            let tablen -= 1
        endif

        " only show the first 10 letters of the name  and
        " .. if the filename is more than 10 letters long
        let len = strlen(filename)
        if len > tablen
            let filename = filename[0 : tablen -3].'..'
        else
            " center tabname
            for j in range(len, tablen)
                if (j - len) % 2 == 0
                    let filename .= ' '
                else
                    let filename = ' '.filename
                endif
            endfor
        endif

        if _modified
            " select the color group for highlighting active tab
            " hi USER2 is defined in ~/.vim/after/plugin/include/highlights.vim
            if i + 1 == tabpagenr()
                let filename = '%2*'.'*'.'%#errorMsg#'.filename
            else
                let filename = '%2*'.'*'.'%#TabLine#'.filename
            endif
        endif

        let ret .= '['.filename.']'
    endfor

    " after the last tab fill with TabLineFill and reset tab page #
    let ret .= '%#TabLineFill#%T'
    return ret
endfunction

set tabline=%!ShortTabLine()
