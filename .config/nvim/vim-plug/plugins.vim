" Install vimplug if it is not installed already
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

" Automatically install missing plugins on startup
if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
    autocmd VimEnter * PlugInstall | q
endif
" Presents changes to files looking at the .git folder
Plug 'airblade/vim-gitgutter'
" Colorized parentheses/curly braces
Plug 'luochen1990/rainbow'
" Add better naviagation
Plug 'christoomey/vim-tmux-navigator'
" Tags around a file
Plug 'majutsushi/tagbar'
" Show memento of a file
Plug 'mbbill/undotree'
" Gruvbox theme
Plug 'gruvbox-community/gruvbox'
" Nerdtree pretty icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Dev Icons
Plug 'ryanoasis/vim-devicons'
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Extra CPP Highlight
Plug 'octol/vim-cpp-enhanced-highlight'
" File tree
Plug 'preservim/nerdtree'
" Comment chuncks of code
Plug 'tpope/vim-commentary'
" Change surround characters
Plug 'tpope/vim-surround'
" Add airline bar
Plug 'vim-airline/vim-airline'
" Add realtime file checker
Plug 'w0rp/ale'
" Quick movement
Plug 'unblevable/quick-scope'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Set root folder as current dir
Plug 'airblade/vim-rooter'
" Start page
Plug 'mhinz/vim-startify'
" Pair autocompletion
Plug 'jiangmiao/auto-pairs'
" Clang format
Plug 'rhysd/vim-clang-format'
" Editor config
Plug 'editorconfig/editorconfig-vim'
" JS Syntax highlight
Plug 'pangloss/vim-javascript'

" Finish vim plug execution
call plug#end()

