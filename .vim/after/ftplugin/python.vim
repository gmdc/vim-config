if (exists("b:after_ftplugin_python"))
    finish
endif
let b:after_ftplugin_python = 1

"
" python-mode
"
" don't show lint result every time we save a file
let g:pymode_lint_write = 0

" run pep8+pyflakes+pylint validator with <leader>8
"autocmd FileType python map <buffer> <leader>8 :PyLint<CR>
map <buffer> <leader>8 :PyLint<CR>

" rules to ignore (example: "E501,W293")
let g:pymode_lint_ignore = "E501,E111"

" don't add extra column for error icons (on console vim creates a 2-char-wide
" extra column)
let g:pymode_lint_signs = 0

" don't fold python code on open
let g:pymode_folding = 0

" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 1

" Load show documentation plugin
let g:pymode_doc = 1

" Key for show python documentation
let g:pymode_doc_key = '<leader>h'

" Load run code plugin
"let g:pymode_run = 1

" Key for run python code
"let g:pymode_run_key = '<leader>r'

" Enable python objects and motion
let g:pymode_motion = 1

" rope (from python-mode) settings
nmap <leader>d :RopeGotoDefinition<CR>
nmap <leader>o :RopeFindOccurrences<CR>

" don't let pyflakes allways override the quickfix list
let g:pyflakes_use_quickfix = 0
