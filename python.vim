 let g:ale_linters = {'python': ['flake8']}
 let g:ale_fixers = {'python': ['black', 'isort']}

 nnoremap à :ALENextWrap<cr>
 nnoremap ç :ALEPreviousWrap<cr>
 nnoremap _ :ALEFix<cr>
