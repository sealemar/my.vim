" OmniCppComplete
let OmniCpp_NamespaceSearch     = 1
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_ShowAccess          = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot      = 0 " don't autocomplete after .
let OmniCpp_MayCompleteArrow    = 0 " don't autocomplete after ->
let OmniCpp_MayCompleteScope    = 0 " don't autocomplete after ::
let OmniCpp_DefaultNamespaces   = ["std", "_GLIBCXX_STD"]
let OmniCpp_SelectFirstItem     = 0 " don't select the first item

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

" do complition by pressing Control+Space
inoremap <Nul> <C-X><C-O>
