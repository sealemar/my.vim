" FuzzyFinder plugin
let g:fuf_dataDir         = $HOME.'/.cache/vim-specific/fuf'
let g:fuf_modesDisable    = [ 'mrucmd', ]
" let g:fuf_abbrevMap       = {
"     \ '^fx'      : [$PUMA_SVN_DIR, ],
"     \ '^common'  : [$PUMA_SVN_DIR.'/common', ],
"     \ '^exe'     : [$PUMA_SVN_DIR.'/cpp/src/exes', $PUMA_SVN_DIR.'/common/cpp/src/exes', ],
"     \ '^lib'     : [$PUMA_SVN_DIR.'/cpp/src/libs', ],
"     \ '^idl'     : [$PUMA_SVN_DIR.'/idldefinition/idl', ],
"     \ '^gen'     : [$PUMA_BUILD_DIR.'/cpp/src/libs-gen/idl', ],
"     \ }
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
let g:fuf_keyNextPattern   = '[C'
let g:fuf_keyPrevPattern   = '[D'

nnoremap <silent> ∫ :FufBuffer<CR>
nnoremap <silent> ƒ :FufFile<CR>
nnoremap <silent> ∂ :FufDir<CR>
nnoremap <silent> ¬ :FufLine<CR>
nnoremap <silent> ˙ :FufMruFile<CR>
nnoremap <silent> ç :FufChangeList<CR>
nnoremap <silent> œ :FufQuickfix<CR>
nnoremap <silent> † :FufTagWithCursorWord!<CR>
nnoremap <silent> ˚ :FufBookmark<CR>
nnoremap <silent> ˆ :FufJumpList<CR>
nnoremap <silent> <F2>     :exec ':FufAddBookmark ' . expand("<cword>") <CR>
vnoremap <silent> <F2>     :FufAddBookmarkAsSelectedText<CR>
