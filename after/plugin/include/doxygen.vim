" @description
"   Provides doxygen highlighting support for any filetype. Defaults to add
"   doxygen support only to @c Comment syntax group, but can be easily extended
"   to be used in any comment group by adding @c @Doxygen
"   to a @c CommentGroup cluster which is provided by
"   many filetypes in Vim.
"
"   @paragraph Example
"     For example, to add doxygen highlighting support to c/c++ files in Vim,
"     add the following code to ~/.vim/after/syntax/c.vim
"     @code
"       syn cluster cCommentGroup add=DoxygenKeywords,DoxygenKeywordComplex,@DoxygenError,@DoxygenMutliline
"     @endcode
"
"   @paragraph SyntaxHighlighting
"     You will also probably need to add some groups to highlight in your
"     favorite ~/.vim/colors/MYCOLORSCHEME.vim
"     @code
"       hi SpecialComment guifg=#af5fff ctermfg=135
"       hi CommentType guifg=#87afdf ctermfg=110
"       hi CommentUnderlined gui=underline guifg=7 cterm=underline ctermfg=7
"     @endcode
"
" @author       Sergey Markelov
" @date         29 February 2012 - 16:55:44

autocmd Syntax * syn cluster Doxygen contains=DoxygenKeywords,DoxygenKeywordEmphasize,@DoxygenKeywordComplex,@DoxygenMultiline,@DoxygenError

" @section DoxygenKeywords
"
autocmd Syntax * syn match DoxygenKeywords                  /[^a-zA-Z0-9][\\@]\(addindex\|arg\|author\|authors\|attention\|brief\|bug\|callgraph\|callergraph\|copyright\|date\|deprecated\|description\|details\|invariant\|li\|nosubgrouping\|note\|post\|pre\|private\|privatesection\|protected\|protectedsection\|public\|publicsection\|remark\|remarks\|result\|return\|returns\|sa\|short\|showinitializer\|since\|test\|todo\|version\|warning\)\>/hs=s+1,rs=s+1 contained display

" @section DoxygeComplex
"
" @description
"   treat complex keywords separately, because we need to highlight the next word after
"   that keyword
"

autocmd Syntax * syn cluster DoxygenKeywordComplex          contains=DoxygenKeywordComplexLine,DoxygenKeywordComplexNextWord,DoxygenKeywordComplexNonSpace,DoxygenKeywordComplexObjectName

autocmd Syntax * syn region DoxygenKeywordComplexLine       matchgroup=DoxygenKeywordComplex start=/\s[\\@]\(fn\|mainpage\|name\|overload\|par\|typedef\|variable\)\>/ matchgroup=DoxygenKeywordComplexArgument excludenl end=/.*$/ contained display transparent oneline
autocmd Syntax * syn region DoxygenKeywordComplexNextWord   matchgroup=DoxygenKeywordComplex start=/\s[\\@]\(anchor\|addtogroup\|cite\|defgroup\|hideinitializer\|ingroup\|page\|paragraph\|ref\|section\|snippet\|subpage\|subsection\|subsubsection\|weakgroup\)\>/ matchgroup=NONE end=/\S/ matchgroup=DoxygenKeywordComplexArgument end=/[a-zA-Z\-0-9_\-]\+/ excludenl end=/$/ contained display transparent oneline
autocmd Syntax * syn region DoxygenKeywordComplexNonSpace   matchgroup=DoxygenKeywordComplex start=/\s[\\@]\(dir\|dontinclude\|example\|file\|headerfile\|htmlinclude\|include\|includelineno\|line\|see\|skip\|skipline\|until\|verbinclude\)\>/ matchgroup=DoxygenKeywordComplexArgument end=/\S\+/ excludenl end=/$/ contained display transparent oneline
autocmd Syntax * syn region DoxygenKeywordComplexObjectName matchgroup=DoxygenKeywordComplex start=/\s[\\@]\(class\|def\|exception\|extends\|enum\|implements\|interface\|memberof\|namespace\|param\|property\|relate[ds]\|relate[ds]also\|retval\|struct\|throw\|throws\|tparam\|union\)\>/ matchgroup=NONE end=/\S/ matchgroup=DoxygenKeywordComplexArgument end=/\h\w*/ excludenl end=/$/ contained display transparent oneline

" @section DoxygenEmphasize
"
autocmd Syntax * syn match DoxygenKeywordEmphasize          /[^0-9A-Za-z_\\@][\\@][abce]\s\+\S\+/rs=s+1,hs=s+1,he=s+3 contains=DoxygenKeywordEmphasizeArgument contained display
autocmd Syntax * syn match DoxygenKeywordEmphasizeArgument  /[^0-9A-Za-z_\\@][\\@][abce]\s\+\S\+/ms=s+4 contained display
autocmd Syntax * syn match DoxygenKeywordEmphasize          /[^0-9A-Za-z_\\@][\\@]em\s\+\S\+/rs=s+1,hs=s+1,he=s+4 contains=DoxygenKeywordEmphasizeArgument contained display
autocmd Syntax * syn match DoxygenKeywordEmphasizeArgument  /[^0-9A-Za-z_\\@][\\@]em\s\+\S\+/ms=s+5 contained display


" @section MutlineDoxygen
" @description
"   describes multiline part of doxygen
"
autocmd Syntax * syn cluster DoxygenMultiline contains=DoxygenCode,DoxygenInternal
autocmd Syntax * syn cluster DoxygenError     contains=DoxygenCodeError

autocmd Syntax * syn match DoxygenCodeError                 /@endlcode/ contained
autocmd Syntax * syn region DoxygenCode                     matchgroup=DoxygenKeywords start=/@code/ end=/@endcode/ contains=DoxygenCodeError contained transparent fold
autocmd Syntax * syn match DoxygenCondError                 /@endcond/ contained
autocmd Syntax * syn region DoxygenCond                     matchgroup=DoxygenKeywords start=/@cond/ end=/@endcond/ contains=DoxygenCondError,@Spell contained transparent fold
autocmd Syntax * syn match DoxygenInternalError             /@endinternal/ contained
autocmd Syntax * syn region DoxygenInternal                 matchgroup=DoxygenKeywords start=/@internal/ end=/@endinternal/ contains=DoxygenInternalError,@Spell contained transparent fold
autocmd Syntax * syn match DoxygenMemberGroup1Error         /\/\/@}/ contained
autocmd Syntax * syn region DoxygenMemberGroup              matchgroup=DoxygenKeywords start=/\/\/@{/ end=/\/\/@}/ contains=DoxygenMemberGroup1Error,@Spell contained transparent fold
autocmd Syntax * syn match DoxygenMemberGroup2Error         /\/\*\*@}\*\// contained
autocmd Syntax * syn region DoxygenMemberGroup              matchgroup=DoxygenKeywords start=/\/\*\*@{\*\// end=/\/\*\*@}\*\// contains=DoxygenMemberGroup2Error,@Spell contained transparent fold

" highlight links
hi link DoxygenKeywords                  SpecialComment
hi link DoxygenKeywordComplex            DoxygenKeywords
hi link DoxygenKeywordComplexArgument    CommentType
hi link DoxygenKeywordEmphasize          DoxygenKeywords
hi link DoxygenKeywordEmphasizeArgument  CommentUnderlined
hi link DoxygenCodeError                 DoxygenError
hi link DoxygenCondError                 DoxygenError
hi link DoxygenInternalError             DoxygenError
hi link DoxygenMemberGroup1Error         DoxygenError
hi link DoxygenMemberGroup2Error         DoxygenError
hi link DoxygenError                     Error
