" Settings for python files.
command-buffer Run !chmod +x %:p:S; %:p:S
command-buffer WRun w | !chmod +x %:p:S; %:p:S
setlocal tabstop=4
setlocal shiftwidth=0
setlocal softtabstop=-1
setlocal expandtab
setlocal autoindent
setlocal showmatch
setlocal textwidth=79
let b:shebang = "#!/usr/bin/env python3"
nnoremap <buffer> ,sb ggO#!/usr/bin/env python3<esc>
