function s:filetype ()
  let s:file = expand("%:t")
  if match (s:file, "\.vim$") != -1
    let s:start = "\"\""
    let s:inline = "\""
	let s:end = "\"\""
  elseif match (s:file, "\.c$") != -1
    let s:start = "/*"
    let s:inline = "*"
	let s:end = "*/"
  elseif match (s:file, "\.h$") != -1
    let s:start = "/*"
    let s:inline = "*"
	let s:end = "*/"
  elseif match (s:file, "\.cpp$") != -1
    let s:start = "/*"
    let s:inline = "*"
	let s:end = "*/"
  elseif match (s:file, "\.hpp$") != -1
    let s:start = "/*"
    let s:inline = "*"
	let s:end = "*/"
  else
    let s:start = "##"
    let s:inline = "#"
	let s:end = "##"
  endif
  unlet s:file
endfunction

function s:Gplheader ()
  call s:filetype ()

  let s:copyright = " Copyright (C) ".strftime ("%Y")." ".$NAME." <".$MAIL.">"
  let s:created = " Created on ".strftime("%Y/%m/%d")." at ".strftime("%H:%M:%S")." by ".$NAME." <".$MAIL.">"
  let s:updated = " Updated on ".strftime("%Y/%m/%d")." at ".strftime("%H:%M:%S")." by ".$NAME." <".$MAIL.">"

  call append (0, s:start)
  call append (1, s:inline." ".expand("%:t")." is part of a project.")
  call append (2, s:inline.s:copyright)
  call append (3, s:inline)
  call append (4, s:inline." This project is free software: you can redistribute it and/or modify")
  call append (5, s:inline." it under the terms of the GNU Lesser General Public License as published by")
  call append (6, s:inline." the Free Software Foundation, either version 3 of the License, or")
  call append (7, s:inline." (at your option) any later version.")
  call append (8, s:inline)
  call append (9, s:inline." This project is distributed in the hope that it will be useful,")
  call append (10, s:inline." but WITHOUT ANY WARRANTY; without even the implied warranty of")
  call append (11, s:inline." MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the")
  call append (12, s:inline." GNU Lesser General Public License for more details.")
  call append (13, s:inline)
  call append (14, s:inline." You should have received a copy of the GNU Lesser General Public License")
  call append (15, s:inline." along with this program. If not, see <http://www.gnu.org/licenses/>")
  call append (16, s:inline)
  call append (17, s:inline.s:created)
  call append (18, s:inline.s:updated)
  call append (19, s:end)
  call append (20, "")

  unlet s:copyright
  unlet s:created
  unlet s:updated
  unlet s:start
  unlet s:inline
  unlet s:end
endfunction

function s:Gplupdate ()
  call s:filetype ()

  let s:pattern = s:inline." Updated on"
  let s:line = getline (19)

  if match (s:line, s:pattern) != -1
    let s:updated = " Updated on ".strftime("%Y/%m/%d")." at " . strftime("%H:%M:%S")." by ".$NAME." <".$MAIL.">"
    call setline (19, s:inline.s:updated)
	unlet s:updated
  endif

  unlet s:pattern
  unlet s:line
  unlet s:start
  unlet s:inline
  unlet s:end
endfunction

map <F3> :Gplheader<CR>
command -nargs=0 Gplheader :call s:Gplheader()
command -nargs=0 Gplupdate :call s:Gplupdate()
"autocmd BufNewFile * call s:Gplheader()
autocmd BufWritePre * call s:Gplupdate()
