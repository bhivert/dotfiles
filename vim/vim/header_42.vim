" Vim File
" AUTHOR:   Arubinu (arubinu@free.fr)
" FILE:     /usr/share/vim/vim73/plugin/header.vim
" CREATED:  23:27:49 10/10/2013
" MODIFIED: 23:27:49 10/16/2013
" TITLE:    header.vim
" VERSION:  1.2.0
" SUMMARY:  A header is added on the top after call command ":Stdheader" or F2.
"           If the file already exists, the pluging update the field 'date of
"           the last modification'.
" INSTALL:  Easy! Copy the file to vim's plugin directory (global or personal)
"           and run vim.


function! InvertString(str)
  " Courtesy of Preben Guldberg
  " This will invert/reverse a string

  let inverted = substitute(a:str, '.\(.*\)\@=', '\=a:str[strlen(submatch(1))]', 'g')
  return inverted
endfunction


function s:filetype ()

  let s:file = expand("%:t")
  if match (s:file, "\.vim$") != -1
    let s:comment1 = "\""
    let s:comment2 = "*"
  elseif match (s:file, "\.c$") != -1
    let s:comment1 = "/*"
    let s:comment2 = "*"
  elseif match (s:file, "\.h$") != -1
    let s:comment1 = "/*"
    let s:comment2 = "*"
  else
    let s:comment1 = "#"
    let s:comment2 = "*"
  endif
  unlet s:file

endfunction


function s:genLine (line,textInLine,character,multiple,logo)

  call s:filetype ()
  let i = 0
  let s:thisGenLine = ""
  let s:multiple = a:multiple - (2 + strlen(s:comment1) * 2)

  if a:textInLine != ""
    let s:multiple -= strlen(a:textInLine) + 3
    let s:thisGenLine .= " "
  endif

  if a:logo != ""
    let s:multiple -= strlen(a:logo)
  endif

  while i < s:multiple
    let s:thisGenLine .= a:character
    let i += 1
  endwhile

  let s:returnGenLine = s:comment1
  if a:textInLine != ""
    let s:returnGenLine .= "  "
  endif

 let s:returnGenLine .= " " . a:textInLine . s:thisGenLine . a:logo . " " . InvertString(s:comment1)

  if a:line != -1
    call append (a:line, s:returnGenLine)
    unlet s:returnGenLine
  endif

endfunction


function s:Stdheader ()

  call s:filetype ()

  call s:genLine (-1, "", s:comment2, 80, "")
  let s:outBlock = s:returnGenLine
  call append (0, s:outBlock)
  call s:genLine (-1, "", " ", 80, "")
  let s:inBlock = s:returnGenLine

  let s:line2 = "By: " . system ("id -un | tr -d '\n'") . " <" . $MAIL . ">"
  let s:line3 = "Created: " . strftime ("%Y/%m/%d %H:%M:%S") . " by " . system ("id -un | tr -d '\n'")
  let s:line4 = "Updated: " . strftime ("%Y/%m/%d %H:%M:%S") . " by " . system ("id -un | tr -d '\n'")

  let s:author = s:line2
  let s:created = s:line3
  let s:modified = s:line4

  call append (1, s:inBlock)

  call s:genLine (2, "", " ", 80, "        :::      ::::::::  ")
  call s:genLine (3, expand("%:t"), " ", 80, "      :+:      :+:    :+:  ")
  call s:genLine (4, "", " ", 80, "    +:+ +:+         +:+    ")
  call s:genLine (5, s:author, " ", 80, "  +#+  +:+       +#+       ")
  call s:genLine (6, "", " ", 80, "+#+#+#+#+#+   +#+          ")
  call s:genLine (7, s:created, " ", 80, "     #+#    #+#            ")
  call s:genLine (8, s:modified, " ", 80, "    ###   ########.fr      ")

  call append (9, s:inBlock)

  call append (10, s:outBlock)
  call append (11, "")

  unlet s:comment1
  unlet s:comment2
  unlet s:author
  unlet s:created
  unlet s:modified

endfunction


function s:update ()

  let s:pattern = "Updated:"
  let s:line = getline (9)

  if match (s:line, s:pattern) != -1
    call s:genLine (-1, "Updated: " . strftime ("%Y/%m/%d %H:%M:%S") . " by " . system ("id -un | tr -d '\n'"), " ", 80, "    ###   ########.fr      ")
    call setline (9, s:returnGenLine)
    unlet s:returnGenLine
  endif

  unlet s:pattern
  unlet s:line

endfunction

map <F2> :Stdheader<CR>
command -nargs=0 Stdheader :call s:Stdheader()
" autocmd BufNewFile * call s:Stdheader ()
autocmd BufWritePre * call s:update ()
