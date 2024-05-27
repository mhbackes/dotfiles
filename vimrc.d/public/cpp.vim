Plug 'rhysd/vim-clang-format'

Plug 'alepez/vim-gtest'

Plug 'ilyachur/cmake4vim'
command! Cmake CMake
command! Cmakeclean CMakeClean
let g:cmake_build_type = "Debug"

Plug 'igankevich/mesonic'
command Meson MesonInit

" cpp template file type
augroup ixx
    au!
    autocmd BufNewFile,BufRead, *.ixx set filetype=cpp
    autocmd BufNewFile,BufRead, *.ixx set syntax=cpp
augroup END
