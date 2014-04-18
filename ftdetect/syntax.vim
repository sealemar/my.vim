" vim syntax autoload
" @author Sergey Markelov

autocmd BufRead,BufNewFile *.gdb        set filetype=gdb
autocmd BufRead,BufNewFile *.vm         set filetype=vm
autocmd BufRead,BufNewFile scons.node   set filetype=python
autocmd BufRead,BufNewFile scons.main   set filetype=python
autocmd BufRead,BufNewFile *.conf       set filetype=conf
autocmd BufRead,BufNewFile *.{ino,pde}  set filetype=arduino
