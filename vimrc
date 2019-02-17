" how to install the pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" load the pathogen plugin automatically

" how to add a plugin
" git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree
" git submodule init or git submodule update


execute pathogen#infect()
filetype plugin indent on

"dark themes
colorscheme Monokai
"
"light themes
"colorscheme mac_classic

" how to add a plugin
" " cd ~/.vim
" " git submodule add https://github.com/scrooloose/nerdtree.git bundle/nerdtree

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
"
"
"begin airline and themes
"https://github.com/vim-airline/vim-airline-themes
"
" change airline theme in vim, 
" AirlineTheme bubblegum
"
let g:airline_theme='bubblegum'

"end irline
"
"begin vim-ctrlp
"https://github.com/ctrlpvim/ctrlp.vim
"
"
"Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
"Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
"Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
"Check :help ctrlp-commands and :help ctrlp-extensions for other commands.
"
"Once CtrlP is open:
"Press <F5> to purge the cache for the current directory to get new files, remove deleted files and apply new ignore options.
"Press <c-f> and <c-b> to cycle between modes.
"Press <c-d> to switch to filename only search instead of full path.
"Press <c-r> to switch to regexp mode.
"Use <c-j>, <c-k> or the arrow keys to navigate the result list.
"Use <c-t> or <c-v>, <c-x> to open the selected entry in a new tab or in a new split.
"Use <c-n>, <c-p> to select the next/previous string in the prompt's history.
"Use <c-y> to create a new file and its parent directories.
"Use <c-z> to mark/unmark multiple files and <c-o> to open them.
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


"'c' - the directory of the current file.
"'a' - the directory of the current file, unless it is a subdirectory of the cwd
"'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
"'w' - modifier to "r": start search from the cwd instead of the current file's directory
"0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'target','build','.idea','logs','log','cd %s && git ls-files -co --exclude-standard']

"end vim-ctrlp
"
"begin fugitive
"https://github.com/tpope/vim-fugitive
"
"View any blob, tree, commit, or tag in the repository with :Gedit (and
":Gsplit, :Gvsplit, :Gtabedit, ...). Edit a file in the index and write to it
"to stage the changes. Use :Gdiff to bring up the staged version of the file
"side by side with the working tree version and use Vim's diff handling
"capabilities to stage a subset of the file's changes.
"
"Bring up an enhanced version of git status with :Gstatus. Press - to
"add/reset a file's changes, or = to expand an inline diff and operate on
"individual hunks. Use :Gcommit % to commit the current file, editing the
"commit message inside the currently running Vim.
"
":Gblame brings up an interactive vertical split with git blame output. Press
"enter on a line to edit the commit where the line changed, or o to open it in
"a split. When you're done, use :Gedit in the historic buffer to go back to
"the work tree version.
"
":Gmove does a git mv on a file and simultaneously renames the buffer.
":Gdelete does a git rm on a file and simultaneously deletes the buffer.
"
"Use :Ggrep to search the work tree (or any arbitrary commit) with git grep,
"skipping over that which is not tracked in the repository. :Glog loads all
"previous revisions of a file into the quickfix list so you can iterate over
"them and watch the file evolve!
"
":Gread is a variant of git checkout -- filename that operates on the buffer
"rather than the filename. This means you can use u to undo it and you never
"get any warnings about the file changing outside Vim. :Gwrite writes to both
"the work tree and index versions of a file, making it like git add when
"called from a work tree file and like git checkout when called from the index
"or a blob in history.
"
"end fugitive
