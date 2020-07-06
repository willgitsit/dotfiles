set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
" Plugin 'benmills/vimux'
" Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'nfvs/vim-perforce'
Plugin 'ervandew/supertab'
Plugin 'kien/ctrlp.vim.git'
Plugin 'Yggdroot/indentLine'
Plugin 'godlygeek/tabular'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-surround'
" Plugin 'ayu-theme/ayu-vim'
Plugin 'rafi/awesome-vim-colorschemes'
" Plugin 'vim-airline/vim-airline-themes'
" Plugin 'drmikehenry/vim-fontsize'
" Plugin 'Townk/vim-autoclose'
" Plugin 'severin-lemaignan/vim-minimap'
" Plugin 'Valloric/YouCompleteMe'
call vundle#end()

" set encoding=UTF-8
" default tab settings (can be overwritten by filetype)
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=120
set expandtab
set smarttab
" use context for supertab
let g:SuperTabDefaultCompletionType = "context"

" allow backspace to cross lines
set backspace=indent,eol,start

" search options
set nowrapscan
set ignorecase
set smartcase
set hlsearch      " highlight previous search
set incsearch     " search as you type

" colorscheme jellybeans
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

" turn on syntax highlighting and file type detection
filetype plugin indent on
syntax enable
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq   = 0

" vimdiff ignore white space
if &diff
  " diff mode
  set diffopt+=iwhite
endif

let g:perforce_open_on_change = 1

"""""""""""""""""""" appearance settings """"""""""""""""""""""""
"
" set status bar to always on
set laststatus=2

set background=dark
set t_Co=256
highlight LineNr ctermfg=240


" show line numbers
set number

" if has('gui_running')
" endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

"" vimux shortcuts
"" Prompt for a command to run
"map <Leader>vp :VimuxPromptCommand<CR>
"" Run last command executed by VimuxRunCommand
"map <Leader>vl :VimuxRunLastCommand<CR>
"map <Leader>vr :VimuxRunLastCommand<CR>
"" Inspect runner pane
"map <Leader>vi :VimuxInspectRunner<CR>
"" Close vim tmux runner opened by VimuxRunCommand
"map <Leader>vq :VimuxCloseRunner<CR>
"" Interrupt any command running in the runner pane
"map <Leader>vx :VimuxInterruptRunner<CR>
"" Zoom the runner pane (use <bind-key> z to restore runner pane)
"map <Leader>vz :call VimuxZoomRunner()<CR>
