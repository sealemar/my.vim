"
" Restore default colors
hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Dim"

hi Normal guibg=black guifg=grey75 ctermfg=grey
hi Cursor guibg=grey75 ctermfg=grey
hi NonText guibg=grey10 guifg=yellow4
hi Ignore ctermfg=darkgrey guifg=darkgrey
hi Error ctermfg=196 ctermbg=52 cterm=reverse

highlight USER1         term=bold,reverse ctermfg=white ctermbg=darkgreen guifg=white guibg=darkgreen
highlight USER2         term=bold,reverse cterm=bold,reverse gui=bold

highlight CursorLine    cterm=NONE ctermbg=233 guibg=#082831
highlight CursorColumn  cterm=NONE ctermbg=233 guibg=#082831

" Diff
hi DiffAdd term=bold ctermbg=17
hi DiffText term=reverse ctermbg=52

" popum menu highlighting
highlight Pmenu ctermfg=black ctermbg=23 guifg=black guibg=#005f5f gui=bold
highlight PmenuSel ctermfg=yellow ctermbg=darkgray guifg=yellow guibg=darkgray gui=bold

" status line
highlight StatusLine term=reverse cterm=reverse
highlight StatusLineNC term=bold,reverse cterm=bold,reverse

hi Statement guifg=#9B8E76 gui=bold cterm=bold ctermfg=100

" Red
hi Constant guifg=PaleVioletRed3 ctermfg=204

" Green
"hi Identifier guifg=#00BB00
"hi Identifier guifg=#55BB55
"hi Identifier guifg=#55AA55
hi Identifier guifg=#8787ff ctermfg=105

" Yellow
hi Special guifg=khaki3 ctermfg=214

" Comment
hi Comment guifg=#767676 ctermfg=239
hi SpecialComment guifg=#af5fff ctermfg=135
hi CommentType guifg=#87afdf ctermfg=110
hi CommentUnderlined gui=underline guifg=#767676 ctermfg=243 cterm=underline

" Purple
hi PreProc guifg=plum3 ctermfg=219

" Cyan
hi Character guifg=CadetBlue3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The default was cyan, which is too bright, but this takes away any
" distinction...
hi SpecialKey guifg=CadetBlue3
hi Directory guifg=SkyBlue3
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi CodingSpecialChar ctermfg=29 guifg=#00875f

" Orange
hi Type ctermfg=153 ctermbg=none guifg=#afdfff gui=none
hi Namespace ctermfg=119 ctermbg=none guifg=#87ff5f gui=none

hi Operator ctermfg=202 ctermbg=none guifg=#ff5f00 gui=none

hi link Function PreProc

"
" Colors not part of the original set:
"
"hi Folded guifg=cyan4 guibg=grey20
"hi Folded guifg=grey90 guibg=grey45
hi Folded guifg=black guibg=grey55

hi Visual gui=reverse guibg=fg guifg=darkolivegreen cterm=reverse ctermbg=0 ctermfg=NONE

"hi Search guifg=black guibg=LightSkyBlue3 gui=none
hi Search guifg=black guibg=LightSkyBlue4 gui=none

hi IncSearch guifg=yellow guibg=LightSkyBlue3 gui=bold
hi WarningMsg guifg=red guibg=GhostWhite gui=bold
hi Error guibg=red3

hi Todo guifg=#afaf00 ctermfg=142 ctermbg=none
hi Question guifg=green3

hi LineNr cterm=NONE ctermbg=234 ctermfg=yellow guifg=yellow guibg=#1c1c1c
