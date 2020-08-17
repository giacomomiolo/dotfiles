syntax on

set belloff=all
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set relativenumber "Relative number line

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

if (has("termguicolors"))
  set termguicolors
endif

set colorcolumn= "No 80 chars color column
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox' "Theme
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline' "Fancy status line
Plug 'wincent/terminus' "Cursor shape change in insert (vertical bar) and replace (underline) modes
Plug 'kiteco/vim-plugin' "Autocompletion with Kite
Plug 'scrooloose/nerdtree' "Tree explorer

call plug#end()

"Customizing gruvbox
let g:gruvbox_contrast_dark = 'hard' "Higher contrast
colorscheme gruvbox
set background=dark

"Customizing kite
let g:kite_tab_complete=1


"Coloring the current line number, without the current line
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

