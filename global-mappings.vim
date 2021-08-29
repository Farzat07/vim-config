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

" Automatically starts terminal emulator in insert mode.
autocmd TermOpen * startinsert
tnoremap <C-h> <C-\><C-n><C-w>h
" Workaround since <C-h> isn't working in neovim right now
" tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

" Coc shorcuts.
nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>k :call CocAction('doHover')<CR>
nmap <silent> <Leader>n <Plug>(coc-diagnostic-next)
nmap <silent> <Leader>p <Plug>(coc-diagnostic-prev)
