source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.vim/pluged')
"vim in browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/playground'

"Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

"Git
Plug 'tpope/vim-fugitive'
Plug 'ThePrimeagen/git-worktree.nvim'

"Lsp pulgins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'

"Themes
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'

"fuzy finder"
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'mhinz/vim-rfc'
Plug 'mbbill/undotree'
Plug 'ThePrimeagen/harpoon'
call plug#end()

lua require("yoni")

"lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

"For when reading docs turn of numbers
fun! ReadingDocs()
    :set norelativenumber
    :set nonumber
endfun

nnoremap <leader>rrd :call ReadingDocs()<CR>

nnoremap <leader>vwm :call ColorMyPencils()<CR>

vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

nnoremap <leader>fl :Ex<CR>

nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>pv :Sex!<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

nnoremap <C-i> :cnext<CR>zz
nnoremap <C-l> :cprev<CR>zz
nnoremap <leader>p :copen<CR>

noremap <Leader>t+ :top resize +5<CR>
nnoremap <Leader>t- :top resize -5<CR>

"Coppy selcetd line to clipboard on mac os
vmap <leader>vc :w !pbcopy<CR>

"Coppy file on mac os
nnoremap <leader>pc :%w !pbcopy<CR>

nnoremap <Leader>rp :resize 100<CR>

"nmap <tab>:tabnext<CR>
"vmap <tab>:tabnext<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Greatest remap ever
vnoremap <leader>p "_dP

"Next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

vnoremap <leader>d "_d
nnoremap <leader>d "_d

nnoremap Y y$
nnoremap n nzzzv
nnoremap N nzzzv
nnoremap J mzJ`z
nnoremap <C-j> :cnext<CR>zzzv

"Stop annoying visual mode
nnoremap <silent>Q <Nop>

" Use control-c instead of escape
nnoremap <C-c> <Esc>

"inoremap , , <c-g>u
"inoremap . . <c-g>u
"inoremap ! ! <c-g>u
"inoremap ? ? <c-g>u

" Better tabbing
vnoremap < <gv
vnoremap > >gv

noremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

augroup YONI
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
   autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
