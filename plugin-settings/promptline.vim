" promptline.vim settings

"let g:promptline_theme = 'airline'
let g:promptline_preset = {
        \'a' : [ promptline#slices#host(), promptline#slices#user() ],
        \'b' : [ promptline#slices#cwd({'dir_limit': 4}) ],
        \'y' : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'z' : [ promptline#slices#python_virtualenv() ],
        \'warn' : [ promptline#slices#last_exit_code() ],
        \'options': {'newline': 1}}
command PromptlineSave PromptlineSnapshot! ~/.code_stuff/.promptline.sh
