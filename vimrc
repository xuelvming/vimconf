" how to install the pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" load the pathogen plugin automatically

" how to add a plugin
" git submodule add https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
" git submodule init or git submodule update


execute pathogen#infect()


" colorscheme Tomorrow-Night-Bright
colorscheme Tomorrow-Night

" Add a colored column at 100 to avoid going to far to the right:
set colorcolumn=100

" add line numbering
set number

" Leader Key, default is backslash, set to space 
let mapleader=" "


" Reload Vim Config Without Having To Restart Editor
map <leader>s :source ~/.vimrc<CR>

" some default conf from the site
set hidden
set history=100

filetype indent on
filetype on
syntax on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" get Vim to highlight found word
set hlsearch

" Ability to cancel a search with Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>


" Show Matching Parenthesis
set showmatch

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" begin the conf for the nerdtree
" Display hidden files:
let NERDTreeShowHidden=1

" Toggle display of the tree with <Leader> + n:
nmap <leader>n :NERDTreeToggle<CR>

" Hit the right arrow to open a node:
let NERDTreeMapActivateNode='<right>'

" Locate the focused file in the tree with <Leader> + j:
nmap <leader>j :NERDTreeFind<CR>

" Always open the tree when booting Vim, but don’t focus it:
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Do not display some useless files in the tree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp','\.git']

" end the conf of nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
