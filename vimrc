" Sergey Markelov's vimrc 2011
"
" look into ~/.vim/plugin/include/*.vim
" for loadable scripts transferred from here to split the logic and make this
" .vimrc clean & clear
"
" also refer to ~/.vim/after/plugin/include to see which scripts loads after
" everything



colorscheme Dim

set nocompatible

" enable 256 colors in vim (usefull with GNU screen)
set t_Co=256

" tabs & indent
set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set shiftround

set backspace=indent,eol,start
set guioptions=aegitlr

" go to the end of the previous line in normal/visual/insert modes when
" standing on the first char of the next line and going to the left.
" Go to the first char of the next line using the same logic
set whichwrap+=<,>,h,l,[,]

" diff
set diffopt=vertical,filler

set novisualbell
set noerrorbells
"
" set timeoutlen=50

" hide buffer when it is abandonded
" (don't display annoying message that the buffer is modified when opening a
" new buffer)
set hidden

" set listchars
"set list listchars=tab:>-,trail:~,eol:$

" backspace
set bs=2

" word wrap
set wrap
set tw=0
" don't let the global settings override my wrapping
let g:leave_my_textwidth_alone=1

" do folding for XML
let g:xml_syntax_folding = 1

" turn off annoying c.vim Ctrl+j behavior
let g:C_Ctrl_j='off'

" don't map @ in yankring
let g:yr_dont_maps_expression=1

" turn on c_curly_error
" let g:c_curly_error = 1

" @returns current character under cursor or " " if current character is empty
function! GetCurrentCharacterOrSpace()
    let l:ch = getline(".")[col(".") - 1]
    if strlen(l:ch) == 0
        return " "
    elseif l:ch == "\t"
        return " "
    endif
    return l:ch
endfunction

set number
set ruler
set laststatus=2
" 'hi USER1' is defined in ~/.vim/after/plugin/include/highlights.vim
set statusline=%<\ %n\ %F%1*%m%r%h%w%*%=[FORMAT=%{&ff}]\ type=%y\ [ASCII=%{GetCurrentCharacterOrSpace()},%03b,%02Bh]\ [POS=%03c,%05l/%05L\ %3p%%]
set showcmd

" 'hi CursorLine && hi CursorColumn' are defined in ~/.vim/after/plugin/include/highlights.vim
set cursorline
"set cursorcolumn

set incsearch

" ignore case when performing a search
set ignorecase
" do smart case search, meaning if search string contains upper case, the
" search will be case sensitive and case insensitive otherwise (is used only
" if ignorecase is on)
set smartcase

set showmatch
"set foldmethod=syntax
"set fen
syntax on
set hlsearch
" synchronize syntax from the start of the document to avoid incorrect
" highlighting
syn sync fromstart


" suggest only top 5 words when do spelling check
set spellsuggest=5

filetype plugin indent on

autocmd FileType c,cpp,slang set cindent

" View non text files
"au BufReadPost *.pdf silent %!pdftotext -nopgbrk "%" - |fmt -csw78
au BufReadPost *.doc silent %!antiword "%"
au BufReadPost *.odt silent %!odt2txt "%"

" navigation keybindings are set in ~/.vim/after/plugin/include/navigation.vim

"
" tags is set on per filetype basis in after/ftplugin/*
"

set path=/usr/include
set path+=${JAVA_HOME}/include
set path+=${HOME}/etc/usr/local/include
set path+=/opt/local/include

" map leaders
let mapleader = ","
let maplocalleader = "<"

" run pathogen
" plugins now can be installed (extracted) to ~/.vim/bundle
call pathogen#infect()
