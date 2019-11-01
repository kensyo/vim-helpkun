" Just close help window.
" Author : kensyo <takitateokowa+vimplugin at gmail.com>
" License: MIT

if exists('g:loaded_helpkun')
    finish
endif
let g:loaded_helpkun = 1

let s:save_cpo = &cpo
set cpo&vim

noremap <silent><unique> <Plug>(helpkun_close_help) :<C-u>call helpkun#CloseHelp()<CR>
noremap <silent><unique> <Plug>(helpkun_open_help_on_cursor) :<C-u>call helpkun#OpenHelpOnCursor()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo
