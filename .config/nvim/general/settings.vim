set nocompatible

let mapleader = " "

filetype plugin indent on
set noerrorbells
set number
set relativenumber
set smartindent
set nowrap
set smartcase
set noswapfile
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set colorcolumn=80
set laststatus=2
set bg=dark
set hidden
set updatetime=300
set shortmess+=c
set signcolumn=yes
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set modifiable
syntax on
colorscheme gruvbox

" Indent on save
augroup autoindent
    au!
    autocmd BufWritePre * :normal migg=G`i
augroup End

autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable

" COC completions
let g:coc_global_extension = [
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-eslint',
            \ 'coc-clangd',
            \ 'coc-pip',
            \ 'coc-python',
            \ 'coc-rls',
            \ 'coc-node',
            \ 'coc-prettier',
            \ 'coc-tsserver',
            \ 'coc-eslint'
            \ ]

" Airline config
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" Remove arrows from airline/tabline
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extesions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#left_alt_sep = '|'

let g:rainbow_active = 1

" CPP Extra highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:coc_disable_startup_warning = 1

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:crtlp_use_caching = 0

" Quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_max_chars = 150

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

" FZF
let g:fzf_action = {
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit'
            \ }
let g:fzf_preview_window = 'right:60%'

" Vimwiki
let g:vimwiki_table_mapping = 0

" Startfy
let g:startify_files_number           = 10
let g:startify_session_persistence    = 1
let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Files']            },
            \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
            \ ]
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'w': '~/Workspace' },
            \ ]
let g:startify_custom_header = [
            \ '   _  __     _     ',
            \ '  / |/ /  __(_)_ _ ',
            \ ' /    / |/ / /  ` \',
            \ '/_/|_/|___/_/_/_/_/',
            \]

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:> foldmethod=indent nofoldenable

