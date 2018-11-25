" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" set runtimepath (rtp) to include Vundle, then initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" TODO: Load plugins here (pathogen or vundle)
Plugin 'VundleVim/Vundle.vim'

" Add all plugins AFTER this line
Plugin 'tpope/vim-fugitive'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'suan/vim-instant-markdown'
Plugin 'tpope/vim-markdown'
Plugin 'rkitover/vimpager'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-commentary'
Plugin 'sheerun/dracula-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'valloric/youcompleteme'
Plugin 'edkolev/tmuxline.vim'
Plugin 'mattn/emmet-vim'

" MAKE SURE YOU HAVE THIS LINE. OTHERWISE NOTHING WILL WORK BC YOU WERE DUMB
" AND YOU FORGOT THIS LINE. >:|
call vundle#end()

" Turn on syntax highlighting
syntax on

" Add plugins BEFORE this line

" For plugins to load correctly
filetype plugin on
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set nolist
set linebreak
set wrapmargin=0
set textwidth=0
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

" Move lines (A = Alt)
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" Allow hidden buffers
set hidden

" Expand number of registers available for copying
set viminfo='100,<1000,s100,h

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F2> <ESC>:set invfullscreen<CR>a
nnoremap <F2> :set invfullscreen<CR>
vnoremap <F2> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

colorscheme darkblue
hi NonText ctermbg=NONE guibg=NONE
hi Normal guibg=NONE ctermbg=NONE

" Force *.md files as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Remap <f1> to open NERDTree
nnoremap <F1> :NERDTreeToggle<CR>

" Set Vim-Airline theme
let g:airline_theme='powerlineish'

" Install dem fancy Powerline fonts from airline-themes
let g:airline_powerline_fonts=1

" YouCompleteMe uses Python2 which is dumb but not really
let g:ycm_server_python_interpreter='python2'

" Remove autostart for vim-instant-markdown; Just type the opposite in your
" Vim command line...probably. Or just come back here when you actually need
" to use it.
let g:instant_markdown_autostart = 0

