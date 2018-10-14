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

function s:Stdheader ()
  call s:filetype ()

  let s:copyright = " Copyright (C) ".strftime("%Y")." ".$NAME." <".$MAIL.">"
  let s:created = " Created on ".strftime("%Y/%m/%d")." at ".strftime("%H:%M:%S")." by ".$NAME." <".$MAIL.">"
  let s:updated = " Updated on ".strftime("%Y/%m/%d")." at ".strftime("%H:%M:%S")." by ".$NAME." <".$MAIL.">"

  call append (0, s:start)
  call append (1, s:inline." ".expand("%:t"))
  call append (2, s:inline.s:copyright)
  call append (3, s:inline)
  call append (4, s:inline.s:created)
  call append (5, s:inline.s:updated)
  call append (6, s:end)
  call append (7, "")
 
  unlet s:copyright
  unlet s:created
  unlet s:updated
  unlet s:start
  unlet s:inline
  unlet s:end
endfunction

function s:Stdupdate ()
  call s:filetype ()

  let s:pattern = s:inline." Updated on"
  let s:line = getline (6)

  if match (s:line, s:pattern) != -1
    let s:updated = " Updated on ".strftime("%Y/%m/%d")." at ".strftime("%H:%M:%S")." by ".$NAME." <".$MAIL.">"
    call setline (6, s:inline.s:updated)
	unlet s:updated
  endif

  unlet s:pattern
  unlet s:line
  unlet s:start
  unlet s:inline
  unlet s:end
endfunction

map <F2> :Stdheader<CR>
command -nargs=0 Stdheader :call s:Stdheader()
command -nargs=0 Stdupdate :call s:Stdupdate()
autocmd BufNewFile * call s:Stdheader()
autocmd BufWritePre * call s:Stdupdate()
