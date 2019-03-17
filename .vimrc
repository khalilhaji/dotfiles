set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" Vundle Plugins
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'wlangstroth/vim-racket'
Plugin 'vim-airline/vim-airline'
" Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tomtom/tcomment_vim'
Plugin 'sjl/gundo.vim'
call vundle#end()
filetype plugin indent on
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_insertion = 1

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

" Indentation
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

set cursorline " Highlight current line
set lazyredraw
set showmatch
set incsearch
set hlsearch
let mapleader = ","
nnoremap <leader><space> :noh<cr>
nnoremap j gj
nnoremap k gk
nnoremap < ^
nnoremap > $
nnoremap gV `[v`]
nnoremap <leader>ev :vs $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>l :ls<cr>
nnoremap <leader>u :GundoToggle<cr>

" syntax
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" completion
" set completeopt-=preview

" let g:Tex_FormatDependency_dvi = 'dvi,ps,pdf'

set rtp+=~/.fzf

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

if has('python3')
        let g:gundo_prefer_python3 = 1
endif
