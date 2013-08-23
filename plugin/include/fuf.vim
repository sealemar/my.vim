" FuzzyFinder plugin
let g:fuf_dataDir         = $HOME.'/.cache/vim-specific/fuf'
let g:fuf_modesDisable    = [ 'mrucmd', ]
let g:fuf_abbrevMap       = {
    \ '^fx'      : [$PUMA_SVN_DIR, ],
    \ '^common'  : [$PUMA_SVN_DIR.'/common', ],
    \ '^exe'     : [$PUMA_SVN_DIR.'/cpp/src/exes', $PUMA_SVN_DIR.'/common/cpp/src/exes', ],
    \ '^lib'     : [$PUMA_SVN_DIR.'/cpp/src/libs', ],
    \ '^idl'     : [$PUMA_SVN_DIR.'/idldefinition/idl', ],
    \ '^gen'     : [$PUMA_BUILD_DIR.'/cpp/src/libs-gen/idl', ],
    \ }
let g:fuf_mrufile_exclude  = '\v\~$|\.(o|exe|dll|bak|orig|sw[po])$|^(\/\/|\\\\|\/mnt\/|\/media\/)'
let g:fuf_file_exclude     = '\v\~$|\.(o|exe|dll|bak|orig|swp)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
let g:fuf_mrufile_maxItem  = 500
let g:fuf_maxMenuWidth     = 153
let g:fuf_enumeratingLimit = 250
let g:fuf_ignoreCase       = 1
let g:fuf_timeFormat       = '  %H:%M  %d.%m.%Y'
let g:fuf_previewHeight    = 0
let g:fuf_keyOpenSplit     = ''
let g:fuf_keyOpenVsplit    = ''
let g:fuf_keyOpenTabpage   = ''
let g:fuf_keyNextPattern   = '<Esc>[B'
let g:fuf_keyPrevPattern   = '<Esc>[A'

nnoremap <silent> <M-b>    :FufBuffer<CR>
nnoremap <silent> <M-f>    :FufFile<CR>
nnoremap <silent> <M-d>    :FufDir<CR>
nnoremap <silent> <M-l>    :FufLine<CR>
nnoremap <silent> <M-h>    :FufMruFile<CR>
nnoremap <silent> <M-c>    :FufChangeList<CR>
nnoremap <silent> <M-q>    :FufQuickfix<CR>
nnoremap <silent> <M-t>    :FufTagWithCursorWord!<CR>
nnoremap <silent> <M-k>    :FufBookmark<CR>
nnoremap <silent> <M-i>    :FufJumpList<CR>
nnoremap <silent> <F2>     :exec ':FufAddBookmark ' . expand("<cword>") <CR>
vnoremap <silent> <F2>     :FufAddBookmarkAsSelectedText<CR>
