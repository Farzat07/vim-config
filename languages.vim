" Python settings.
let g:python3_host_prog = '/usr/bin/python3'
autocmd FileType python
            \ command-buffer Run !chmod +x %:p:S; %:p:S
autocmd FileType python
            \ command-buffer WRun w | !chmod +x %:p:S; %:p:S
autocmd FileType python
            \ setlocal tabstop=4
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab
            \ | setlocal autoindent
            \ | setlocal showmatch
            \ | setlocal textwidth=79
            \ | let b:shebang = "#!/usr/bin/env python3"
            \ | nnoremap <buffer> ,sb ggO#!/usr/bin/env python3<esc>

" C settings.
autocmd FileType c
            \ command-buffer Compile w | make %:r:S
autocmd FileType c
            \ command-buffer CompileM w | !gcc -o %:r:S %:S -lm
autocmd FileType c
            \ command-buffer Make w | !make %:r:S
autocmd FileType c
            \ command-buffer Run !%:p:r:S
autocmd FileType c
            \ nnoremap <buffer> ,cmain i#include <stdio.h><CR><CR>int main() {<CR><CR>return 0;<CR>}<esc><Up><Up>O<CR>

" Bash settings.
autocmd FileType sh
            \ | let b:shebang = "#!/usr/bin/env bash"
            \ | nnoremap <buffer> ,sb i#!/bin/bash<CR><CR>

" Latex settings.
autocmd FileType tex
            \ setlocal spell spelllang=en
            \ | setlocal tabstop=2
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab
            \ | setlocal textwidth=95
            \ | VimtexCompile

" Markdown settings.
autocmd FileType markdown
            \ setlocal spell spelllang=en
            \ | setlocal tabstop=4
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab
            \ | setlocal textwidth=80

" web-dev settings.
autocmd FileType html
            \ | setlocal tabstop=2
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab

" web-dev settings.
autocmd FileType htmljinja
            \ | setlocal tabstop=2
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab

" web-dev settings.
autocmd FileType css
            \ | setlocal tabstop=2
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab

" Node settings.
autocmd FileType javascript
            \ command-buffer Run !%:p:S
autocmd FileType javascript
            \ command-buffer WRun w | !%:p:S
autocmd FileType javascript
            \ command-buffer Test !npm test
autocmd FileType javascript
            \ command-buffer WTest w | !npm test
autocmd FileType javascript
            \ setlocal tabstop=2
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab
            \ | setlocal textwidth=80
            \ | let b:shebang = "#!/usr/bin/env node"
            \ | nnoremap <buffer> ,use ggO'use strict'<esc>
autocmd FileType javascript
            \ nnoremap <buffer> ,sb ggO#!/usr/bin/env node'use strict'<esc>

" JSON settings.
autocmd FileType json
            \ setlocal tabstop=2
            \ | setlocal shiftwidth=0
            \ | setlocal softtabstop=-1
            \ | setlocal expandtab

" Processing settings.
autocmd FileType processing
            \ command-buffer WRun w | make
