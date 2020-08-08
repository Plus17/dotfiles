" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

"""" Files Navigation
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'dyng/ctrlsf.vim'

"""" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'

"""" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'

"""" Code
Plug 'Raimondi/delimitMate'
Plug 'garbas/vim-snipmate'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"""" Git
Plug 'airblade/vim-gitgutter'

"""" Other
Plug 'duggiefresh/vim-easydir'

"""" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" Initialize plugin system
call plug#end()
set updatetime=100
" " Enables filetype detection, loads ftplugin, and loads indent
" " (Not necessary on nvim and may not be necessary on vim 8.2+)
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Conf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""" ctrlspace

" set nocompatible
" set hidden
" set encoding=utf-8
" set showtabline=0 " disable ctrlspace tab line

" nnoremap <silent><C-p> :CtrlSpace O<CR> " do not interfere with ctrl + p

"""" NERDTree

" NERDTreeToggle to Ctrl+n
map <C-n> :NERDTreeToggle<CR>

"""" Ctrl sf

nmap     <C-F>f <Plug>CtrlSFPrompt
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath

"""" vim-airline

" vim airline, display all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1

"""" ctrlp

" exclude ignored files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"""" fzf

let mapleader = " "
nnoremap <silent> <Leader><Space> :Files<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" move between buffers

nnoremap <silent> C] :bnext<CR>
nnoremap <silent> C[ :bprev<CR>
nnoremap <C-w> :bd<CR> " close current buffer
nmap <C-s> :w<CR> " save current buffer
nmap <C-o> O<Esc> " insert newline without entering insert mode
nmap <C-b> :MixFormat<CR> " format current elixir file

"""" move between buffers

nnoremap <silent> [b :bprevious<cr>
nnoremap <silent> ]b :bnext<cr>
nnoremap <silent> [B :bfirst<cr>
nnoremap <silent> ]B :blast<cr>

"""" easy window navigation between splits

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"""" easy move up or down lines
nnoremap <ALT-j> :m .+1<CR>==
nnoremap <ALT-k> :m .-2<CR>==
inoremap <ALT-j> <Esc>:m .+1<CR>==gi
inoremap <ALT-k> <Esc>:m .-2<CR>==gi
vnoremap <ALT-j> :m '>+1<CR>gv=gv
vnoremap <ALT-k> :m '<-2<CR>gv=gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""  General

syntax on " Enable syntax highlighting
syntax enable
set background=dark
colorscheme dracula

set guifont=Fira\ Code:h18
set number

set laststatus=2 " always show powerline

""""  Indenting

set tabstop=2 " a tab is two spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode

set pastetoggle=<F2> " Use F2 when pasting to avoid applying indents

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set smartindent
set expandtab

set shiftwidth=2  " number of spaces to use for autoindenting
set showmatch     " set show matching parenthesis

"""" Search

set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

"""" Auto-Commands

" Automatically source the vimrc file on save
autocmd BufWritePost .vimrc source %
