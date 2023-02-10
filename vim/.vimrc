syntax on
set nu
filetype plugin on
set mouse=a

augroup resCur
autocmd!
autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
