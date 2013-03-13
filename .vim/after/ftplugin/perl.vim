if exists('b:after_ftplugin_perl')
  finish
endif
let b:after_ftplugin_perl = 1

" ---------- tabulator / shiftwidth ------------------------------------------
" Set tabulator and shift width to 4 conforming to the Perl Style Guide.
" Uncomment the next two lines to force these settings for all files with
" filetype 'perl' .
setlocal tabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal iskeyword+=:

setlocal isfname-=-

" perltidy
noremap <buffer> <leader>pt <Esc>:%! perltidy -pbp<CR>
noremap <buffer> <leader>ptv <Esc>:'<,'>! perltidy -pbp<CR>

" dictionary
setlocal dictionary=~/.vim/dict/perl.dict
setlocal tags+=~/.vim/tags/perl/cpan.tags

noremap <leader>h :Perldoc<CR>
