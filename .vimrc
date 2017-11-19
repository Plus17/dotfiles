" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()

"_______Mappings_______"
" change the mapleader from \ to ,
let mapleader=","

"nnoremap <C-Tab> :tabnext<CR>
"nnoremap <C-Left> :tabprevious<CR>
nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

execute pathogen#infect()


"_______Visual_______"
set background=dark
set showmode  " always show what mode were currently editing in
set guifont=Fira_Code:h19

syntax enable
set number        " always show line numbers
set linespace=15

set laststatus=2
set noshowmode
set mouse=a

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="81,".join(range(400,999),",")

"_______Indenting_______"
set tabstop=2 " a tab is two spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Use F2 when pasting to avoid applying indents
set pastetoggle=<F2>

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set smartindent
set expandtab

set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis

set smarttab      " insert tabs on the start of a line according to
                  " shiftwidth, not tabstop

"_______Search_______"
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
"_______Auto-Commands_______"
" Automatically source the vimrc file on save
autocmd BufWritePost .vimrc source %

" Change terminal title
set title

set runtimepath^=~/.vim/bundle/ctrlp.vim
