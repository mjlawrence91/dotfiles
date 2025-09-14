" Auto reload init.vim on write
autocmd! bufwritepost .config/nvim/init.vim source %

"dein Scripts-----------------------------
" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/Users/mjl/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/Users/mjl/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
source ~/.config/nvim/bundle.vim

" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax enable

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

" Caching/swap setup
set undofile
set undodir=~/.config/nvim/temp/undodir
set noswapfile
set nobackup
set nowritebackup
set noshelltemp
set viminfo=

" Show whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Theming
filetype plugin indent on
syntax enable
set background=dark
colorscheme base16-gooey

" Editor setup
set clipboard=unnamed
set number
set relativenumber
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set shiftround
set tw=79
set completeopt-=preview
set cursorline
set cursorcolumn
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Search preferences
set hlsearch
set incsearch
set ignorecase
set smartcase

" Clear search highlight
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Easier move between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Better indentation
vnoremap < <gv " Indent left
vnoremap > >gv " Indent right

" Airline config
  set laststatus=2
  set noshowmode
  let g:airline#extensions#tabline#fnamemod = ':t'
  let g:airline_powerline_fonts = 1
  " let g:airline_theme='base16'
  " let g:airline_theme='base16_nord'
  let g:airline_left_sep=''
  let g:airline_right_sep=''
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_section_z = '%3p%%'
  let g:airline_section_y = ''
  let g:airline_section_b = ''
  let g:airline_mode_map = {
        \ '__' : '-',
        \ 'n'  : 'N',
        \ 'i'  : 'I',
        \ 'R'  : 'R',
        \ 'c'  : 'C',
        \ 'v'  : 'V',
        \ 'V'  : 'V',
        \ 's'  : 'S',
        \ 'S'  : 'S',
        \ }
