" Just close help window.
" Author : kensyo <takitateokowa+vimplugin at gmail.com>
" License: MIT

if exists('g:loaded_helptojirudake')
    finish
endif
let g:loaded_helptojirudake = 1

let s:save_cpo = &cpo
set cpo&vim

noremap <silent> <Plug>(help_tojiru) :<C-u>call helptojirudake#Execute()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
