" make
if filereadable("Makefile")
 set makeprg=make
 map <F5> :make<CR>:cw<CR>
else
 map <F5> :make %:r<CR>:cw<CR>
endif
