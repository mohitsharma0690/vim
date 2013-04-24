set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()
 
" set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
filetype plugin indent on
 
syntax on
set number
set hlsearch
set showmatch
set autoindent
set history=1000
" set cursorline
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Nerdtree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

 let NERDTreeShowBookmarks=1
 let NERDTreeChDirMode=0
 let NERDTreeQuitOnOpen=1
 let NERDTreeMouseMode=2
 let NERDTreeShowHidden=1
 let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
 let NERDTreeKeepTreeInNewTab=1
 let g:nerdtree_tabs_open_on_gui_startup=0

" Auto-close nerd-tree if it is the only window open
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" colorscheme Tomorrow
 
" Tagbar
let g:tagbar_usearrows = 1
nnoremap <C-m> :TagbarToggle<CR>

" set the cursor to a vertical line in insert mode and a solid block
" " in command mode

