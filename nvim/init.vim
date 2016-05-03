set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle')

" PLUGINS "

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" Editor config for shizzles
Plugin 'editorconfig/editorconfig-vim'

"" Fuzzy search control
Plugin 'kien/ctrlp.vim'

"" Git plugin
Plugin 'tpope/vim-fugitive'

"" Live markdown editing
Plugin 'plasticboy/vim-markdown'

"" NerdTree stuff
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"" Project size search
Plugin 'vim-scripts/grep.vim'

"" Syntax stuff
Plugin 'pangloss/vim-javascript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'leafgarland/typescript-vim'


" Neomake build tool (mapped below to <c-b>)
Plugin 'benekastah/neomake'

" Status bar mods
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

" Tab completion
Plugin 'ervandew/supertab'

set colorcolumn=80
" Always show status bar
set laststatus=2
" Let plugins show effects after 500ms, not 4s
set updatetime=500


" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 
"
"" NEOMAKE CONFIG 
autocmd! BufEnter,BufWritePost * Neomake



" MY OWN CONFIG "

syntax enable
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

"" Fix backspace indet
set backspace=indent,eol,start

set hidden
set hlsearch
set incsearch
set ignorecase
set smartcase

set bomb
set binary

set nobackup
set noswapfile

set fileformat=unix
set showcmd
set shell=/bin/zsh

set ruler
set number

colorscheme solarized
set background=dark

"" TABS
filetype plugin indent on
set shiftwidth=2
set expandtab
set softtabstop=2

"" NERDTree Setup
" Automatically quit NERDTree when last opened

map <silent> <C-n> :NERDTreeFocus<CR>
