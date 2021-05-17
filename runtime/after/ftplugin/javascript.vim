" Settings for javascript files.
command-buffer Run !%:p:S
command-buffer WRun w  !%:p:S
command-buffer Test !npm test
command-buffer WTest w  !npm test
setlocal tabstop=2
setlocal shiftwidth=0
setlocal softtabstop=-1
setlocal expandtab
setlocal textwidth=80
let b:shebang = "#!/usr/bin/env node"
nnoremap <buffer> ,use ggO'use strict'<esc>
nnoremap <buffer> ,sb ggO#!/usr/bin/env node'use strict'<esc>
