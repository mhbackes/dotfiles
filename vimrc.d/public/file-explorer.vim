
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs' | Plug 'Xuyuanp/nerdtree-git-plugin'
"let g:nert_tree_tabs_open_on_gui_startup = 2
autocmd VimLeave * :NERDTreeTabsClose
map <C-t> :NERDTreeTabsToggle<CR>
map <C-f> :NERDTreeFind<CR>

Plug 'dsummersl/vim-projectionist', { 'branch': 'issue-94' }

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = {
\    'types': {
\      1: [
\        '.git',
\        'cd %s &&
\         git ls-files . -co --exclude-standard
\         | awk ''{ print length, $0 }''
\         | sort -n -s
\         | cut -d" " -f2-'
\      ],
\    },
\    'fallback': 'find %s -type f'
\  }

Plug 'ryanoasis/vim-devicons'
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['myext'] = 'ƛ'
