" To reload .vimrc in the currently running Vim
" :source $MYVIMRC


"----------------------------------------
" Pathogen plugin manager
"----------------------------------------

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"----------------------------------------
" General options
"----------------------------------------

set nu                      " Turn on line numbering. Turn it off with "set nonu" 
syntax on                   " Set syntax on

filetype indent on          " Indent automatically depending on filetype
set autoindent
set tabstop=2
set smartindent
set softtabstop=2
set shiftwidth=4
set expandtab               " Tabs to spaces
set shiftround              " Round off indents to be multiple of tabs
set lbr                     " Wrap text instead of being on one line
set scrolloff=2             " See a bit of context around the cursor
set autoread
set ruler
set backupdir=~/.vim/backup " Directories for swap files
set directory=~/.vim/backup

set autochdir               " Change directory to the one the current file being edited is in using 
                            " Might stop some plugins working

filetype plugin on          " Omnicompletion
set ofu=syntaxcomplete#Complete

set wildmenu                " Show menu of completions when opening files with :e

"----------------------------------------
" Searching
"----------------------------------------

set ic                      " Case insensitive search
set smartcase               " Ignore the "ignorecase" when the search term contains a capital letter

"set hls                     " Highlight search
set incsearch               " Incremental search

" ----------------------------------------
" Split navigation
" ----------------------------------------

map <C-J> <C-W>j<C-W>_      " Move between splits using C-J and C-K and automatically
map <C-K> <C-W>k<C-W>_      " maximize the split.
set wmh=0                   " Set max window height to 1 so that more windows can be stacked
map <F9>       :vsplit<CR> 
map <F10>      :split<CR> 

" ----------------------------------------
" Tab navigation
" ----------------------------------------

nnoremap <silent> <C-Right> :tabnext<CR>     " Next tab
nnoremap <silent> <C-Left>  :tabprevious<CR> " Previous tab
nnoremap <silent> <C-t>     :tabnew<CR>      " New tab

" ----------------------------------------
" Color Scheme
" ----------------------------------------

" colorscheme navajo-night
set background=dark         " Solarized option
colorscheme dawn " Solarized colorscheme

" ----------------------------------------
" Plugins
" ----------------------------------------

nmap <silent> <F2> :NERDTreeToggle<CR> " NERDTree on and off
nnoremap <silent> <F3> :YRShow<CR>     " Show Yankring's contents

" ----------------------------------------
" Perforce mappings
" ----------------------------------------

nnoremap @p4a :!p4 add %:e
nnoremap @p4e :!p4 edit %:e

" ----------------------------------------
"  Special file types
" ----------------------------------------

autocmd FileType make setlocal noexpandtab  " Don't change tabs to spaces in Makefiles
au BufNewFile,BufRead *.md set filetype=markdown
