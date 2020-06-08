" Enable file syntax highlight:
filetype plugin indent on
syntax enable
set t_Co=256

" Choose colorscheme:
colorscheme elflord
set background=dark

" Config UI:
set laststatus=0
set lazyredraw
set linebreak
set nonumber
set norelativenumber
set showcmd
set showmatch
set wildmenu
set wrap

" Config indent:
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

" Config search:
set ignorecase
set incsearch
set nohlsearch
set smartcase

" Config backup:
set backupdir=~/.vim/backups
set undodir=~/.vim/backups
set directory=~/.vim/backups
set backup
set writebackup

" Enable mouse control:
set mouse=a

" Enable jump to last edited line when re-open file:
if has('autocmd')
	autocmd BufReadPost * if line("'\"") > 0 && line("'\"") < line("$") | exec "normal! g'\"" | endif
endif

" Change default leader key (my little finger too short for press backsplash key):
let g:mapleader=","

" Shortcuts for replace Esc key:
nnoremap <Leader><Leader> <Esc>
inoremap <Leader><Leader> <Esc>
vnoremap <Leader><Leader> <Esc>
nnoremap <Leader>1 :!
nnoremap <Leader>r :r!

" Shortcuts for quickly save and exit:
nnoremap <Leader>ww :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qc :q!<CR>

" Shortcuts for working with many files:
nnoremap <Leader>ft :tabnew<CR>
nnoremap <Leader>fe :Explore<CR>
nnoremap <Leader>fv :Vexplore<CR>

" Shortcuts for working with clipboard:
vnoremap <Leader>cy "+y<CR>
vnoremap <Leader>cx "+x<CR>
nnoremap <Leader>cp "+gp<CR>
inoremap <Leader>cp <Esc>"+gpa<CR>
vnoremap <Leader>cp "+gp<CR>

" Shortcuts for toggle input Vietnamese with keymap:
nnoremap <Leader>v0 :set keymap=<CR>
nnoremap <Leader>vq :set keymap=vietnamese-viqr_utf-8<CR>
nnoremap <Leader>vt :set keymap=vietnamese-telex_utf-8<CR>
nnoremap <Leader>vv :set keymap=vietnamese-vni_utf-8<CR>
nnoremap <Leader>vc 0v$"+y
inoremap <Leader>vc <Esc>0v$"+y

" Shortcut for UI:
nnoremap <Leader>ut :colorscheme 
nnoremap <Leader>ub :exec &background!="dark" ? "set background=dark" : "set background=light"<CR>
nnoremap <Leader>ul0 :set laststatus=0<CR>
nnoremap <Leader>ul2 :set laststatus=2<CR>
nnoremap <Leader>ud :redraw<CR>
nnoremap <Leader>un :set number!<CR>
nnoremap <Leader>ur :set relativenumber!<CR>
nnoremap <Leader>uw :set wrap!<CR>
nnoremap <Leader>uc :set cursorline!<CR>

" Shortcuts for indent:
nnoremap <Leader>ia :set autoindent!<CR>
nnoremap <Leader>ie :set expandtab!<CR>
nnoremap <Leader>ir :retab<CR>

" Shortcuts for search:
nnoremap <Leader>sh :set hlsearch!<CR>
nnoremap <Leader>ss :set smartcase!<CR>

" Shortcuts for toggle mouse controller:
nnoremap <Leader>m :exec &mouse!="" ? "set mouse=" : "set mouse=a"<CR>
