augroup filetype_py
    autocmd!
    autocmd FileType py setlocal foldmethod=indent
    autocmd BufRead,BufNewFile *.py setlocal textwidth=79
augroup END
