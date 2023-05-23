"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let data_dir = '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

"""" Files Navigation
Plug 'kien/ctrlp.vim'
Plug 'Asheq/close-buffers.vim'
Plug 'duggiefresh/vim-easydir'

"""" Languages
Plug 'sheerun/vim-polyglot'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'

""" LSP
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'

"""" Visual
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'

"""" Code
Plug 'tmsvg/pear-tree'
Plug 'ervandew/supertab'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-endwise'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"""" Git
Plug 'airblade/vim-gitgutter'

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

"""" Ale
let g:ale_linters = {
	\ 'elixir': ['elixir_ls'],
	\ 'ruby': ['standardb']
	\ }

""" CloseTag
let g:closetag_filenames = '*.html,*.xml,*.html.erb,*.html.heex,*.html.leex,*.html.eex'
let g:closetag_closetag_emptyTags_caseSensitive = 1

""" LSP
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"""" vim-airline

" vim airline, display all buffers when there's only one tab open
let g:airline_powerline_fonts = 0
let g:airline_theme='term'
let g:airline#extensions#tabline#enabled = 1

"""" ctrlp

" exclude ignored files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

"""" close buffers
nnoremap <silent> <C-q> :Bdelete menu<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""" move between buffers

nnoremap <C-w> :bd<CR> " close current buffer
nmap <C-s> :w<CR> " save current buffer
nmap <C-o> O<Esc> " insert newline without entering insert mode

"""" move between buffers

" nnoremap <silent> [b :bprevious<cr>
" nnoremap <silent> ]b :bnext<cr>
" nnoremap <silent> [B :bfirst<cr>
" nnoremap <silent> ]B :blast<cr>
" nnoremap <silent> C] :bnext<CR>
" nnoremap <silent> C[ :bprev<CR>

nmap <C-[> :bnext<CR>
nmap <C-]> :bprev<CR>

tnoremap <Esc><Esc> <C-\><C-n>

"""" easy window navigation between splits
nnoremap ,v :vsplit<CR>
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

let mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Conf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Stop acting like classic vi
set history=1000

" Settings about files
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on
set autoindent  " always set autoindenting on
set tabstop=2 " a tab is two spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set hidden

" git manage this
set noswapfile
set nobackup

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fillchars+=vert:\┊
set noshowmode
set laststatus=1
set wildmenu
set wildoptions=pum

set mouse=a

" Enable syntax highlighting
syntax on
syntax enable
set background=dark
colorscheme dracula

set guifont=Fira\ Code:h18
set nowrap
set number
set showmatch

set laststatus=2 " always show powerline


set pastetoggle=<F2> " Use F2 when pasting to avoid applying indents

set copyindent    " copy the previous indentation on autoindenting
set smartindent
set expandtab

set shiftwidth=2  " number of spaces to use for autoindenting
set showmatch     " set show matching parenthesis

"""" Auto-Commands

" Automatically source the vimrc file on save
autocmd BufWritePost .vimrc source %
