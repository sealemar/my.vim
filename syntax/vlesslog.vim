" vlesslog by Sergey Markelov 2011

""""""""""""""""""""""""""""""""""""""""
" main

source ~/.vim/syntax/vless.vim

" grep for the word under cursor and open a new window with a filter of the text by this word
nmap <C-f> :lvimgrep <cword> %<CR>:lopen<CR>z60<CR>

nmap t <Esc>$?\<\d\{4,}\/\d\{10}\>?b-1<cr>/\<<c-r>=expand("<cword>")<cr>\><cr>
nmap T <Esc>$?\<\d\{4,}\/\d\{10}\>?b-1<cr>?\<<c-r>=expand("<cword>")<cr>\><cr>

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
 finish
endif

" define keywords
syn keyword Ccy        contained containedin=MessageContext AED ARS AUD BHD BRL CAD CHF CLP CNH CNY COP CZK DKK DXY EGP EUR GBP HKD HUF IDR ILS INR ISK JPY KRW KWD LBP LTL LVL MXN MYR NOK NZD OMR PEN PHP PKR PLN RON RUB RUR SAR SEK SGD SKK THB TRY TWD USD VEB VND ZAR

syn keyword CcyPair    contained containedin=MessageContext AUDBRL AUDCAD AUDCHF AUDCNY AUDCZK AUDDKK AUDHKD AUDHUF AUDILS AUDJPY AUDKRW AUDMXN AUDNOK AUDNZD AUDPLN AUDRON AUDSAR AUDSEK AUDSGD AUDSKK AUDTHB AUDTRY AUDTWD AUDUSD AUDZAR BRLCZK BRLDKK BRLHKD BRLHUF BRLJPY BRLKRW BRLMXN BRLNOK BRLPLN BRLSAR BRLSEK BRLSGD BRLTHB BRLTRY BRLTWD BRLZAR CADBRL CADCHF CADCZK CADDKK CADHKD CADHUF CADILS CADJPY CADKRW CADMXN CADNOK CADPHP CADPLN CADRON CADSAR CADSEK CADSGD CADSKK CADTHB CADTRY CADTWD CADZAR CHFBRL CHFCZK CHFDKK CHFHKD CHFHUF CHFILS CHFJPY CHFKRW CHFMXN CHFNOK CHFPLN CHFRON CHFRUB CHFRUR CHFSAR CHFSEK CHFSGD CHFSKK CHFTHB CHFTRY CHFTWD CHFZAR CZKHUF CZKJPY CZKKRW CZKSAR CZKSKK CZKTHB CZKTWD DKKCZK DKKHKD DKKHUF DKKILS DKKJPY DKKKRW DKKMXN DKKNOK DKKPLN DKKRON DKKSAR DKKSEK DKKSKK DKKTHB DKKTRY DKKTWD DKKZAR EURAED EURARS EURAUD EURBHD EURBRL EURCAD EURCHF EURCLP EURCNY EURCOP EURCZK EURDKK EURDXY EUREGP EURGBP EURHKD EURHUF EURIDR EURILS EURINR EURISK EURJPY EURKRW EURKWD EURLBP EURLTL EURLVL EURMXN EURMYR EURNOK EURNZD EUROMR EURPEN EURPHP EURPKR EURPLN EURRON EURRUB EURRUR EURSAR EURSEK EURSGD EURSKK EURTHB EURTRY EURTWD EURUSD EURVEB EURVND EURZAR GBPAUD GBPBRL GBPCAD GBPCHF GBPCNY GBPCZK GBPDKK GBPHKD GBPHUF GBPILS GBPINR GBPISK GBPJPY GBPKRW GBPMXN GBPNOK GBPNZD GBPPLN GBPRON GBPSAR GBPSEK GBPSGD GBPSKK GBPTHB GBPTRY GBPTWD GBPUSD GBPZAR HKDCZK HKDHUF HKDILS HKDJPY HKDKRW HKDMXN HKDNOK HKDPLN HKDRON HKDSAR HKDSEK HKDSKK HKDTHB HKDTRY HKDTWD HKDZAR HUFSAR ILSCZK ILSHUF ILSJPY ILSMXN ILSSKK ILSTHB JPYHUF JPYKRW JPYSAR KRWHUF KRWSAR MXNCZK MXNHUF MXNJPY MXNKRW MXNSAR MXNSKK MXNTHB MXNTWD MYRTHB NOKCZK NOKHUF NOKILS NOKJPY NOKKRW NOKMXN NOKPLN NOKRON NOKSAR NOKSEK NOKSKK NOKTHB NOKTRY NOKTWD NOKZAR NZDBRL NZDCAD NZDCHF NZDCZK NZDDKK NZDHKD NZDHUF NZDILS NZDJPY NZDKRW NZDMXN NZDNOK NZDPLN NZDRON NZDSAR NZDSEK NZDSGD NZDSKK NZDTHB NZDTRY NZDTWD NZDUSD NZDZAR PHPTWD PLNCZK PLNHUF PLNJPY PLNKRW PLNMXN PLNSAR PLNSKK PLNTHB PLNTWD PLNZAR RONCZK RONHUF RONILS RONISK RONJPY RONMXN RONPLN RONSKK RONTHB RONZAR SEKCZK SEKHUF SEKILS SEKJPY SEKKRW SEKMXN SEKPLN SEKSAR SEKSKK SEKTHB SEKTWD SEKZAR SGDCZK SGDDKK SGDHKD SGDHUF SGDILS SGDJPY SGDKRW SGDMXN SGDMYR SGDNOK SGDPLN SGDRON SGDSAR SGDSEK SGDSKK SGDTHB SGDTRY SGDTWD SGDVND SGDZAR SKKHUF SKKJPY SKKTHB THBHUF THBJPY THBKRW THBSAR THBTWD TRYBRL TRYCZK TRYDKK TRYHKD TRYHUF TRYILS TRYJPY TRYMXN TRYNOK TRYPLN TRYRON TRYSEK TRYSKK TRYTHB TRYZAR TWDHUF TWDIDR TWDJPY TWDKRW TWDPHP TWDSAR USDAED USDARS USDBHD USDBRL USDCAD USDCHF USDCLP USDCNY USDCOP USDCZK USDDKK USDDXY USDEGP USDHKD USDHUF USDIDR USDILS USDINR USDISK USDJPY USDKRW USDKWD USDLBP USDLTL USDLVL USDMXN USDMYR USDNOK USDOMR USDPEN USDPHP USDPKR USDPLN USDRON USDRUB USDRUR USDSAR USDSEK USDSGD USDSKK USDTHB USDTRY USDTWD USDVEB USDVND USDZAR ZARCZK ZARHUF ZARJPY ZARKRW ZARMXN ZARSAR ZARSKK ZARTHB ZARTWD  USDCNH

syn keyword CcyRegion  contained containedin=MessageContext,CcyPlusTenorContext ANY #NAN TKY LON NYK

syn keyword Tenor      contained containedin=MessageContext ALL 10M 11M 15M 18M 1M 1W 1Y 21M 2M 2W 2Y 3M 3W 4M 5M 6M 7M 8M 9M TN SN ON SP 5Y 3Y TDY TOM 4Y 13M 14M 30M 7Y 10Y

" some tunings
set number
set noincsearch
set smartcase
syn sync fromstart
syn sync maxlines=50
set iskeyword-=_

" define highlightings
highlight DBUG      ctermfg=grey        guifg=grey
highlight META      ctermfg=103         guifg=#8787af
highlight INFO      ctermfg=darkcyan    guifg=darkcyan
highlight WARN      ctermfg=yellow      guifg=yellow
highlight CRIT      ctermfg=red         guifg=red
highlight FuncName  ctermfg=blue        guifg=blue
highlight ThreadId  ctermfg=darkgreen   guifg=darkgreen
highlight CcyRegion ctermfg=49          guifg=#00ffaf
highlight Ccy       ctermfg=166         guifg=#d75f00
highlight Tenor     ctermfg=magenta     guifg=magenta
highlight LineNum   ctermfg=178         guifg=#d7af00
highlight Timestamp ctermfg=136         guifg=#af8700
highlight link      CcyPair             Ccy
highlight link      CcyPlusTenor        Ccy
highlight link      BrokenDate          Tenor
highlight link      BrokenDate1         BrokenDate
highlight link      BrokenDate2         BrokenDate
highlight link      BrokenDate3         BrokenDate
highlight link      BrokenDate4         BrokenDate
highlight link      TenorInCcyPlusTenor BrokenDate
highlight link      SourceFile          LineNum

" contexts
autocmd Syntax * syn match MessageContext /\(}}\)\?.\+$/ transparent contained containedin=@LOG display contains=@MESSAGE
autocmd Syntax * syn match ParamContext /^.\+}}/ transparent contained containedin=@LOG display contains=@PARAM

" match region
autocmd Syntax * syn region INFO start=/^.\{-}INFO/ms=s,rs=e+1 end=/^.*\[\d\{4}\-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2}\.\d\{-}\]/he=s-1,re=s-1,me=s-1 contains=@LOG_LINE
autocmd Syntax * syn region DBUG start=/^.\{-}DBUG/ms=s,rs=e+1 end=/^.*\[\d\{4}\-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2}\.\d\{-}\]/he=s-1,re=s-1,me=s-1 contains=@LOG_LINE
autocmd Syntax * syn region META start=/^.\{-}META/ms=s,rs=e+1 end=/^.*\[\d\{4}\-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2}\.\d\{-}\]/he=s-1,re=s-1,me=s-1 contains=@LOG_LINE
autocmd Syntax * syn region WARN start=/^.\{-}WARN/ms=s,rs=e+1 end=/^.*\[\d\{4}\-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2}\.\d\{-}\]/he=s-1,re=s-1,me=s-1 contains=@LOG_LINE
autocmd Syntax * syn region CRIT start=/^.\{-}CRIT/ms=s,rs=e+1 end=/^.*\[\d\{4}\-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2}\.\d\{-}\]/he=s-1,re=s-1,me=s-1 contains=@LOG_LINE

" Params
autocmd Syntax * syn match Timestamp /^\[20\d\{2}\-\d\{2}\-\d\{2} \d\{2}:\d\{2}:\d\{2}\.\d\{-}]/hs=s+1,he=e-1 contained containedin=ParamContext display
autocmd Syntax * syn match FuncName /{{.\{-}}}/hs=s+2,he=e-2 contained containedin=ParamContext display
autocmd Syntax * syn match ThreadId / \d\{4,}\/\d\{10} /hs=s+1,he=e-1 contained containedin=ParamContext display
autocmd Syntax * syn match LineNum /(line \d\{-})/hs=s+1,he=e-1 contained containedin=ParamContext display
autocmd Syntax * syn match SourceFile / [a-zA-Z\d\-_]\{-}\.[hc]pp /hs=s+1,he=e-1 contained containedin=ParamContext display nextgroup=LineNum skipwhite

" Messages
autocmd Syntax * syn match BrokenDate /\D20\d\{6}\(\D\|\n\)/hs=s+1,he=e-1,ms=s,rs=s+1,me=e-1,re=e-1 contained containedin=MessageContext display
autocmd Syntax * syn match BrokenDate1 /\D20\d\{2}\-\d\{2}\-\d\{2}\(\D\|\n\)/hs=s+1,he=e-1,ms=s,rs=s+1,me=e-1,re=e-1 contained containedin=MessageContext display
autocmd Syntax * syn match BrokenDate2 /\D\d\{2}[\- ]\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\)[\- ]20\d\{2}\(\D\|\n\)/hs=s+1,he=e-1,ms=s,rs=s+1,me=e-1,re=e-1 contained containedin=MessageContext display
autocmd Syntax * syn match BrokenDate3 /\D\d\{2}\/\d\{2}\/20\d\{2}\(\D\|\n\)/hs=s+1,he=e-1,ms=s,rs=s+1,me=e-1,re=e-1 contained containedin=MessageContext display
autocmd Syntax * syn match BrokenDate4 /\D20\d\{2}[\- ]\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\)[\- ]\d\{2}\( \d\{2}:\d\{2}:\d\{2}\(\.\d\{-}\)\?\)\?\(\D\|\n\)/hs=s+1,he=e-1,ms=s,rs=s+1,me=e-1,re=e-1 contained containedin=MessageContext display

" CcyPairs and Ccys which can't be recognized due to iskeyword-=_
autocmd Syntax * syn match CcyPair /\(USDKR_\|USDTW_\|USDCN_\|USDIN_\|USDID_\|USDMY_\|USDPH_\|USDBR_\|USDCO_\|USDCL_\|USDRU_\|USDAR_\|USDPE_\|USDVN_\)/ contained containedin=MessageContext display
autocmd Syntax * syn match Ccy /\(AR_\|BR_\|CL_\|CN_\|CO_\|ID_\|IN_\|KR_\|MY_\|PE_\|PH_\|RU_\|TW_\|VN_\)[_ \n]/re=e-1,me=e-1,he=e-1 contained containedin=MessageContext display

" ${Ccy}${Tenor}
" let's match only in "Got (tick|stale)", because otherwise it slows the process significantly
autocmd Syntax * syn match CcyPlusTenorContext /Got \(tick\|stale\) .\+$/ transparent contained containedin=MessageContext display contains=CcyPlusTenor

autocmd Syntax * syn match CcyPlusTenor /[^A-Z]\(AED\|ARS\|AR_\|AUD\|BHD\|BRL\|BR_\|CAD\|CHF\|CLP\|CL_\|CNH\|CNY\|CN_\|COP\|CO_\|CZK\|DKK\|DXY\|EGP\|EUR\|GBP\|HKD\|HUF\|IDR\|ID_\|ILS\|INR\|IN_\|ISK\|JPY\|KRW\|KR_\|KWD\|LBP\|LTL\|LVL\|MXN\|MYR\|MY_\|NOK\|NZD\|OMR\|PEN\|PE_\|PHP\|PH_\|PKR\|PLN\|RON\|RUB\|RUR\|RU_\|SAR\|SEK\|SGD\|SKK\|THB\|TRY\|TWD\|TW_\|USD\|VEB\|VND\|VN_\|ZAR\)\(10M\|11M\|15M\|18M\|1M\|1W\|1Y\|21M\|2M\|2W\|2Y\|3M\|3W\|4M\|5M\|6M\|7M\|8M\|9M\|TN\|ON\|SN\|SW\|SP\|5Y\|3Y\|TDY\|TOM\|4Y\|13M\|14M\|30M\|7Y\|10Y\)/hs=s+1,rs=s+1,ms=s contained containedin=CcyPlusTenorContext display contains=TenorInCcyPlusTenor

autocmd Syntax * syn match TenorInCcyPlusTenor /[^A-Z][A-Z]\{3}\(10M\|11M\|15M\|18M\|1M\|1W\|1Y\|21M\|2M\|2W\|2Y\|3M\|3W\|4M\|5M\|6M\|7M\|8M\|9M\|TN\|ON\|SN\|SW\|SP\|5Y\|3Y\|TDY\|TOM\|4Y\|13M\|14M\|30M\|7Y\|10Y\)/hs=s+4,rs=s+4,ms=s contained containedin=CcyPlusTenor display

" define clusters to reffer to the groups simplier
syn cluster LOG contains=DBUG,META,INFO,WARN,CRIT
syn cluster PARAM contains=Timestamp,FuncName,ThreadId,SourceFile,LineNum
syn cluster MESSAGE contains=Ccy,CcyPair,CcyRegion,CcyPlusTenorContext,Tenor,BrokenDate,BrokenDate1,BrokenDate2,BrokenDate3,BrokenDate4
syn cluster LOG_LINE contains=ParamContext,MessageContext

let b:current_syntax = "vlesslog"
