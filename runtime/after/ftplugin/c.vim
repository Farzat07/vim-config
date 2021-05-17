" Settings for c files.
command-buffer Compile w | make %:r:S
command-buffer CompileM w | !gcc -o %:r:S %:S -lm
command-buffer Make w | !make %:r:S
command-buffer Run !%:p:r:S
nnoremap <buffer> ,cmain i#include <stdio.h><CR><CR>int main() {<CR><CR>return 0;<CR>}<esc><Up><Up>O<CR>
