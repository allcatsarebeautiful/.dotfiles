set nocompatible              " be iMproved, required
filetype off                  " required

"------------------->>> VUNDLE <<< ---------------"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" set the runtime path to include Vundle and initialize
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()

        " Let Vundle manage Vundle
        Bundle 'gmarik/vundle'

        " My Bundles
        Bundle 'tpope/vim-sensible'
        Bundle 'tpope/vim-surround'
        Bundle 'tpope/vim-fugitive'

        "Bundle 'Lokaltog/vim-powerline'
        Bundle 'bling/vim-airline'
        Bundle 'scrooloose/syntastic'
        Bundle 'scrooloose/nerdtree'
        Bundle 'kien/ctrlp.vim'
        Bundle 'tmux-plugins/vim-tmux'
        Bundle 'tmux-plugins/vim-tmux-focus-events'
        Bundle 'christoomey/vim-tmux-navigator'
		Bundle 'benmills/vimux'
		Bundle 'easymotion/vim-easymotion'
"		Bundle 'Valloric/YouCompleteMe'
		Bundle 'marijnh/tern_for_vim'
		Bundle 'jelera/vim-javascript-syntax'
		Bundle 'vim-scripts/JavaScript-Indent'
		Bundle 'bitc/vim-bad-whitespace'

        "Themes
        Bundle 'chriskempson/base16-vim'
        "Bundle 'nanotech/jellybeans.vim'
		Bundle 'edkolev/tmuxline.vim'


        " All of your Plugins must be added before the following line
        call vundle#end()            " required
        filetype plugin indent on    " required
"------------------->>> NON-VUNDLE BELOW HERE <<< ---------------"

let mapleader=","                   " , is the control/meta/leader character
"color jellybeans
let base16colorspace=256
colorscheme base16-default
set background=dark

syntax on                           " Enable syntax highlighting
set modelines=0
set title                           " Set Window title
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

"------------------->>> AIRLINE <<< ---------------"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"------------------->>> CTRL+P <<< ---------------"
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}

" Use the nearest .git directory as the cwd
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

"------------------->>> VIMUX <<< ---------------"
"    From www.braintreepayments.com/blog/vimux-simple-vim-and-tmux-integration/

 " Prompt for a command to run
 map <Leader>vp :VimuxPromptCommand<CR>
 " Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>
 " Inspect runner pane
 map <Leader>vi :VimuxInspectRunner<CR>
 " Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>
 " Interrupt any command running in the runner pane
 map <Leader>vx :VimuxInterruptRunner<CR>
 " Zoom the runner pane (use <bind-key> z to restore runner pane)
 map <Leader>vz :call VimuxZoomRunner()<CR>


"------------------->>> WINDOW MANAGEMENT <<< ---------------"
"		From http://www.agillo.net/simple-vim-window-management/
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

