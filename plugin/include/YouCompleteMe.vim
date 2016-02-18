" let g:ycm_path_to_python_interpreter = `which python`
let g:ycm_path_to_python_interpreter = substitute( system('which python2'), "\n", "", "" )

" YouCompleteMe completes Python through JediHTTP
" See https://github.com/Valloric/YouCompleteMe#python-semantic-completion
let g:ycm_python_binary_path = substitute( system('which python3'), "\n", "", "" )

let g:ycm_min_num_of_chars_for_completion     = 3
let g:ycm_register_as_syntastic_checker       = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax        = 1
let g:ycm_add_preview_to_completeopt          = 1
let g:ycm_max_diagnostics_to_display          = 30
let g:ycm_confirm_extra_conf                  = 1

let g:EclimCompletionMethod = 'omnifunc'

"let g:ycm_cache_omnifunc = 0

let g:ycm_key_list_select_completion          = ['<TAB>', '<Down>']
let g:ycm_key_list_previous_completion        = ['<S-TAB>', '<Up>']
let g:ycm_key_invoke_completion               = '<C-Space>'
let g:ycm_key_detailed_diagnostics            = '<leader>d'

set completeopt=menu,menuone,preview

nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
