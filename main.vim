" Install and manage the plugins.
source <sfile>:p:h/plugins.vim

" Regular settings.
source <sfile>:p:h/regular.vim

" Language-specific settings and mappings.
source <sfile>:p:h/languages.vim

" Global mappings
source <sfile>:p:h/global-mappings.vim

" Plugin config
source <sfile>:p:h/plugin-settings/plugin-settings-main.vim

" jedi-vim settings.
autocmd FileType python setlocal completeopt-=preview

" pymode settings.
"let g:pymode_rope_completion = 0

" syntactic settings.
"let g:syntastic_python_checkers = ['flake8', 'pylint']
"let g:syntastic_tex_checkers = ['chktex', 'proselint']
"let g:syntastic_javascript_checkers = ["standard"]
let g:ale_linters = {
            \'python': [],
            \'javascript': ['eslint'],
            \'javascriptreact': ['eslint'],
            \}
let g:ale_fixers = {
            \'javascript': ['prettier', 'eslint'],
            \'javascriptreact': ['prettier', 'eslint'],
            \'html': ['prettier'],
            \'css': ['prettier'],
            \'json': ['prettier'],
            \'markdown': ['prettier'],
            \}
let g:ale_echo_msg_format = '[%linter%] %s'
let g:ale_fix_on_save = 1

" Yoink.vim settings.
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

" vim-closetag settings.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript'
let g:closetag_xhtml_filetypes = 'xhtml,jsx,javascript'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
            \ 'typescript.tsx': 'jsxRegion,tsxRegion',
            \ 'javascript.jsx': 'jsxRegion',
            \ 'javascript': 'jsxRegion',
            \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" Emmit.vim settings.
let g:user_emmet_expandabbr_key = '<C-y>y'

" UltiSnips settings.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-w>"
let g:UltiSnipsJumpBackwardTrigger="<c-q>"
let g:UltiSnipsListSnippets="<c-h>"

" Coc.nvim settings.
let g:coc_global_extensions = [
            \'coc-snippets',
            \'coc-ultisnips',
            \'coc-css',
            \'coc-html',
            \'coc-jedi',
            \'coc-json',
            \'coc-markdownlint',
            \'coc-pyright',
            \'coc-tsserver',
            \'coc-vimlsp',
            \'coc-vimtex',
            \]
let g:markdown_fenced_languages = [
            \ 'vim',
            \ 'help',
            \]
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Coc-snippets settings.
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-l>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
