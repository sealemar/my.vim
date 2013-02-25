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

nnoremap <silent> <Esc>b   :FufBuffer<CR>
nnoremap <silent> <Esc>f   :FufFile<CR>
nnoremap <silent> <Esc>d   :FufDir<CR>
nnoremap <silent> <Esc>l   :FufLine<CR>
nnoremap <silent> <Esc>h   :FufMruFile<CR>
nnoremap <silent> <Esc>c   :FufChangeList<CR>
nnoremap <silent> <Esc>q   :FufQuickfix<CR>
nnoremap <silent> <Esc>t   :FufTagWithCursorWord!<CR>
nnoremap <silent> <Esc>k   :FufBookmark<CR>
nnoremap <silent> <F2>     :exec ':FufAddBookmark ' . expand("<cword>") <CR>
vnoremap <silent> <F2>     :FufAddBookmarkAsSelectedText<CR>
nnoremap <silent> <C-h>    :FufMruCmd<CR>
"nnoremap <silent> <C-j>     :FufJumpList<CR>
