" Install and manage the plugins.
source ./plugins.vim

" Regular settings.
source ./regular.vim

" Language-specific settings and mappings.
source ./languages.vim

" Global mappings
source ./global-mappings.vim

" indentLine settings.
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_fileTypeExclude = ['tex']
" Prevents characters from being concealed, like double quotes in json, at the
" cost of the package becoming useless.
"let g:indentLine_setConceal = 0
" Sets in which modes conceal can take effect even if the cursor is on that
" line/region.
"let g:indentLine_concealcursor = 'inc'

" pydiction settings.
"let g:pydiction_location = '~/.vim/plugged/pydiction/complete-dict'
"let g:pydiction_menu_height = 3

" vimtex settings.
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode = 0
"let g:tex_conceal = ''
"let g:tex_syntax_conceal_default = 0
"let g:vimtex_quickfix_autoclose_after_keystrokes = 1

" jedi-vim settings.
autocmd FileType python setlocal completeopt-=preview

" vim-airline settings.
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = 'Custom_powerline'
fun! Custom_powerline()
  let bar = tmuxline#new()

  call bar.left.add('a', '#S')
  call bar.left.add_left_sep()

  call bar.right.add_right_sep()
  call bar.right.add('x', '%a')

  call bar.right.add_right_sep()
  call bar.right.add('y', '%Y-%m-%d')
  call bar.right.add_right_alt_sep()
  call bar.right.add('y', '%H:%M')
  call bar.right.add_right_sep()

  call bar.right.add('z', '#H')

  call bar.win.add('win.dim', '#I')
  call bar.win.add_left_alt_sep()
  call bar.win.add('win', '#W#F')

  call bar.cwin.add_left_sep()
  call bar.cwin.add('cwin.dim', '#I')
  call bar.cwin.add_left_alt_sep()
  call bar.cwin.add('cwin', '#W#F')
  call bar.cwin.add_left_sep()

  let bar.options['status-justify'] = 'left'
  let bar.win_options['window-status-activity-style'] = 'none'

  return bar
endfun
command TmuxlineSave TmuxlineSnapshot! ~/.code_stuff/.tmuxline
" if exists('$TMUX')
" 	autocmd InsertEnter * Tmuxline airline_insert
" 	autocmd InsertLeave * Tmuxline airline
"     autocmd UILeave * Tmuxline
" endif
"let g:promptline_theme = 'airline'
let g:promptline_preset = {
        \'a' : [ promptline#slices#host(), promptline#slices#user() ],
        \'b' : [ promptline#slices#cwd({'dir_limit': 4}) ],
        \'y' : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'z' : [ promptline#slices#python_virtualenv() ],
        \'warn' : [ promptline#slices#last_exit_code() ],
        \'options': {'newline': 1}}
command PromptlineSave PromptlineSnapshot! ~/.code_stuff/.promptline.sh

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
