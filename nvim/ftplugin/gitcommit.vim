setlocal spell spelllang=en               " Enable spellchecking
setlocal textwidth=72                     " Automatically wrap at 72 characters
setlocal colorcolumn=+1                   " Add margin as guideline
setlocal indentexpr=''                    " Never auto-indent.
setlocal expandtab shiftwidth=4 tabstop=4 " No literal tabs, indent 4.
call setpos('.', [0, 1, 1, 0])            " Always start on first line of buffer
