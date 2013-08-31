let g:syntastic_check_on_open  = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol   = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list  = 2
let g:syntastic_ignore_files   = ['^/usr/include/',
                                \ '^/opt/local/include/',
                                \ '^' . $JAVA_HOME . '/include',
                                \ '^' . $HOME . '/etc/usr/local/include/']

let g:syntastic_stl_format     = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"
" checkers
"
" let g:syntastic_c_checkers     = ['ycm', 'splint']
" let g:syntastic_cpp_checkers   = ['ycm']
let g:syntastic_java_checkers  = ['javac']
let g:syntastic_sh_checkers    = ['sh']
