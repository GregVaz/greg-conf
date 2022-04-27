set nocompatible
filetype plugin on
syntax on

" General configuration
set number
set showcmd
set showmode
set autoread
set encoding=UTF-8
" let mapleader = ","

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Identation
set smartindent
set smarttab
" set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Window pane resizing
nnoremap <leader>h :exe "vertical resize -3"<CR>
nnoremap <leader>l :exe "vertical resize +3"<CR>
nnoremap <leader>j :exe "resize -3"<CR>
nnoremap <leader>k :exe "resize +3"<CR>

" enable indent guides by default
let g:indent_guides_enable_on_vim_startup = 1

" remap call to fzf file search
nnoremap <silent> <C-p> :FZF<CR>

" NERDTree shortcuts
" nnoremap <C-k> :NERDTree<CR>
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <leader>f :NERDTreeFind<CR>
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
" Start NERDTree when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" vim airline 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='powerlineish' "minimalist papercolor powerlineish
" let g:airline_minimalist_bg='dark'

" vim-css-color plugin conf
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Emmet configuration
let g:user_emmet_mode='a'    "only enable normal mode functions.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Y>'


"_______________Plugins____________
"Automatic installation on case it doesn't exist 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged')
" Theme
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Emmet
Plug 'mattn/emmet-vim'
" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Tree explorer plugin
" Plug 'preservim/nerdtree'
" Close tag
Plug 'alvan/vim-closetag'
" Commentary
Plug 'tpope/vim-commentary'
" Programming
" Plug 'vim-ruby/vim-ruby'
" Plug 'tpope/vim-rails'
" Plug 'leafgarland/typescript-vim'
" Plug 'pangloss/vim-javascript'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'ap/vim-css-color'
"" Intellisense
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" Visual configuration
let g:indentLine_setColors = 0
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'hard'
set bg=dark
colorscheme gruvbox
