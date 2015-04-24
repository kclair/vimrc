set nocompatible              " be iMproved, required
filetype off                  " required
syntax on
colorscheme morning

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" https://github.com/gmarik/vundle
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"
" EXAMPLES
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" https://github.com/Lokaltog/powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" https://github.com/tpope/vim-fugitive
Bundle 'tpope/vim-fugitive'

" https://github.com/scrooloose/nerdtree
Bundle 'scrooloose/nerdtree'

" https://github.com/klen/python-mode
Bundle 'klen/python-mode'

Plugin 'vim-scripts/CycleColor'

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
" Put your non-Plugin stuff after this line

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" Powerline setup
" https://github.com/Lokaltog/powerline-fonts
set guifont=Meslo\ for\ Powerline
set laststatus=2

" F2 to toggle file browser
map <F2> :NERDTreeToggle<CR>

let g:pymode_options_max_line_length = 120 
let g:pymode_virtualenv_path = 'venv'
" disable auto-checking.
" use :PymodeLint to check code in current buffer
let g:pymode_lint_on_write = 0 
let g:pymode_lint_checkers = ['pyflakes', 'pylint']
