" comment / uncomment visually selected lines
" ,c comments out a region
" ,u uncomments a region
" default comment leader is '# '
au BufReadPre,BufNewFile * let b:comment_leader = '# '
au FileType haskell,vhdl,ada,sql let b:comment_leader = '-- '
au FileType vim let b:comment_leader = '" '
au FileType c,cpp,arduino,java,javascript,less let b:comment_leader = '// '
au FileType sh,make,perl,python let b:comment_leader = '# '
au FileType tex let b:comment_leader = '% '
au FileType clojure let b:comment_leader = '; '

noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>
