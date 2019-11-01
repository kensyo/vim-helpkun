" Just close help window.
" Author : kensyo <takitateokowa+vimplugin at gmail.com>
" License: MIT

let s:save_cpo = &cpo
set cpo&vim

" Help を閉じた後に表示する文字列
let s:message = get(g:, 'helptojirudake_message', '')

function! s:CloseHelpWindow() abort
    for w in range(1, winnr('$'))
        let buffer_type = getwinvar(w, '&buftype')
        if buffer_type ==# 'help'
            execute w. 'wincmd w'
            q
            break
        endif
    endfor
endfunction

function! helptojirudake#Execute() abort
    call s:CloseHelpWindow()
    echo s:message
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
