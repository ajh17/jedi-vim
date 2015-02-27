if !has('python') && !has('python3')
    finish
endif
" ------------------------------------------------------------------------
" Initialization of jedi-vim
" ------------------------------------------------------------------------
if g:jedi#usages_command != ''
  execute "nnoremap <buffer> ".g:jedi#usages_command." :call jedi#usages()<CR>"
endif
" documentation/pydoc
if g:jedi#documentation_command != ''
  execute "nnoremap <silent> <buffer>".g:jedi#documentation_command." :call jedi#show_documentation()<CR>"
endif
if g:jedi#show_call_signatures > 0 && has('conceal')
  call jedi#configure_call_signatures()
endif
