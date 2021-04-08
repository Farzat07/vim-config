" nvim-miniyank settings

nmap <c-n> <plug>(miniyank-cycle)
nmap <c-p> <plug>(miniyank-cycleback)
map p <plug>(miniyank-autoput)
map P <plug>(miniyank-autoPut)
map <leader>p <Plug>(miniyank-startput)
map <leader>P <Plug>(miniyank-startPut)
map <Leader>yc <Plug>(miniyank-tochar)
map <Leader>yl <Plug>(miniyank-toline)
map <Leader>yb <Plug>(miniyank-toblock)
let g:miniyank_filename = $HOME."/.vim/.miniyank.mpack"
