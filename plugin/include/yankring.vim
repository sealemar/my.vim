" YankRing plugin

function s:initCache()
    silent !mkdir -p ${HOME}/.cache/vim-specific/yankring
endfunction

let g:yankring_window_use_bottom = 0
let g:yankring_window_height     = 20
let g:yankring_history_dir       = $HOME.'/.cache/vim-specific/yankring'

autocmd VimEnter * call <SID>initCache()
