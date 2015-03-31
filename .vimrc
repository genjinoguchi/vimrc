set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format

" Vundle - Vim Package Manager
Plugin 'gmarik/vundle'

" File Finders
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

" Motion
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'

" Shortcuts
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'msanders/snipmate.vim'
Plugin 'rstacruz/sparkup'
Plugin 'gregsexton/MatchTag'

" Colors
Plugin 'justinmk/vim-syntax-extra'
Plugin 'altercation/vim-colors-solarized'
" https://github.com/flazz/vim-colorschemes/tree/master/colors
Plugin 'flazz/vim-colorschemes'
Plugin 'duythinht/inori'
Plugin 'wellsjo/wells-colorscheme.vim'

" HTML/CSS

" Javascript/Node
Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'
Plugin 'caolan/nodeunit'


" We could also add repositories with a ".git" extension

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site

" Now we can turn our filetype functionality back on
filetype plugin indent on


"COPYING
set clipboard=unnamed

"STYLING
set shiftwidth=4 tabstop=4
set number
set autoindent
set cindent
syntax enable
colorscheme wells-colors
"set background=light
"hi Normal ctermbg=black

"MOUSEENABLED
set ttyfast
set mouse=a
set ttymouse=xterm2

"TABBING
"set cinkeys=0{,0},0),0#,!<Tab>,;,:,o,O,e
"set indentkeys=!<Tab>,o,O
"map <Tab> i<Tab><Esc>^
"filetype indent on
"set cinoptions=:0,(0,u0,W1s
"set cinoptions={1s,>2s,e-1s,^-1s,n-1s,:1s,p5,i4,(0,u0,W1s shiftwidth=4


"REMAPPING
let mapleader=";"
map <leader>ev :tabnew $MYVIMRC
map <leader>sv :source $MYVIMRC

inoremap jj <ESC>
inoremap jk <ESC>
nmap ' :

"NERDTREE
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

