source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/themes/airline.vim

call plug#begin('~/.vim/pluged')
"vim in browser
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'ThePrimeagen/git-worktree.nvim'

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'nvim-treesitter/playground'

Plug 'ThePrimeagen/harpoon'
Plug 'mhinz/vim-rfc'

Plug 'tpope/vim-fugitive'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'

"fuzy finder"
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"Plug 'prettier/vim-prettier', {
            "\ 'do': 'npm install',
            "\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'python'] }
Plug 'mhinz/vim-rfc'
Plug 'mbbill/undotree'
call plug#end()

lua require("yoni")

"lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    colorscheme gruvbox

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    highlight LineNr guifg=#5acd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyPencils()

let mapleader = " "

let g:firenvim_config = {
            \ 'globalSettings': {
            \ 'alt': 'all',
            \  },
            \ 'localSettings': {
            \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
            \ },
            \ }
            \ }

let fc = g:firenvim_config['localSettings']
let fc['https?://twitter.com'] = {'takeover': 'never', 'priority': 1}
let fc['https?://www.twitch.tv'] = {'takeover': 'never', 'priority': 1}
let fc['https?://www.instagram.com'] = {'takeover': 'never', 'priority': 1}
let fc['https?://www.notion.so'] = {'takeover': 'never', 'priority': 1}
let fc['https?://roamresearch.com'] = {'takeover': 'never', 'priority': 1}
let fc['https?://meet.google.com'] = {'takeover': 'never', 'priority': 1}

let g:NERDTreeIgnore = ['^node_modules$']

let g:airline_powerline_fonts = 1

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

vmap <C-a> <plug>NERDCommenterToggle
nmap <C-a> <plug>NERDCommenterToggle


nnoremap <leader>fl :NERDTree<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :NERDTreeToggle<CR>
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

augroup YONI
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
   autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END
