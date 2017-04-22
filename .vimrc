" Auto reload .vimrc on write
autocmd! bufwritepost .vimrc source %

" Start NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/Users/matt/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/matt/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
source ~/.config/nvim/bundle.vim

" Required:
call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
" End NeoBundle Scripts-------------------------

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
colorscheme base16-gooey
set background=dark

" Editor setup
set clipboard=unnamed
set number
set relativenumber
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
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