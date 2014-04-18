if(exists("*strftime"))
    iabbr amE @author Sergey Markelov
    iabbr mE Sergey Markelov
    iabbr datE <C-R>=strftime("%d %B %Y - %H:%M:%S")<CR>
    iabbr dmE developed by Sergey Markelov (<C-R>=strftime("%m/%d/%Y")<CR>)
    iabbr timestamP <C-R>=strftime("%s")<CR>
endif
