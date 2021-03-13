call plug#begin('~/.local/share/nvim/site/autoload/plug')

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'chun-yang/auto-pairs'
"Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

call plug#end()

"--- Backspace behavior like in any other editor
set backspace=indent,eol,start 

"--- Setters
syntax on
set relativenumber
set autoindent
set noshowmode
set smartindent
set nu
set nowrap
set noswapfile
set noerrorbells
set hidden
set nohlsearch
set incsearch
set expandtab
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set encoding=utf8
set laststatus=2
set scrolloff=10

"--- Color scheme
colorscheme gruvbox

"--- Auto tag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtmli,*.php'

"--- Fzf ctrl-p
nnoremap <C-p> :Files<CR>
"set ignore files in .zshrc 
"export FZF_DEFAULT_COMMAND='ag --nocolor --ignore={'node_modules','bower_components'} -g ""'

"--- Coc binds
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

"--- NerdTree
map <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

"--- Autocomplete with tab
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

"--- Rainbow Parantheses
let g:rainbow_active = 1 

"--- Split View Defaults
set splitbelow
set splitright

"--- Split View Movement
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>
