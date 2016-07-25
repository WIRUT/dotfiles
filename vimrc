set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
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
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
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
" Put your non-Plugin stuff after this line NERDTree allows filestone plugin to show in split screen
Plugin 'scrooloose/nerdtree'

" Enables surrounding text
Plugin 'tpope/vim-surround'
" Example: Select text (for inner word, use 'v-i-w', <S>, <type of surrounding tag>

" Enables you to comment out code easily
Plugin 'tomtom/tcomment_vim'

" Enables you to find fuzzy path file
Plugin 'ctrlpvim/ctrlp.vim'

" Enables the nice colouring toolbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Enables autocomplete
Plugin 'Valloric/YouCompleteMe'

" Enables tern-project for JavaScript to assist YouCompleteMe
Plugin 'marijnh/tern_for_vim'

" ###################################################################
" #                        Key Mappings/Remapping                   #
" ###################################################################

" This enables for tcomment "\c"
map <leader>c <c-_><c-_>
" This enables switching between screen with CTRL-hjkl
nnoremap <C-J> <C-W>j<C-J>_
nnoremap <C-K> <C-W>k<C-K>_
noremap <C-L> <C-W>l<C-L>_
nnoremap <C-H> <C-W>h<C-H>_
set ruler
syntax on
set tabstop=4    " The width of a TAB is set to 4.
set laststatus=2 " Status bar stays toggled
set pastetoggle=<F1>
set nu
set shiftwidth=4 " Indents will have a width of 4
:colorscheme molokai
if $COLORTERM == 'gnome-terminal'
         set t_Co=256
endif
set backspace=indent,eol,start " Allows to delete over line breakss
let &colorcolumn="80,".join(range(120,999),",") " Visual marker after col 80
