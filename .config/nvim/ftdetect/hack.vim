au BufNewFile,BufRead * if getline(1) =~ '^<?hh' | setlocal filetype=hack | endif
