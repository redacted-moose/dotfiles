" nim.vim
function s:jump_to_def()
    if exists("*GotoDefinition_" . &filetype)
        call GotoDefinition_{&filetype}()
    else
        exe "norm! \<C-]>"
    endif
endf

" Jump to tag
nnoremap <buffer> <M-g> :call s:jump_to_def()<cr>
inoremap <buffer> <M-g> <esc>:call s:jump_to_def()<cr>i
