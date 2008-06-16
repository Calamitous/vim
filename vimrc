filetype plugin indent on  " Automatically detect file types.
set nocompatible  " We don't want vi compatibility.

" Add recently accessed projects menu (project plugin)
set viminfo^=!

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

syntax enable

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

" Color scheme
set background=dark
colorscheme ir_black_mod " This is a much better color scheme, Scotty :)
"colorscheme twilight

" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 4 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set nocp hlsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set lines=50
set columns=120
set backspace=2     

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

"set showtabline=2
set tabpagemax=15
" set guifont=DejaVu\ Sans\ Mono\ 10
set cursorline

runtime! macros/matchit.vim

augroup myfiletypes
  autocmd!
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

nnoremap <silent> <C-n> :tabnext<CR>
nnoremap <silent> <C-p> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>
noremap <C-j> :bprev<CR>
noremap <C-k> :bnext<CR>

let g:buftabs_only_basename=1
set laststatus=2
let g:buftabs_in_statusline=1
