:set number
syntax on

set guicursor=
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set scrolloff=8
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
set nohlsearch
set signcolumn=yes
set termguicolors
set spell spelllang=en_us

set colorcolumn=80
set scrolloff=8
" set no show mode
set signcolumn=yes
set isfname+=@-@
" set ls=0

" Give more space for displaying messages.
set cmdheight=1

" Having longer update time (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80

"colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
