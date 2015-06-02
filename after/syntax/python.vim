" @author Sergey Markelov
" @date   28 April 2013 - 21:00:02
"
syn match   pythonComment	"#.*$" contains=pythonTodo,@Spell,@Doxygen

syn match pythonStringSpecifier /%\([srdx]\|-\?\([0-9]\+\)\?\(\.\?[0-9]\+\)\?f\)/ display contained

syn region  pythonString
      \ start=+[uU]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
      \ contains=pythonEscape,pythonStringSpecifier,@Spell
syn region  pythonString
      \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend
      \ contains=pythonEscape,pythonSpaceError,pythonDoctest,pythonStringSpecifier,@Spell

hi def link pythonStringSpecifier SpecialChar
