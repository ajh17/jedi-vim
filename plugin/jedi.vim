"jedi-vim - Omni Completion for python in vim
" Maintainer: David Halter <davidhalter88@gmail.com>
"
" Pyimport command
command! -nargs=1 -complete=custom,jedi#py_import_completions Pyimport :call jedi#py_import(<q-args>)

" vim: set et ts=4:
