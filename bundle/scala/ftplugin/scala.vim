" Scala filetype plugin file
" Language:     scala
" Maintainer:   Sergey Markelov <s.a.markelov@gmail.com>
" Last Change:  04 June 2012 - 13:44:34
" License:      GPL-3.0 (http://www.gnu.org/licenses/gpl-3.0.txt)

" --------------------------------------------------------------
" @section Settings
" --------------------------------------------------------------

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif

" specify what is considered to be a comment
setlocal comments=s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/

setlocal formatoptions-=t formatoptions+=croql

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" @subsection MatchIt
" @description is used when @c matchit plugin is installed
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

let b:undo_ftplugin = 'setlocal comments< commentstring< formatoptions<'

let b:did_ftplugin = 1
