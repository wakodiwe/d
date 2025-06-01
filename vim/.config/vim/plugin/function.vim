set foldtext=MyFoldText()
fu! MyFoldText()
    let lineNr = v:foldstart
    let text = ""
    " while (strlen(text) < winwidth(0) - v:foldlevel - 2) && lineNr <= v:foldend
    "     let text .= getline(lineNr).' '
    "     let lineNr += 1
    " endwhile
    let text .= getline(lineNr).' '

    let text = v:folddashes . text
    " if strlen(text) > winwidth(0) - 5
    "     let text = strpart(text, 0, winwidth(0) - 5).' … }'
    " endif
    return text[1:]
endfu
