
Plug 'scrooloose/nerdtree' | Plug 'jistr/vim-nerdtree-tabs' | Plug 'Xuyuanp/nerdtree-git-plugin'
"let g:nert_tree_tabs_open_on_gui_startup = 2
autocmd VimLeave * :NERDTreeTabsClose
map <C-t> :NERDTreeTabsToggle<CR>
map <C-f> :NERDTreeFind<CR>

Plug 'dsummersl/vim-projectionist', { 'branch': 'issue-94' }
let g:projectionist_heuristics = {
  \  'src/cxx/modules/ng/&src/test/unit/': {
  \    'src/cxx/modules/ng/*.cxx': { 'alternate': 'src/cxx/modules/ng/{}.hxx', 'type': 'cxx' },
  \    'src/cxx/modules/ng/*.hxx': { 'alternate': 'src/cxx/modules/ng/{}.cxx', 'type': 'hxx' },
  \    'src/cxx/modules/ng/*.ixx': { 'alternate': 'src/cxx/modules/ng/{}.hxx', 'type': 'ixx' },
  \    'src/test/unit/*Test.cxx': { 'alternate': 'src/cxx/modules/ng/{}.cxx', 'type': 'test' },
  \  }
  \ }

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
