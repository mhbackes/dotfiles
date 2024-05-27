syntax on
set number relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set colorcolumn=100
highlight ColorColumn ctermbg=darkred
set scrolloff=5
set smartindent
filetype plugin indent on
set encoding=utf8
set backspace=2
set wildmenu

set splitright
set splitbelow

set t_Co=256
set background=dark

set hlsearch
set ignorecase
set smartcase

" using persistent undo
if has('persistent_undo')
  set undofile undodir=~/.vim/undo
  call mkdir(&undodir, "p")
endif

" Very smart :)
command! W w
command! Q q
command! WQ wq
command! Wq wq
command! Qall qall
command! Wqall wqall
command! WQall wqall

" capslock remap to <c-6>
for c in range(char2nr('A'), char2nr('Z'))
    execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
    execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor

" kill the capslock when leaving insert mode
autocmd InsertLeave * set iminsert=0

" Save '+' buffer on exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Same, but for terminals
" tmap <C-j> <C-W>j
" tmap <C-k> <C-W>k
" tmap <C-h> <C-W>h
" tmap <C-l> <C-W>l

" Terminal normal mode with esc
tnoremap <Esc> <C-w>N

" Load debug mode
packadd termdebug

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

command! VimRC edit ~/.vimrc.d
command! BashRC edit ~/.bashrc.d
