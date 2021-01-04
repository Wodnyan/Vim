syntax on
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nonu
set rnu
set nowrap
set encoding=UTF-8 
" set guicursor=

map <Space> <Leader>

call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'ayu-theme/ayu-vim' 
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'pantharshit00/vim-prisma'
Plug 'joshdick/onedark.vim'
call plug#end()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_global_extensions = [ 'coc-tsserver', 'coc-pyright' ]

nmap <C-n> :NERDTreeToggle<CR>

let g:airline#extensions#tabline#enabled = 1
let g:gitgutter_terminal_reports_focus=0
set updatetime=100

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu


let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap < <><ESC>ha
inoremap ` ``<ESC>ha
inoremap " ""<ESC>ha
