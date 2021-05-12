" Windows navigation.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Mkdir for the current file.
try
    command MkCurDir :!mkdir %:h:S -p
catch /^Vim\%((\a\+)\)\=:E174/	" Catch Command already exists error.
endtry

" Copy the last used register to the clipboard.
try
    command Clipboard :let @+ = getreg('"')
catch /^Vim\%((\a\+)\)\=:E174/	" Catch Command already exists error.
endtry

" Reload settings.
try
    command Source :source $MYVIMRC
catch /^Vim\%((\a\+)\)\=:E174/	" Catch Command already exists error.
endtry

" Restore the original cursor colour.
" http://pod.tst.eu/http://cvs.schmorp.de/rxvt-unicode/doc/rxvt.7.pod
" See #XTerm_Operating_System_Commands in the above url for more info.
try
    command ResetMouse :!printf '%b' '\e]12'
catch /^Vim\%((\a\+)\)\=:E174/	" Catch Command already exists error.
endtry

" Coc shorcuts.
nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>k :call CocAction('doHover')<CR>
nmap <silent> <Leader>n <Plug>(coc-diagnostic-next)
nmap <silent> <Leader>p <Plug>(coc-diagnostic-prev)
