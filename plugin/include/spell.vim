" load dictionary
if version >= 700
    set spell spelllang=
    set nospell

    menu Spell.off :setlocal spell spelllang=<CR>:setlocal nospell<CR>
    menu Spell.Russian+English :setlocal spell spelllang=ru,en<CR>
    menu Spell.Russian :setlocal spell spelllang=ru<CR>
    menu Spell.English :setlocal spell spelllang=en<CR>
    menu Spell.-SpellControl- :
    menu Spell.Word\ Suggest<Tab>z= z=
    menu Spell.Add\ To\ Dictionary<Tab>zg zg
    menu Spell.Add\ To\ TemporaryDictionary<Tab>zG zG
    menu Spell.Remove\ From\ Dictionary<Tab>zw zw
    menu Spell.Remove\ From\ Temporary\ Dictionary<Tab>zW zW
    menu Spell.Previous\ Wrong\ Word<Tab>[s [s
    menu Spell.Next\ Wrong\ Word<Tab>]s ]s
endif

nmap <S-F9> :emenu Spell.
