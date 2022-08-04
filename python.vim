 let g:ale_linters = {'python': ['flake8']}
 let g:ale_fixers = {'python': ['black', 'isort']}
 let g:ale_python_flake8_options = '--max-line-length=120 --per-file-ignores="**/__init__.py:W391,F401"'

 nnoremap à :ALENextWrap<cr>
 nnoremap ç :ALEPreviousWrap<cr>
 nnoremap _ :ALEFix<cr>
