call plug#begin('~/.local/share/nvim/site/autoload/plug')

" Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'chun-yang/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'

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
colorscheme onedark
set termguicolors
set background=dark
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1

"--- Auto tag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtmli,*.php,*.jsx,*.vue'

"--- Fzf ctrl-o
nnoremap <C-o> :Files<CR>
nmap <C-b> :e#<CR>
"set ignore files in .zshrc 
"export FZF_DEFAULT_COMMAND='ag --nocolor --ignore={'node_modules','bower_components'} -g ""'
"brew install the_silver_searcher

"--- Coc binds
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

"Coc settings
imap <C-l> <Plug>(coc-snippets-expand)
"python for snippets: python3 -m pip install --user --upgrade pynvim
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
\]

"--- C++ build command for mac
autocmd FileType cpp nnoremap <leader>fn :!g++ *.cpp -o program && open -a Terminal './program'<CR>

"--- Copy paste binds 
vnoremap <C-c> "*y
map <C-p> "*p

"--- NerdTree
"For icons need to install font
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
