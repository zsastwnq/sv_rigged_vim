" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

"Enable Mouse
set mouse=a

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell



" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set shiftwidth=2
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

"""""""""""""""""""
"to enable pathogen
call pathogen#infect()

" Encoding
set encoding=utf-8
"Set Font
set guifont=Monospace\ 14

"to enable solarized dark
syntax enable
"set background=dark
"colorscheme solarized

"to enable badwolf"
"colorscheme badwolf

"to enable desert
colorscheme desert


" Give a shortcut key to NERD Tree
map <C-q> :NERDTreeToggle<CR>
" Give a shortcut key to find file in NERD Tree
map <C-q><C-w> :NERDTreeFind<CR>
"close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Show hidden files in NerdTree
"let NERDTreeShowHidden=1

"autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"enable syntax folding
set foldmethod=syntax

"Set only if you have tags
set tags=./tags;
"set tags+=~/.vim/tags/CTAGS
"nmap <C-Enter> <C-w><C-]><C-w>T



