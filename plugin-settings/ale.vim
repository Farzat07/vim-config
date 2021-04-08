" ale settings

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
