syntax on

set encoding=UTF-8
set tabstop=2 softtabstop=2
set shiftwidth=2
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set expandtab
set smartindent
set nowrap
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=10
set termguicolors
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set noshowmode
set cmdheight=2
set updatetime=50

call plug#begin('~/.vim/plugged')

" Theme
Plug 'dracula/vim', {'as': 'dracula'}

" Icons
Plug 'ryanoasis/vim-devicons'

" Status bar
Plug 'vim-airline/vim-airline'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Files Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Indent line
Plug 'Yggdroot/indentLine'

" Auto pair
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" coc.vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/jsonc.vim'

" JS Syntax Highlight
Plug 'pangloss/vim-javascript'

" JSX
Plug 'maxmellon/vim-jsx-pretty'

" Vue
Plug 'posva/vim-vue'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

call plug#end()

" Set theme
colorscheme dracula

let mapleader=","       " change leader key to ,
let maplocalleader=","  " change local leader key to ,

" Move lines up/down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Plugin Configurations
" source $HOME/.config/nvim/vim-plug/nvim-tree.vim  " File Explorer
source $HOME/.config/nvim/vim-plug/nerdtree.vim
source $HOME/.config/nvim/vim-plug/coc-nvim.vim
