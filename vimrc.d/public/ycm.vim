" Code completion
Plug 'ycm-core/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteme',
                               \ 'do': 'python3 install.py --clangd-completer',
                               \ 'commit': 'e17fb2fc92c7c1bee6a429db0d3b432c811d0c8a' }
let g:ycm_use_clangd = 1
let g:ycm_clangd_binary_path = exepath('clangd')
"let g:ycm_clangd_args = ['--background-index=false']
"let g:ycm_always_populate_location_list = 1
let g:ycm_auto_hover = ''
set completeopt=menu,menuone
