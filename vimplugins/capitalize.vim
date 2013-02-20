" Vim global plugin for capitalizing first letter of each word
"       in the current line.
" Last Change: 2008-11-21 Fri 08:23 AM IST
" Maintainer: www.swaroopch.com/contact/
" License: www.opensource.org/licenses/bsd-license.php

if exists("loaded_capitalize_")
    finish
endif
let loaded_capitalize_ = 1

function Capitalize() range 
    for line_number in range(a:firstline, a:lastline) 
        let line_content = getline(line_number)
        let line_content = substitute(line_content, "\\w\\+", "\\u\\0", "g")
        call setline(line_number, line_content)
    endfor
endfunction
