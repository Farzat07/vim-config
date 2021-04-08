" Install and manage the plugins.
source <sfile>:p:h/plugins.vim

" Regular settings.
source <sfile>:p:h/regular.vim

" Language-specific settings and mappings.
source <sfile>:p:h/languages.vim

" Global mappings.
source <sfile>:p:h/global-mappings.vim

" Plugin config.
source <sfile>:p:h/plugin-settings/plugin-settings-main.vim

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
