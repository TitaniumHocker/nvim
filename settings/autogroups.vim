" Autoconfigure window with terminal
autocmd TermOpen * setlocal nonumber norelativenumber

" Set filetype for template toolkit files
augroup tt_ft
  au!
  autocmd BufNewFile,BufRead *.tt   setf tt2html
augroup END

" Enable spell check in text files
autocmd FileType text,md,rst set spell

" Remove trailing spaces on file save
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
augroup whitespace_trimmer
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
