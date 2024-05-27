" Auto install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim
               \ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Modular vimrc
for f in split(glob('~/.vimrc.d/public/*.vim'), '\n')
    exe 'source' f
endfor

" Private: project/company related, not committed
for f in split(glob('~/.vimrc.d/private/*.vim'), '\n')
    exe 'source' f
endfor

call plug#end()
