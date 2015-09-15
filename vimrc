colorscheme molokai

filetype plugin indent on           " Enable vim plugins
syntax on                           " Enable syntax highlighting
set nocompatible
set modelines=0

set tabstop=4                       " Set up tabs so that they insert 4 spaces instead of a tab character
set shiftwidth=4
set softtabstop=4
set expandtab

set paste                           " Use intelligent paste with whitespace

set foldmethod=indent
set foldlevel=99

set t_Co=256
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden                          "turn on buffers to manage memory
set wildmenu                        "tab gives more command possibilities
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number

nnoremap / /\v
vnoremap / /\v
set ignorecase                      "ignores case in searching
set smartcase                       "case sensitive for capital letters when searching
set gdefault
set showmatch
set hlsearch                        "Highlight search terms...
set incsearch                       "...dynamically as they are typed.
hi Search ctermbg=LightBlue
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set scrolloff=3

au FocusLost * :wa                  "save austomatically when focus is lost
highlight Pmenu ctermbg=blue        "Change menu color to something nicer looking

set list                            "Show whitespace and whitespace characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

nnoremap <up> <nop>                 "Get rid of arrow keys when in command mode; learn HJKL!
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

nnoremap j gj
nnoremap k gk
nnoremap ' `
nnoremap ` '

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>w <C-w>v<C-w>1
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


let mapleader=","                   "Window management script pulled from http://www.agillo.net/simple-vim-window-management/
set title

function! WinMove(key) 
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr()) "we havent moved
        if (match(a:key,'[jk]')) "were we going up/down
            wincmd v
        else 
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction
                                                 
map <leader>h              :call WinMove('h')<cr>
map <leader>k              :call WinMove('k')<cr>
map <leader>l              :call WinMove('l')<cr>
map <leader>j              :call WinMove('j')<cr>
map <leader>wc :wincmd q<cr>
map <leader>wr <C-W>r




" Screen Title script pulled from http://www.anattatechnologies.com/q/2014/04/vim-and-screen-automagic-titles/
if &term == "screen"
    let &titlestring = "vim (" . expand("%:t") . ")"
    set t_ts=k
    set t_fs=\
    set title
endif
autocmd TabEnter,WinEnter,BufReadPost,FileReadPost,BufNewFile * let &titlestring = 'vim(' . expand("%:t") . ')'

