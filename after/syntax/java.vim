" @author Sergey Markelov
" @date   23 August 2013 - 00:45:20

syn region  javaComment		 start="/\*"  end="\*/" contains=@javaCommentSpecial,javaTodo,@Spell,@Doxygen
syn match   javaLineComment	 "//.*" contains=@javaCommentSpecial2,javaTodo,@Spell,@Doxygen
