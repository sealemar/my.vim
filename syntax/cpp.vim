syn match cppNamespace          /\<[a-zA-Z_][a-zA-Z0-9_]*::/he=e-2,re=e-2 display contains=cCodingSpecialChar

" Default highlighting
if version >= 508 || !exists("did_cpp_syntax_inits")
  if version < 508
    let did_cpp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cppNamespace           Namespace

  delcommand HiLink
endif
