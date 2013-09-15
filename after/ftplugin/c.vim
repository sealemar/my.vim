setlocal tags+=${HOME}/.cache/vim-specific/tags/c-usr-include

autocmd BufEnter ${HOME}/etc/usr/local/include/*.h setlocal tags+=$HOME/.cache/vim-specific/tags/c-home-include
