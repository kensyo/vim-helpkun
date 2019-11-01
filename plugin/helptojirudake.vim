" Just close help window.
" Author : kensyo <takitateokowa+vimplugin at gmail.com>
" License: MIT

if exists('g:loaded_helpkun')
    finish
endif
let g:loaded_helpkun = 1

let s:save_cpo = &cpo
set cpo&vim

noremap <silent> <Plug>(help_tojiru) :<C-u>call helpkun#Execute()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
