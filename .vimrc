set number
set nocompatible              " be iMproved, required                                                                                                                                                                                         
set cursorline  " highlight cursorline underneath the cursor horizontally   
set cursorcolumn    " highlight cursorline underneath the cursor vertically
set shiftwidth=4    " set shift width to 4 spaces
set tabstop=4   " set tab width to 4 spaces
set incsearch   " while searching through a file incrementally highlight matching characters as you type
set ignorecase  " ignore capital letters during search
set smartcase   " override the ignorecase option if searching for capital letters
set showcmd " show partial command you type in the last line of the screen
set showmode    " show the mode you are on the last line
set showmatch   " show matching words during a search
set hlsearch    " use highlighting when doing a search
set history=1000    " set commands to save to 1000
 
" ----------    wildmenu feature    ----------
set wildmenu    " enable auto completion menu after pressing the TAB
set wildmode=list:longest   " make wildmenu behave similar to bash
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx    " wildmenu will ignore files with these extensions
 
filetype on                  " required enable file type detection
filetype plugin on  " enable plugins and load plugins for the detected file type
filetype indent on  " load an indent file for the detected file type
 
syntax on   " turn syntax highlighting on
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
 
" ----------     mapped shortcut keys   ----------
nnoremap <C-t> :NERDTreeToggle<CR>
 
 
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
 
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
 
 
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

Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
 
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
 
Plugin 'preservim/nerdtree'
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


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
