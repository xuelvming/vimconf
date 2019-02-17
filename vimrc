" how to install the pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" load the pathogen plugin automatically

" how to add a plugin
" git submodule add https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
" git submodule init or git submodule update


execute pathogen#infect()
filetype plugin indent on


colorscheme default

" how to add a plugin
" " cd ~/.vim
" " git submodule add https://github.com/scrooloose/nerdtree.git  ~/.vim/bundle/nerdtree

" Add a colored column at 100 to avoid going to far to the right:
set colorcolumn=100

" add line numbering
set number

" highlight current line
set cursorline

" enable backspace everything
set backspace=indent,eol,start " backspace over everything in insert mode

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
" Ensures we see when we are in insert mode
set showmode
" Sets a tab to be four spaces
set tabstop=2
set shiftwidth=2
" Converts tabs to spaces, which is useful when the file moves to other systems
set expandtab
set smartindent
" allows us to return to the last indent level rather than the start of a new line on each line break
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
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'

" Do not display some useless files in the tree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp','\.git','`\.idea','\.vscode','\.project']

" quit the nerdtree if it's the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" end the conf of nerdtree

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




" begin the tagbar
nmap <F8> :TagbarToggle<CR>
nmap <leader>t :TagbarToggle<CR>
" Always open the tree when booting Vim, but don’t focus it:
" autocmd VimEnter * TagbarToggle 
" autocmd VimEnter * wincmd h
" end the tagbar

" begin vim-jsx
" By default, JSX syntax highlighting and indenting will be enabled 
" only for files with the .jsx extension. 
" If you would like JSX in .js files, add
let g:jsx_ext_required = 0

" end vim-jsx
"
"
" begin vim-markdown

"  Disable Folding
let g:vim_markdown_folding_disabled = 1

" Disable the default key bindings ,not used them very offen
" prevent conficts
" Disable Default Key Mappings
let g:vim_markdown_no_default_key_mappings = 1

" Enable TOC window auto-fit
let g:vim_markdown_toc_autofit = 1

" end vim-markdown
"
"
"
"begin vim-vue
"very time a Vue file is opened, :syntax sync fromstart
autocmd FileType vue syntax sync fromstart
"end vim-vue
