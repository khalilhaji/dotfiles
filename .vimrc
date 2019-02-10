execute pathogen#infect()


" UI
set number
set ruler
syntax on
set colorcolumn=100
set showcmd
set wildmenu
set laststatus=2
set noshowmode
set hidden
set cursorline
set encoding=UTF-8
set scrolloff=5

" gruvbox
" set background=dark
set termguicolors
set background=dark
colorscheme gruvbox
" let g:airline_extensions=[]
let g:airline_powerline_fonts = 1




set tabstop=2
set softtabstop=2
set expandtab
set cursorline
filetype plugin indent on
autocmd FileType javascript setlocal ts=4 sts=4 sw=4
set lazyredraw
set showmatch
set incsearch
set hlsearch
let mapleader = ","
nnoremap <leader><space> :noh<cr>
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap j gj
nnoremap k gk
nnoremap < ^
nnoremap > $
nnoremap gV `[v`]
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>u :GundoToggle<cr>


" completion
set completeopt-=preview


set rtp+=~/.fzf

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

if has('python3')
        let g:gundo_prefer_python3 = 1
endif

runtime plugin/RainbowParenthesis.vim

